package gov.hhs.onc.crigtt.validate.vocab.impl;

import gov.hhs.onc.crigtt.validate.SchematronVars;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.StaticVocabService;
import gov.hhs.onc.crigtt.validate.vocab.ValueSet;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;
import gov.hhs.onc.crigtt.validate.vocab.VocabXmlNames;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import net.sf.saxon.dom.ElementOverNodeInfo;
import net.sf.saxon.dom.NodeOverNodeInfo;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;
import org.apache.commons.collections4.keyvalue.MultiKey;
import org.apache.commons.collections4.map.MultiValueMap;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StaticVocabServiceImpl extends AbstractVocabService implements StaticVocabService {
    private final static String SYS_NODE_XPATH_EXPR = CrigttXpathUtils.EXPR_DELIM + VocabXmlNames.SYSTEMS_ELEM_NAME + CrigttXpathUtils.EXPR_DELIM
        + VocabXmlNames.SYSTEM_ELEM_NAME;

    private final static String TEST_EXPR_PATTERN_FORMAT = "^([^$]*)@\\w+\\s*=\\s*document\\('\\Q%1$s\\E'\\)/([^:]+:)" + VocabXmlNames.SYSTEMS_ELEM_NAME
        + "/\\2" + VocabXmlNames.SYSTEM_ELEM_NAME + "\\[@" + VocabXmlNames.VALUE_SET_OID_ATTR_NAME + "\\s*=\\s*'([^']+)'\\]/\\2" + VocabXmlNames.CODE_NODE_NAME
        + "/@\\w+([^$]*)$";

    private final static String DEFAULT_TEST_EXPR_REPLACE_FORMAT = "%1$strue()%2$s";
    private final static String TEST_EXPR_REPLACE_FORMAT = "%1$s" + StaticVocabFunction.NAME.toString() + CrigttXpathUtils.CALL_PREFIX
        + CrigttXpathUtils.VAR_PREFIX + SchematronVars.PATTERN_ID_NAME + ", '%2$s', " + CrigttXpathUtils.VAR_PREFIX + SchematronVars.CONTEXT_LINE_NUM_NAME
        + ", " + CrigttXpathUtils.VAR_PREFIX + SchematronVars.CONTEXT_COLUMN_NUM_NAME + ", %3$s" + CrigttXpathUtils.CALL_SUFFIX + "%4$s";

    private final static Logger LOGGER = LoggerFactory.getLogger(StaticVocabServiceImpl.class);

    private XdmDocument doc;
    private Pattern testExprPattern;
    private Map<String, ValueSet> valueSets;
    private MultiValueMap<MultiKey<String>, Code> codes;
    private MultiValueMap<MultiKey<String>, Code> codeSystemCodes;
    private MultiValueMap<MultiKey<String>, Code> valueSetCodes;
    private MultiValueMap<MultiKey<String>, Code> namedCodes;
    private MultiValueMap<MultiKey<String>, Code> namedCodeSystemCodes;
    private MultiValueMap<MultiKey<String>, Code> namedValueSetCodes;

    @Override
    public List<Code> findCodesByCodeSystem(boolean forValueSet, String codeSystemId, String codeId) {
        return findCodes(forValueSet, this.codeSystemCodes, new MultiKey<>(codeSystemId, codeId));
    }

    @Override
    public List<Code> findCodesByValueSet(String valueSetId, String codeId) {
        return findCodes(true, this.valueSetCodes, new MultiKey<>(valueSetId, codeId));
    }

    @Override
    public List<Code> findCodesByValueSet(String valueSetId, String codeSystemId, String codeId) {
        return findCodes(true, this.codes, new MultiKey<>(valueSetId, codeSystemId, codeId));
    }

    @Override
    public List<Code> findNamedCodesByCodeSystem(boolean forValueSet, String codeSystemId, String codeName) {
        return findCodes(forValueSet, this.namedCodeSystemCodes, new MultiKey<>(codeSystemId, codeName));
    }

    @Override
    public List<Code> findNamedCodesByValueSet(String valueSetId, String codeName) {
        return findCodes(true, this.namedValueSetCodes, new MultiKey<>(valueSetId, codeName));
    }

    @Override
    public List<Code> findNamedCodesByValueSet(String valueSetId, String codeSystemId, String codeName) {
        return findCodes(true, this.namedCodes, new MultiKey<>(valueSetId, codeSystemId, codeName));
    }

    @Override
    public String processTestExpression(String assertionId, String testExpr) {
        Matcher testExprMatcher = this.testExprPattern.matcher(testExpr);

        if (!testExprMatcher.matches()) {
            return testExpr;
        }

        this.initialTestExprs.put(assertionId, testExpr);

        String runtimeTestExpr;

        if (this.assertions.containsKey(assertionId)) {
            VocabAssertion assertion = this.assertions.get(assertionId);

            runtimeTestExpr =
                String.format(TEST_EXPR_REPLACE_FORMAT, testExprMatcher.group(1), assertionId, assertion.getVocabContextExpression(), testExprMatcher.group(4));

            List<VocabSet> expectedVocabSets = assertion.getExpectedVocabSets();

            if (expectedVocabSets.isEmpty()) {
                expectedVocabSets.add(new VocabSetImpl(null, ((ValueSetImpl) this.valueSets.get(testExprMatcher.group(3))), null));
            }

            LOGGER.trace(String.format("Processed static vocabulary validation assertion (id=%s, initialTestExpr=%s, runtimeTestExpr=%s).", assertionId,
                testExpr, runtimeTestExpr));
        } else {
            runtimeTestExpr = String.format(DEFAULT_TEST_EXPR_REPLACE_FORMAT, testExprMatcher.group(1), testExprMatcher.group(4));

            LOGGER.warn(String.format("Static vocabulary validation assertion (id=%s, testExpr=%s) is not configured.", assertionId, testExpr));
        }

        return runtimeTestExpr;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.testExprPattern = Pattern.compile(String.format(TEST_EXPR_PATTERN_FORMAT, this.doc.getUri().toString()));

        IndependentContext xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

        Stream.of(((ElementOverNodeInfo) this.doc.getDocument().getDocumentElement()).getUnderlyingNodeInfo().getDeclaredNamespaces(null)).forEach(
            ns -> xpathContext.declareNamespace(ns.getPrefix(), ns.getURI()));

        xpathContext.declareNamespace(StringUtils.EMPTY, CrigttXmlNs.VALIDATE_VOCAB_STATIC_DOC_URI);

        this.valueSets = new LinkedHashMap<>();
        this.codes = MultiValueMap.multiValueMap(new LinkedHashMap<>());
        this.namedCodes = MultiValueMap.multiValueMap(new LinkedHashMap<>());
        this.codeSystemCodes = MultiValueMap.multiValueMap(new LinkedHashMap<>());
        this.namedCodeSystemCodes = MultiValueMap.multiValueMap(new LinkedHashMap<>());
        this.valueSetCodes = MultiValueMap.multiValueMap(new LinkedHashMap<>());
        this.namedValueSetCodes = MultiValueMap.multiValueMap(new LinkedHashMap<>());

        ElementOverNodeInfo systemElem;
        String valueSetId, codeSystemId, codeId, codeName;
        Code code;

        for (XdmNode systemNode : this.xpathCompiler.evaluateNodes(SYS_NODE_XPATH_EXPR, xpathContext, this.doc)) {
            this.valueSets.put(
                (valueSetId =
                    (systemElem = ((ElementOverNodeInfo) NodeOverNodeInfo.wrap(systemNode.getUnderlyingNode())))
                        .getAttribute(VocabXmlNames.VALUE_SET_OID_ATTR_NAME)),
                new ValueSetImpl(valueSetId, systemElem.getAttribute(VocabXmlNames.VALUE_SET_NAME_ATTR_NAME), systemElem
                    .getAttribute(VocabXmlNames.VALUE_SET_VERSION_ATTR_NAME)));

            for (ElementOverNodeInfo codeElem : Stream.of(this.xpathCompiler.evaluateNodes(VocabXmlNames.CODE_NODE_NAME, xpathContext, systemNode))
                .map(codeNode -> ((ElementOverNodeInfo) NodeOverNodeInfo.wrap(codeNode.getUnderlyingNode()))).toArray(ElementOverNodeInfo[]::new)) {
                codeSystemId = codeElem.getAttribute(VocabXmlNames.CODE_SYSTEM_ATTR_NAME);

                this.codes.put(new MultiKey<>(valueSetId, codeSystemId, (codeId = codeElem.getAttribute(VocabXmlNames.VALUE_ATTR_NAME))), (code =
                    new CodeImpl(codeId, (codeName = codeElem.getAttribute(VocabXmlNames.DISPLAY_NAME_ATTR_NAME)))));
                this.namedCodes.put(new MultiKey<>(valueSetId, codeSystemId, codeName), code);

                this.codeSystemCodes.put(new MultiKey<>(codeSystemId, codeId), code);
                this.namedCodeSystemCodes.put(new MultiKey<>(codeSystemId, codeName), code);

                this.valueSetCodes.put(new MultiKey<>(valueSetId, codeId), code);
                this.namedValueSetCodes.put(new MultiKey<>(valueSetId, codeName), code);
            }
        }

        super.afterPropertiesSet();
    }

    private static List<Code> findCodes(boolean forValueSet, MultiValueMap<MultiKey<String>, Code> codes, MultiKey<String> codeKey) {
        return ((forValueSet && codes.containsKey(codeKey)) ? new ArrayList<>(codes.getCollection(codeKey)) : Collections.emptyList());
    }

    @Override
    public XdmDocument getDocument() {
        return this.doc;
    }

    @Override
    public void setDocument(XdmDocument doc) {
        this.doc = doc;
    }
}
