package gov.hhs.onc.crigtt.validate.testcases.utils;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorLevel;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorLocationImpl;
import gov.hhs.onc.crigtt.validate.testcases.ElementSet;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.MatchingLevel;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.impl.MatchingConditionImpl;
import gov.hhs.onc.crigtt.validate.vocab.VocabXmlNames;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.TreeSet;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import javax.annotation.Nullable;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.Source;
import net.sf.saxon.Configuration;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.expr.sort.GenericAtomicComparer;
import net.sf.saxon.functions.DeepEqual;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.trans.XPathException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.ApplicationContext;

/**
 * Derived from:
 * <ul>
 * <li><a href="https://tools.ietf.org/html/rfc6068">RFC 6068 - The 'mailto' URI Scheme</a></li>
 * <li><a href="https://tools.ietf.org/html/rfc3966">RFC 3966 - The tel URI for Telephone Numbers</a></li>
 * </ul>
 */
public final class CrigttTestcaseUtils {
    public final static String TESTCASE_SOURCES_BEAN_NAME = "testcaseSources";

    public final static String EMAIL_ADDR_DELIM = "@";

    public final static String EMAIL_ADDR_URI_PREFIX = "mailto:";
    public final static String PHONE_NUM_URI_PREFIX = "tel:";
    public final static String PHONE_NUM_URI_GLOBAL_PREFIX = PHONE_NUM_URI_PREFIX + "+";

    public final static int PHONE_NUM_NUM_DIGITS = 10;
    public final static String PHONE_NUM_URI_PATTERN_FORMAT = "^" + PHONE_NUM_URI_PREFIX + "\\+1?\\d{" + PHONE_NUM_NUM_DIGITS + "}$";
    public final static String PHONE_NUM_URI_SEPARATOR_REPLACEMENT = "[-.()]";
    public final static Pattern PHONE_NUM_EXPR_PATTERN = Pattern.compile(CrigttTestcaseUtils.PHONE_NUM_URI_PATTERN_FORMAT);

    public final static String EMPTY_RESULT = "()";

    public final static int MATCHING_CONDITION_MATCH_LEN_DEFAULT = 8;

    private CrigttTestcaseUtils() {
    }

    public static List<Testcase> buildTestcases(ApplicationContext appContext, CrigttJaxbMarshaller jaxbMarshaller) {
        return buildTestcases(Arrays.asList(appContext.getBean(TESTCASE_SOURCES_BEAN_NAME, ResourceSource[].class)), jaxbMarshaller);
    }

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public static List<Testcase> buildTestcases(List<Source> sources, CrigttJaxbMarshaller jaxbMarshaller) {
        return sources.stream().map(source -> ((JAXBElement<Testcase>) jaxbMarshaller.unmarshal(source, JAXBElement.class)).getValue())
            .collect(Collectors.toList());
    }

    public static ValidatorEvent setEventDetails(ValidatorLocation loc) {
        return setEventDetails(loc, new ArrayList<>());
    }

    public static ValidatorEvent setEventDetails(ValidatorLocation loc, List<String> expectedResults) {
        return setEventDetails(loc, expectedResults, false);
    }

    public static ValidatorEvent setEventDetails(ValidatorLocation loc, List<String> expectedResults, boolean eventStatus) {
        ValidatorEvent event = new ValidatorEventImpl();
        event.setLocation(loc);
        event.setContextSpecific(true);
        event.setLevel(ValidatorLevel.MISMATCH);
        event.setExpectedResults(expectedResults);
        event.setStatus(eventStatus);

        return event;
    }

    public static void addEventInfo(List<ValidatorEvent> events, ElementSet elementSet, String baseSubExpression, List<String> nullFlavors) {
        ValidatorEvent event;
        ValidatorLocation loc;

        for (SubExpressionSet subExpressionSet : elementSet.getSubExpressionSets()) {
            List<String> expectedResults = addNullFlavors(subExpressionSet.getExpectedResults().getIncludeNullFlavors(), nullFlavors,
                subExpressionSet.getExpectedResults().getExpectedResults());
            event = CrigttTestcaseUtils.setEventDetails(loc = new ValidatorLocationImpl(), expectedResults,
                expectedResults.contains(CrigttTestcaseUtils.EMPTY_RESULT));
            loc.setNodeExpression(baseSubExpression + subExpressionSet.getSubExpression());

            events.add(event);
        }
    }

    public static List<String> addNullFlavors(boolean includeNullFlavors, List<String> nullFlavors, List<String> expectedResults) {
        List<String> updatedExpectedResults = new ArrayList<>(expectedResults);

        if (includeNullFlavors) {
            updatedExpectedResults.addAll(nullFlavors);
        }

        return new ArrayList<>(new TreeSet<>(updatedExpectedResults));
    }

    public static void setLocationInfo(ValidatorLocation loc, NodeInfo nodeInfo, String xPathExpression) {
        CrigttLocation locObj;

        loc.setColumnNumber((locObj = new CrigttLocation(nodeInfo)).getColumnNumber());
        loc.setLineNumber(locObj.getLineNumber());
        loc.setNodeExpression(xPathExpression);
    }

    public static boolean getAssertionStatus(List<String> expectedResults, String actualResult, String xPathExpression) {
        return getAssertionStatus(expectedResults, actualResult, xPathExpression, null);
    }

