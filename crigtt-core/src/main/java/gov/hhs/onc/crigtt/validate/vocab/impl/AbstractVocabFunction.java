package gov.hhs.onc.crigtt.validate.vocab.impl;

import gov.hhs.onc.crigtt.transform.CrigttContextDataNames;
import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.ValidatorSchematron;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabAttributes;
import gov.hhs.onc.crigtt.validate.vocab.VocabService;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;
import gov.hhs.onc.crigtt.validate.vocab.VocabTarget;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import javax.annotation.Resource;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.keyvalue.MultiKey;

public abstract class AbstractVocabFunction extends AbstractCrigttExtensionFunction {
    @Resource(name = "xpathCompilerCrigtt")
    protected CrigttXpathCompiler xpathCompiler;

    protected AbstractVocabFunction(StructuredQName name) {
        super(name, SequenceType.SINGLE_BOOLEAN, SequenceType.SINGLE_STRING, SequenceType.SINGLE_STRING, SequenceType.SINGLE_INTEGER,
            SequenceType.SINGLE_INTEGER, SequenceType.NODE_SEQUENCE);
    }

    @Override
    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        XdmNode vocabContextNode = ((args[4] instanceof XdmNode) ? ((XdmNode) args[4]) : null);
        String patternId = CrigttXpathUtils.getStringValue(args[0]), assertionId = CrigttXpathUtils.getStringValue(args[1]), lineNum =
            Long.toString(CrigttXpathUtils.getAtomicValue(args[2]).getLongValue()), columnNum =
            Long.toString(CrigttXpathUtils.getAtomicValue(args[3]).getLongValue()), valueSetId, codeSystemId, codeId, codeName;
        ValidatorSchematron schematron = ((ValidatorSchematron) contextData.get(CrigttContextDataNames.VALIDATE_SCHEMATRON_NAME));
        VocabService service = schematron.getActiveVocabServices().get(assertionId);
        VocabAssertion assertion = service.getAssertions().get(assertionId);

        List<VocabSet> expectedVocabSets = assertion.getExpectedVocabSets();

        contextData.put(new MultiKey<>(patternId, assertionId, lineNum, columnNum, CrigttContextDataNames.VALIDATE_VOCAB_VOCAB_SETS_EXPECTED_NAME),
            new ArrayList<>(expectedVocabSets));

        List<String> messages = new ArrayList<>();

        contextData.put(new MultiKey<>(patternId, assertionId, lineNum, columnNum, CrigttContextDataNames.VALIDATE_VOCAB_MESSAGES_NAME), messages);

        if (vocabContextNode == null) {
            messages.add(String.format("Vocabulary context XPath expression did not evaluate to a single XML element node: %s",
                assertion.getVocabContextExpression()));

            return new XdmAtomicValue(false);
        }

        if (vocabContextNode.getAttributeValue(new QName(VocabAttributes.NULL_FLAVOR_NAME)) != null) {
            messages.add("Null flavor XML attribute specified - skipping vocabulary validation.");

            return new XdmAtomicValue(true);
        }

        IndependentContext xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

        schematron.getNamespaces().forEach(xpathContext::declareNamespace);

        VocabSet vocabSet =
            new VocabSetImpl(null, new ValueSetImpl((valueSetId =
                this.xpathCompiler.evaluateString(assertion.getValueSetIdExpression(), xpathContext, vocabContextNode)), this.xpathCompiler.evaluateString(
                assertion.getValueSetNameExpression(), xpathContext, vocabContextNode), this.xpathCompiler.evaluateString(
                assertion.getValueSetVersionExpression(), xpathContext, vocabContextNode)), new CodeSystemImpl((codeSystemId =
                this.xpathCompiler.evaluateString(assertion.getCodeSystemIdExpression(), xpathContext, vocabContextNode)), this.xpathCompiler.evaluateString(
                assertion.getCodeSystemNameExpression(), xpathContext, vocabContextNode), this.xpathCompiler.evaluateString(
                assertion.getCodeSystemVersionExpression(), xpathContext, vocabContextNode)));

        contextData.put(new MultiKey<>(patternId, assertionId, lineNum, columnNum, CrigttContextDataNames.VALIDATE_VOCAB_VOCAB_SET_NAME), vocabSet);

        Code code =
            new CodeImpl((codeId = this.xpathCompiler.evaluateString(assertion.getCodeIdExpression(), xpathContext, vocabContextNode)), (codeName =
                this.xpathCompiler.evaluateString(assertion.getCodeNameExpression(), xpathContext, vocabContextNode)));

        contextData.put(new MultiKey<>(patternId, assertionId, lineNum, columnNum, CrigttContextDataNames.VALIDATE_VOCAB_CODE_NAME), code);

        if (!assertion.getActive()) {
            messages.add("Vocabulary validation disabled for assertion.");

            return new XdmAtomicValue(true);
        }

