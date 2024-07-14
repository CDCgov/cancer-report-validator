//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate.testcases.utils;

import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorLevel;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorLocationImpl;
import gov.hhs.onc.crigtt.validate.testcases.ElementSet;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.MatchingLevel;
import gov.hhs.onc.crigtt.validate.testcases.MatchingRegexpElementType;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.impl.MatchingConditionImpl;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
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
import net.sf.saxon.lib.StringCollator;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.trans.XPathException;
import org.springframework.context.ApplicationContext;

public final class CrigttTestcaseUtils {
    public static final String TESTCASE_SOURCES_BEAN_NAME = "testcaseSources";
    public static final String EMAIL_ADDR_DELIM = "@";
    public static final String EMAIL_ADDR_URI_PREFIX = "mailto:";
    public static final String PHONE_NUM_URI_PREFIX = "tel:";
    public static final String PHONE_NUM_URI_GLOBAL_PREFIX = "tel:+";
    public static final int PHONE_NUM_NUM_DIGITS = 10;
    public static final String PHONE_NUM_URI_PATTERN_FORMAT = "^tel:\\+1?\\d{10}$";
    public static final String PHONE_NUM_URI_SEPARATOR_REPLACEMENT = "[-.()]";
    public static final Pattern PHONE_NUM_EXPR_PATTERN = Pattern.compile("^tel:\\+1?\\d{10}$");
    public static final String US_PHONE_NUMBER_REGEX = "^(?:\\+?1[-.● ]?)?\\(?([0-9]{3})\\)?[ -.●]?([0-9]{3})[ -.●]?([0-9]{4})$";
    public static final String EMAIL_VALIDATOR_REGEX = "(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    public static final String EMPTY_RESULT = "()";
    public static final int MATCHING_CONDITION_MATCH_LEN_DEFAULT = 8;
    private static final int NODE_INFO_TEXT_KIND = 3;

    private CrigttTestcaseUtils() {
    }

    public static List<Testcase> buildTestcases(ApplicationContext appContext, CrigttJaxbMarshaller jaxbMarshaller) {
        return buildTestcases((List) Arrays.asList((Object[])appContext.getBean("testcaseSources", ResourceSource[].class)), jaxbMarshaller);
    }

    public static List<Testcase> buildTestcases(List<Source> sources, CrigttJaxbMarshaller jaxbMarshaller) {
        return (List)sources.stream().map((source) -> {
            return (Testcase)((JAXBElement)jaxbMarshaller.unmarshal(source, JAXBElement.class)).getValue();
        }).collect(Collectors.toList());
    }

    public static ValidatorEvent setEventDetails(ValidatorLocation loc) {
        return setEventDetails(loc, new ArrayList());
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
        Iterator var6 = elementSet.getSubExpressionSets().iterator();

        while(var6.hasNext()) {
            SubExpressionSet subExpressionSet = (SubExpressionSet)var6.next();
            List<String> expectedResults = addNullFlavors(subExpressionSet.getExpectedResults().getIncludeNullFlavors(), nullFlavors, subExpressionSet.getExpectedResults().getExpectedResults());
            ValidatorLocationImpl loc;
            ValidatorEvent event = setEventDetails(loc = new ValidatorLocationImpl(), expectedResults, expectedResults.contains("()"));
            loc.setNodeExpression(baseSubExpression + subExpressionSet.getSubExpression());
            events.add(event);
        }

    }

    public static List<String> addNullFlavors(boolean includeNullFlavors, List<String> nullFlavors, List<String> expectedResults) {
        List<String> updatedExpectedResults = new ArrayList(expectedResults);
        if (includeNullFlavors) {
            updatedExpectedResults.addAll(nullFlavors);
        }

        return new ArrayList(new TreeSet(updatedExpectedResults));
    }

    public static void setLocationInfo(ValidatorLocation loc, NodeInfo nodeInfo, String xPathExpression) {
        if (nodeInfo.getNodeKind() != 3) {
            CrigttLocation locObj;
            loc.setColumnNumber((locObj = new CrigttLocation(nodeInfo)).getColumnNumber());
            loc.setLineNumber(locObj.getLineNumber());
        }

        loc.setNodeExpression(xPathExpression);
    }

    public static boolean getAssertionStatus(List<String> expectedResults, String actualResult, String xPathExpression) {
        return getAssertionStatus(expectedResults, (String)actualResult, (String)xPathExpression, (MatchingCondition)null);
    }