    public static boolean getAssertionStatus(List<String> expectedResults, String actualResult, String xPathExpression,
        @Nullable MatchingCondition matchingCondition) {
        Predicate<String> matchingPredicate = actualResult::equals;

        if (xPathExpression.contains(VocabXmlNames.DISPLAY_NAME_ATTR_NAME) || xPathExpression.contains(CrigttXpathUtils.TEXT_NODE_SELECTION)) {
            if (matchingCondition != null) {
                matchingCondition.setMatchingLevel(MatchingLevel.EQUALS_IGNORE_CASE);
            } else {
                matchingCondition = new MatchingConditionImpl(MatchingLevel.EQUALS_IGNORE_CASE, null, MATCHING_CONDITION_MATCH_LEN_DEFAULT);
            }
        }

        if (matchingCondition != null) {
            int substrMatchLen = matchingCondition.getMatchLength();

            switch (matchingCondition.getMatchingLevel()) {
                case EQUALS:
                    matchingPredicate = actualResult::equals;
                    break;
                case EQUALS_IGNORE_CASE:
                    matchingPredicate = actualResult::equalsIgnoreCase;
                    break;
                case NOT_EQUALS:
                    matchingPredicate = expectedResult -> !expectedResult.equalsIgnoreCase(actualResult);

                    break;
                case SUBSTRING:
                    matchingPredicate = expectedResult -> {
                        int minResultLen;
                        int actualResultLen = actualResult.length();
                        int expectedResultLen = expectedResult.length();

                        minResultLen =
                            expectedResultLen < substrMatchLen ? Math.min(expectedResultLen, actualResultLen) : Math.min(actualResultLen, substrMatchLen);

                        return expectedResult.substring(0, minResultLen).equals(actualResult.substring(0, minResultLen));
                    };
                    break;
                case REGEXP:
                    if (matchingCondition.getMatchingRegexpElementType() != null) {
                        String normalizedResult;

                        switch (matchingCondition.getMatchingRegexpElementType()) {
                            case EMAIL_ADDR:
                                if (actualResult.substring(0, EMAIL_ADDR_URI_PREFIX.length()).equalsIgnoreCase(EMAIL_ADDR_URI_PREFIX)) {
                                    normalizedResult = EMAIL_ADDR_URI_PREFIX + actualResult.substring(EMAIL_ADDR_URI_PREFIX.length());
                                } else {
                                    return false;
                                }

                                matchingPredicate = expectedResult -> {
                                    int normalizedResultEmailDelimIdx = normalizedResult.indexOf(EMAIL_ADDR_DELIM);
                                    int expectedResultEmailDelimIdx = expectedResult.indexOf(EMAIL_ADDR_DELIM);

                                    return (normalizedResult.substring(0, normalizedResultEmailDelimIdx)
                                        .equals(expectedResult.substring(0, expectedResultEmailDelimIdx)))
                                        && normalizedResult.substring(normalizedResultEmailDelimIdx)
                                            .equalsIgnoreCase(expectedResult.substring(expectedResultEmailDelimIdx));
                                };
                                break;
                            case PHONE_NUM:
                                if (actualResult.substring(0, PHONE_NUM_URI_GLOBAL_PREFIX.length()).equalsIgnoreCase(PHONE_NUM_URI_GLOBAL_PREFIX)) {
                                    normalizedResult = PHONE_NUM_URI_GLOBAL_PREFIX + actualResult
                                        .replaceAll(PHONE_NUM_URI_SEPARATOR_REPLACEMENT, StringUtils.EMPTY).substring(PHONE_NUM_URI_GLOBAL_PREFIX.length());

                                    matchingPredicate = expectedResult -> {
                                        int normalizedResultPhoneNumMatchEndIdx = normalizedResult.length() - 1;
                                        int expectedResultPhoneNumMatchEndIdx = expectedResult.length() - 1;

                                        return PHONE_NUM_EXPR_PATTERN.matcher(normalizedResult).matches() && normalizedResult
                                            .substring(normalizedResultPhoneNumMatchEndIdx - PHONE_NUM_NUM_DIGITS + 1, normalizedResultPhoneNumMatchEndIdx)
                                            .equals(expectedResult.substring(expectedResultPhoneNumMatchEndIdx - PHONE_NUM_NUM_DIGITS + 1,
                                                expectedResultPhoneNumMatchEndIdx));
                                    };
                                } else {
                                    return false;
                                }

                                break;
                            default:
                                matchingPredicate = expectedResult -> Pattern.matches(expectedResult, actualResult);
                                break;
                        }

                        break;
                    } else {
                        matchingPredicate = expectedResult -> Pattern.matches(expectedResult, actualResult);
                    }
            }
        }

        return expectedResults.stream().anyMatch(matchingPredicate);
    }

    public static boolean getAssertionStatus(List<XdmNode> expectedResults, XdmNode actualResult, Configuration config) throws XPathException {
        return getAssertionStatus(expectedResults, actualResult, config, null);
    }

    public static boolean getAssertionStatus(List<XdmNode> expectedResults, XdmNode actualResult, Configuration config,
        @Nullable MatchingCondition matchingCondition) throws XPathException {
        XPathContext xPathContext = config.getConversionContext().newContext();
        GenericAtomicComparer comparer = new GenericAtomicComparer(null, xPathContext);

        if (matchingCondition == null) {
            matchingCondition = new MatchingConditionImpl(MatchingLevel.EQUALS, null, MATCHING_CONDITION_MATCH_LEN_DEFAULT);
        }

        MatchingLevel matchingLevel = matchingCondition.getMatchingLevel();

        for (XdmNode expectedResult : expectedResults) {
            boolean deepEquals =
                DeepEqual.deepEquals(expectedResult.getUnderlyingNode().iterate(), actualResult.getUnderlyingNode().iterate(), comparer, xPathContext, 0);

            if ((matchingLevel.equals(MatchingLevel.EQUALS) && deepEquals) || (matchingLevel.equals(MatchingLevel.NOT_EQUALS) && !deepEquals)) {
                return true;
            }
        }

        return false;
    }
}
