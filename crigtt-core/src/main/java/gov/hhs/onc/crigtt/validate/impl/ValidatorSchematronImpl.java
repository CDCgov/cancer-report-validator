package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.beans.impl.AbstractNamedBean;
import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.schematron.Active;
import gov.hhs.onc.crigtt.schematron.Assertion;
import gov.hhs.onc.crigtt.schematron.Name;
import gov.hhs.onc.crigtt.schematron.Namespace;
import gov.hhs.onc.crigtt.schematron.Pattern;
import gov.hhs.onc.crigtt.schematron.Phase;
import gov.hhs.onc.crigtt.schematron.Rule;
import gov.hhs.onc.crigtt.schematron.Schema;
import gov.hhs.onc.crigtt.schematron.Title;
import gov.hhs.onc.crigtt.schematron.impl.NamespaceImpl;
import gov.hhs.onc.crigtt.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltCompiler;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltExecutable;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltTransformer;
import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import gov.hhs.onc.crigtt.validate.ValidatorPattern;
import gov.hhs.onc.crigtt.validate.ValidatorPhase;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import gov.hhs.onc.crigtt.validate.ValidatorSchema;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.vocab.VocabService;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttXmlOutputFactory;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.impl.XdmDocumentDestination;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import net.sf.saxon.lib.ExtensionFunctionDefinition;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.om.DocumentPool;
import net.sf.saxon.om.DocumentURI;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.stax.XMLStreamWriterDestination;
import org.apache.commons.lang3.ClassUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ValidatorSchematronImpl extends AbstractNamedBean implements ValidatorSchematron {
    private final static Logger LOGGER = LoggerFactory.getLogger(ValidatorSchematronImpl.class);

    @Resource(name = "xmlOutFactoryCrigtt")
    private CrigttXmlOutputFactory xmlOutFactory;

    @Resource(name = "xsltCompilerCrigtt")
    private CrigttXsltCompiler xsltCompiler;

    @Resource(name = "jaxbMarshallerSchematron")
    private CrigttJaxbMarshaller schematronJaxbMarshaller;

    private ExtensionFunctionDefinition[] extFuncs;
    private Map<String, ?> params;
    private String queryBinding;
    private XdmDocument[] referencedDocs;
    private String schemaVersion;
    private Source src;
    private VocabService[] vocabServices;
    private CrigttXsltExecutable[] xsltExecs;
    private Map<DocumentURI, DocumentInfo> pooledReferencedDocs;
    private Map<String, String> patternPhases;
    private ValidatorSchema activeSchema;
    private Map<String, ValidatorPhase> activePhases;
    private Map<String, ValidatorPattern> activePatterns;
    private Map<String, ValidatorRule> activeRules;
    private Map<String, ValidatorAssertion> activeAssertions;
    private Map<String, VocabService> activeVocabServices;
    private Map<String, String> namespaces;
    private CrigttXsltExecutable schemaXsltExec;

    @Override
    public XdmDocument transform(Source docSrc) throws Exception {
        return this.transform(docSrc, null);
    }

    @Override
    public XdmDocument transform(Source docSrc, @Nullable Map<Object, Object> contextData) throws Exception {
        CrigttXsltTransformer docTransformer = this.schemaXsltExec.load();
        docTransformer.setSource(docSrc);

        boolean xferContextData = (contextData != null);
        Map<Object, Object> docContextData = docTransformer.getUnderlyingController().getContextData();

        if (xferContextData) {
            docContextData.putAll(contextData);
        }

        XdmDocumentDestination docDest = new XdmDocumentDestination();
        docTransformer.setDestination(docDest);

        docTransformer.transform();

        if (xferContextData) {
            contextData.clear();
            contextData.putAll(docContextData);
        }

        return docDest.getXdmNode();
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.pooledReferencedDocs = CrigttStreamUtils.toMap(XdmDocument::getUri, XdmDocument::getUnderlyingNode, Stream.of(this.referencedDocs));

        this.initializeSchema();
    }

    private static <T extends IdentifiedBean> Map<String, T> mapComponents(List<?> content, Class<T> componentClass) {
        return CrigttStreamUtils.toMap(IdentifiedBean::getId, Function.<T> identity(), LinkedHashMap::new,
            CrigttStreamUtils.instances(content.stream(), componentClass));
    }

    private static <T> List<T> filterContent(List<T> content) {
        Iterator<T> contentIterator = content.iterator();

        CrigttIteratorUtils.stream(CrigttIteratorUtils.instances(contentIterator, IdentifiedBean.class)).forEach(contentItem -> {
            if (!contentItem.isSetId()) {
                contentIterator.remove();
            }
        });

        return content;
    }

    private void initializeSchema() throws SaxonApiException, XMLStreamException {
        Schema schema = this.schematronJaxbMarshaller.unmarshal(this.src, Schema.class);
        schema.setQueryBinding(this.queryBinding);
        schema.setSchemaVersion(this.schemaVersion);

        List<Object> schemaContent = filterContent(schema.getContent());

        this.activeSchema = new ValidatorSchemaImpl();

        if (this.isSetId()) {
            schema.setId(this.id);

            this.activeSchema.setId(this.id);
        }

        schemaContent.add(0, new NamespaceImpl(CrigttXmlNs.VALIDATE_URI, CrigttXmlNs.VALIDATE_PREFIX, null));
        schemaContent.add(1, new NamespaceImpl(CrigttXmlNs.VALIDATE_VOCAB_URI, CrigttXmlNs.VALIDATE_VOCAB_PREFIX, null));

        if (this.isSetName()) {
            Title title = new TitleImpl();
            title.setContent(Collections.singletonList(this.name));
            schemaContent.add(0, title);

            this.activeSchema.setName(this.name);
        }

        this.namespaces =
            CrigttStreamUtils.toMap(Namespace::getPrefix, Namespace::getUri, CrigttStreamUtils.instances(schemaContent.stream(), Namespace.class));

        Map<String, Phase> phases = mapComponents(schemaContent, Phase.class);
        int numPhases = phases.size();

        this.activePhases = new LinkedHashMap<>(numPhases);

        phases.forEach((phaseId, phase) -> {
            ValidatorPhase activePhase = new ValidatorPhaseImpl();
            activePhase.setId(phaseId);
            this.activePhases.put(phaseId, activePhase);
        });

        Map<String, Pattern> patterns = mapComponents(schemaContent, Pattern.class);
        int numPatterns = patterns.size();

        this.patternPhases = new LinkedHashMap<>(numPatterns);
        this.activePatterns = new LinkedHashMap<>(numPatterns);

        Map<String, Rule> rules = new LinkedHashMap<>();
        Map<String, Assertion> assertions = new LinkedHashMap<>();

        this.activeRules = new LinkedHashMap<>();
        this.activeAssertions = new LinkedHashMap<>();
        this.activeVocabServices = new LinkedHashMap<>();

        patterns.forEach((patternId, pattern) -> {
            for (String phaseId : phases.keySet()) {
                // noinspection ConstantConditions
            if (CrigttStreamUtils.instances(phases.get(phaseId).getContent().stream(), Active.class).anyMatch(
                active -> ((Pattern) active.getPattern()).getId().equals(patternId))) {
                this.patternPhases.put(patternId, phaseId);
                break;
            }
        }

        List<Object> patternContent = filterContent(pattern.getContent());

        CrigttStreamUtils.instances(patternContent.stream(), Rule.class).forEach(rule -> {
            ListIterator<Object> ruleContentIterator = filterContent(rule.getContent()).listIterator();
            String ruleId = rule.getId();

            rules.put(ruleId, rule);

            ValidatorRule activeRule = new ValidatorRuleImpl();
            activeRule.setId(ruleId);
            this.activeRules.put(ruleId, activeRule);

            CrigttIteratorUtils.stream(CrigttIteratorUtils.instances(ruleContentIterator, Assertion.class)).forEach(assertion -> {
                List<Serializable> assertionContent = filterContent(assertion.getContent());
                String assertionId = assertion.getId(), assertionTestExpr = assertion.getTest(), runtimeAssertionTestExpr;

                for (VocabService vocabService : this.vocabServices) {
                    if (!(runtimeAssertionTestExpr = vocabService.processTestExpression(assertionId, assertionTestExpr)).equals(assertionTestExpr)) {
                        assertion.setTest((assertionTestExpr = runtimeAssertionTestExpr));

                        this.activeVocabServices.put(assertionId, vocabService);

                        break;
                    }
                }

                assertions.put(assertionId, assertion);

                ValidatorAssertion activeAssertion = new ValidatorAssertionImpl();
                activeAssertion.setId(assertionId);
                activeAssertion.setName(CrigttStreamUtils.firstInstance(assertionContent.stream(), Name.class).map(Name::getPath).orElse(null));
                this.activeAssertions.put(assertionId, activeAssertion);
            });
        });

        ValidatorPattern activePattern = new ValidatorPatternImpl();
        activePattern.setId(patternId);
        activePattern.setName(CrigttStreamUtils.firstInstance(patternContent.stream(), Name.class).map(Name::getPath).orElse(null));
        this.activePatterns.put(patternId, activePattern);
    })  ;

        String sysId = this.src.getSystemId();
        ByteArrayResult schemaResult = new ByteArrayResult(sysId);

        this.schematronJaxbMarshaller.marshal(schema, schemaResult);

        CrigttXsltTransformer[] transformers = Stream.of(this.xsltExecs).map(CrigttXsltExecutable::load).toArray(CrigttXsltTransformer[]::new);
        transformers[0].setSource(new ByteArraySource(schemaResult.getBytes(), sysId));

        DocumentPool docPool = transformers[0].getUnderlyingController().getDocumentPool();

        this.pooledReferencedDocs.forEach((pooledReferencedDocUri, pooledReferencedDocInfo) -> docPool.add(pooledReferencedDocInfo, pooledReferencedDocUri));

        IntStream.range(0, (transformers.length - 1)).forEach(
            transformerIndex -> transformers[transformerIndex].setDestination(transformers[(transformerIndex + 1)]));

        XMLStreamWriterDestination schemaDest =
            new XMLStreamWriterDestination(this.xmlOutFactory.createXMLStreamWriter((schemaResult = new ByteArrayResult(sysId))));
        transformers[(transformers.length - 1)].setDestination(schemaDest);

        Optional.ofNullable(this.params)
            .ifPresent(
                params -> params.forEach((paramName, paramValue) -> transformers[(transformers.length - 1)].setParameter(new QName(paramName), (ClassUtils
                    .isAssignable(paramValue.getClass(), Boolean.class)
                    ? new XdmAtomicValue(((Boolean) paramValue)) : new XdmAtomicValue(paramValue.toString())))));

        transformers[0].transform();

        this.schemaXsltExec = this.xsltCompiler.compile(new ByteArraySource(schemaResult.getBytes(), sysId), this.extFuncs);

        LOGGER.info(String.format("Prepared Schematron schema (id=%s, sysId=%s, numPhases=%d, numPatterns=%d, numRules=%d, numAssertions=%d).", this.id, sysId,
            numPhases, numPatterns, rules.size(), assertions.size()));
    }

    @Override
    public Map<String, ValidatorAssertion> getActiveAssertions() {
        return this.activeAssertions;
    }

    @Override
    public Map<String, ValidatorPattern> getActivePatterns() {
        return this.activePatterns;
    }

    @Override
    public Map<String, ValidatorPhase> getActivePhases() {
        return this.activePhases;
    }

    @Override
    public Map<String, ValidatorRule> getActiveRules() {
        return this.activeRules;
    }

    @Override
    public ValidatorSchema getActiveSchema() {
        return this.activeSchema;
    }

    @Override
    public Map<String, VocabService> getActiveVocabServices() {
        return this.activeVocabServices;
    }

    @Override
    public ExtensionFunctionDefinition[] getExtensionFunctions() {
        return this.extFuncs;
    }

    @Override
    public void setExtensionFunctions(ExtensionFunctionDefinition ... extFuncs) {
        this.extFuncs = extFuncs;
    }

    @Override
    public Map<String, String> getNamespaces() {
        return this.namespaces;
    }

    @Override
    public Map<String, ?> getParameters() {
        return this.params;
    }

    @Override
    public void setParameters(Map<String, ?> params) {
        this.params = params;
    }

    @Override
    public Map<String, String> getPatternPhases() {
        return this.patternPhases;
    }

    @Override
    public String getQueryBinding() {
        return this.queryBinding;
    }

    @Override
    public void setQueryBinding(String queryBinding) {
        this.queryBinding = queryBinding;
    }

    @Override
    public XdmDocument[] getReferencedDocuments() {
        return this.referencedDocs;
    }

    @Override
    public void setReferencedDocuments(XdmDocument ... referencedDocs) {
        this.referencedDocs = referencedDocs;
    }

    @Override
    public String getSchemaVersion() {
        return this.schemaVersion;
    }

    @Override
    public void setSchemaVersion(String schemaVersion) {
        this.schemaVersion = schemaVersion;
    }

    @Override
    public Source getSource() {
        return this.src;
    }

    @Override
    public void setSource(Source src) {
        this.src = src;
    }

    @Override
    public VocabService[] getVocabServices() {
        return this.vocabServices;
    }

    @Override
    public void setVocabServices(VocabService ... vocabServices) {
        this.vocabServices = vocabServices;
    }

    @Override
    public CrigttXsltExecutable[] getXsltExecutables() {
        return this.xsltExecs;
    }

    @Override
    public void setXsltExecutables(CrigttXsltExecutable ... xsltExecs) {
        this.xsltExecs = xsltExecs;
    }
}