        boolean status = true, valueSetIdAvailable = (valueSetId != null), valueSetFallback = assertion.getValueSetFallback(), codeSystemIdAvailable =
            (codeSystemId != null), codeSystemFallback = assertion.getCodeSystemFallback(), codeIdAvailable = (codeId != null), codeIdFallback =
            assertion.getCodeIdFallback(), codeNameAvailable = (codeName != null);
        VocabTarget target = assertion.getTarget(), searchTarget = assertion.getSearchTarget();

        if (!codeIdAvailable && !codeIdFallback) {
            messages.add("Code was not specified.");

            status = false;
        }

        if ((target == VocabTarget.CODE_NAME) && !codeNameAvailable) {
            messages.add("Code display name was not specified.");

            status = false;
        }

        List<VocabSet> filteredExpectedVocabSets;

        // noinspection ConstantConditions
        if ((valueSetIdAvailable || valueSetFallback || codeSystemIdAvailable || codeSystemFallback)
            && (codeIdAvailable || codeIdFallback)
            && ((searchTarget != VocabTarget.CODE_NAME) || codeNameAvailable)
            && !(filteredExpectedVocabSets =
                expectedVocabSets
                    .stream()
                    .filter(
                        expectedVocabSetSearch -> ((!valueSetIdAvailable || !expectedVocabSetSearch.isSetValueSet() || expectedVocabSetSearch.getValueSet()
                            .getId().equals(valueSetId)) && (!codeSystemIdAvailable || !expectedVocabSetSearch.isSetCodeSystem() || expectedVocabSetSearch
                            .getCodeSystem().getId().equals(codeSystemId)))).collect(Collectors.toList())).isEmpty()) {
            boolean valueSetIdRequired = true, valueSetIdExpected, codeSystemIdRequired = true, codeSystemIdExpected;
            String valueSetIdSearch, codeSystemIdSearch;
            List<Code> allFoundCodes = new ArrayList<>(filteredExpectedVocabSets.size()), foundCodes;

            for (VocabSet filteredExpectedVocabSet : filteredExpectedVocabSets) {
                valueSetIdRequired &= (valueSetIdExpected = filteredExpectedVocabSet.isSetValueSet());
                codeSystemIdRequired &= (codeSystemIdExpected = filteredExpectedVocabSet.isSetCodeSystem());
                foundCodes = null;

                if (codeSystemIdExpected) {
                    codeSystemIdSearch =
                        (codeSystemIdAvailable ? codeSystemId : (codeSystemFallback ? filteredExpectedVocabSet.getCodeSystem().getId() : null));
                } else {
                    codeSystemIdSearch = codeSystemId;
                }

                if (valueSetIdExpected) {
                    if ((valueSetIdSearch = (valueSetIdAvailable ? valueSetId : (valueSetFallback ? filteredExpectedVocabSet.getValueSet().getId() : null))) != null) {
                        if (searchTarget == VocabTarget.CODE_ID) {
                            foundCodes =
                                ((codeSystemIdSearch != null) ? service.findCodesByValueSet(valueSetIdSearch, codeSystemIdSearch, codeId) : service
                                    .findCodesByValueSet(valueSetIdSearch, codeId));
                        } else {
                            foundCodes =
                                ((codeSystemIdSearch != null) ? service.findNamedCodesByValueSet(valueSetIdSearch, codeSystemIdSearch, codeName) : service
                                    .findNamedCodesByValueSet(valueSetIdSearch, codeName));
                        }
                    }
                } else if ((valueSetId == null) && (codeSystemIdSearch != null)) {
                    if (searchTarget == VocabTarget.CODE_ID) {
                        foundCodes = service.findCodesByCodeSystem(codeSystemIdSearch, codeId);
                    } else {
                        foundCodes = service.findNamedCodesByCodeSystem(codeSystemIdSearch, codeName);
                    }
                }

                if (!CollectionUtils.isEmpty(foundCodes)) {
                    allFoundCodes.addAll(foundCodes);
                }
            }

            if (target == VocabTarget.CODE_ID) {
                if (allFoundCodes.isEmpty()) {
                    messages.add("Invalid code.");

                    status = false;
                }
            } else if (((searchTarget == VocabTarget.CODE_NAME) && allFoundCodes.isEmpty())
                || (codeNameAvailable && !allFoundCodes.stream().anyMatch(foundCode -> codeName.equals(foundCode.getName())))) {
                messages.add("Invalid code display name.");

                status = false;
            }

            if ((target != VocabTarget.CODE_NAME) && codeNameAvailable && !allFoundCodes.stream().anyMatch(foundCode -> codeName.equals(foundCode.getName()))) {
                messages.add("Invalid code display name.");
            }

            contextData.put(new MultiKey<>(patternId, assertionId, lineNum, columnNum, CrigttContextDataNames.VALIDATE_VOCAB_CODES_EXPECTED_NAME),
                allFoundCodes);

            if (valueSetIdRequired && !valueSetIdAvailable && !valueSetFallback) {
                messages.add("Value set OID was not specified.");
            }

            if (codeSystemIdRequired && !codeSystemIdAvailable && !codeSystemFallback) {
                messages.add("Code system OID was not specified.");

                status = false;
            }
        } else {
            status = false;
        }

        return new XdmAtomicValue(status);
    }
}