    public static boolean getAssertionStatus(List<String> expectedResults, String actualResult, String xPathExpression, @Nullable MatchingCondition matchingCondition) {
        Predicate<String> matchingPredicate = actualResult::equals;
        if (xPathExpression.contains("displayName") || xPathExpression.contains("text()")) {
            if (matchingCondition != null) {
                ((MatchingCondition)matchingCondition).setMatchingLevel(MatchingLevel.EQUALS_IGNORE_CASE);
            } else {
                matchingCondition = new MatchingConditionImpl(MatchingLevel.EQUALS_IGNORE_CASE, (MatchingRegexpElementType)null, 8);
            }
        }

        if (matchingCondition != null) {
            int substrMatchLen = ((MatchingCondition)matchingCondition).getMatchLength();
            switch (((MatchingCondition)matchingCondition).getMatchingLevel()) {
                case EQUALS:
                    matchingPredicate = actualResult::equals;
                    break;
                case EQUALS_IGNORE_CASE:
                    matchingPredicate = actualResult::equalsIgnoreCase;
                    break;
                case NOT_EQUALS:
                    matchingPredicate = (expectedResult) -> {
                        return !expectedResult.equalsIgnoreCase(actualResult);
                    };
                    break;
                case SUBSTRING:
                    matchingPredicate = (expectedResult) -> {
                        int actualResultLen = actualResult.length();
                        int expectedResultLen = expectedResult.length();
                        int minResultLen = expectedResultLen < substrMatchLen ? Math.min(expectedResultLen, actualResultLen) : Math.min(actualResultLen, substrMatchLen);
                        return expectedResult.substring(0, minResultLen).equals(actualResult.substring(0, minResultLen));
                    };
                    break;
                case REGEXP:
                    if (((MatchingCondition)matchingCondition).getMatchingRegexpElementType() != null) {
                        String normalizedResult;
                        switch (((MatchingCondition)matchingCondition).getMatchingRegexpElementType()) {
                            case EMAIL_ADDR:
                                if (!actualResult.substring(0, "mailto:".length()).equalsIgnoreCase("mailto:")) {
                                    return false;
                                }

                                normalizedResult = "mailto:" + actualResult.substring("mailto:".length());
                                matchingPredicate = (expectedResult) -> {
                                    int normalizedResultEmailDelimIdx = normalizedResult.indexOf("@");
                                    int expectedResultEmailDelimIdx = expectedResult.indexOf("@");
                                    return normalizedResult.substring(0, normalizedResultEmailDelimIdx).equals(expectedResult.substring(0, expectedResultEmailDelimIdx)) && normalizedResult.substring(normalizedResultEmailDelimIdx).equalsIgnoreCase(expectedResult.substring(expectedResultEmailDelimIdx));
                                };
                                break;
                            case PHONE_NUM:
                                if (!actualResult.substring(0, "tel:+".length()).equalsIgnoreCase("tel:+")) {
                                    return false;
                                }

                                normalizedResult = "tel:+" + actualResult.replaceAll("[-.()]", "").substring("tel:+".length());
                                matchingPredicate = (expectedResult) -> {
                                    int normalizedResultPhoneNumMatchEndIdx = normalizedResult.length() - 1;
                                    int expectedResultPhoneNumMatchEndIdx = expectedResult.length() - 1;
                                    return PHONE_NUM_EXPR_PATTERN.matcher(normalizedResult).matches() && normalizedResult.substring(normalizedResultPhoneNumMatchEndIdx - 10 + 1, normalizedResultPhoneNumMatchEndIdx).equals(expectedResult.substring(expectedResultPhoneNumMatchEndIdx - 10 + 1, expectedResultPhoneNumMatchEndIdx));
                                };
                                break;
                            case TELECOM:
                                return validateTelecom(actualResult);
                            default:
                                matchingPredicate = (expectedResult) -> {
                                    return Pattern.matches(expectedResult, actualResult);
                                };
                        }
                    } else {
                        matchingPredicate = (expectedResult) -> {
                            return Pattern.matches(expectedResult, actualResult);
                        };
                    }
            }
        }

        return expectedResults.stream().anyMatch(matchingPredicate);
    }

    private static boolean validateTelecom(String actualResult) {
        boolean isValid = false;
        if (actualResult != null) {
            actualResult = actualResult.trim();
            String sanitizedResult;
            if (actualResult.startsWith("tel:")) {
                sanitizedResult = actualResult.replace("tel:", "").trim();
                isValid = sanitizedResult.matches("^(?:\\+?1[-.● ]?)?\\(?([0-9]{3})\\)?[ -.●]?([0-9]{3})[ -.●]?([0-9]{4})$");
            } else if (actualResult.startsWith("mailto:")) {
                sanitizedResult = actualResult.replace("mailto:", "").trim();
                isValid = sanitizedResult.matches("(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])");
            }
        }

        return isValid;
    }

    public static boolean getAssertionStatus(List<XdmNode> expectedResults, XdmNode actualResult, Configuration config) throws XPathException {
        return getAssertionStatus(expectedResults, (XdmNode)actualResult, (Configuration)config, (MatchingCondition)null);
    }

    public static boolean getAssertionStatus(List<XdmNode> expectedResults, XdmNode actualResult, Configuration config, @Nullable MatchingCondition matchingCondition) throws XPathException {
        XPathContext xPathContext = config.getConversionContext().newContext();
        GenericAtomicComparer comparer = new GenericAtomicComparer((StringCollator)null, xPathContext);
        if (matchingCondition == null) {
            matchingCondition = new MatchingConditionImpl(MatchingLevel.EQUALS, (MatchingRegexpElementType)null, 8);
        }

        MatchingLevel matchingLevel = ((MatchingCondition)matchingCondition).getMatchingLevel();
        Iterator var7 = expectedResults.iterator();

        boolean deepEquals;
        do {
            if (!var7.hasNext()) {
                return false;
            }

            XdmNode expectedResult = (XdmNode)var7.next();
            deepEquals = DeepEqual.deepEquals(expectedResult.getUnderlyingNode().iterate(), actualResult.getUnderlyingNode().iterate(), comparer, xPathContext, 0);
        } while((!matchingLevel.equals(MatchingLevel.EQUALS) || !deepEquals) && (!matchingLevel.equals(MatchingLevel.NOT_EQUALS) || deepEquals));

        return true;
    }
}
