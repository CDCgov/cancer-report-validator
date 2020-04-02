package gov.hhs.onc.crigtt.validate.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ContextSpecificValidatorTask;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.testcases.ElementSet;
import gov.hhs.onc.crigtt.validate.testcases.ElementSets;
import gov.hhs.onc.crigtt.validate.testcases.ExpectedResults;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.NullFlavor;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.XPathSet;
import gov.hhs.onc.crigtt.validate.testcases.utils.CrigttTestcaseUtils;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import net.sf.saxon.om.NamespaceBinding;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmNodeKind;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.tree.tiny.TinyDocumentImpl;
import net.sf.saxon.tree.tiny.TinyTree;
import org.apache.commons.lang3.StringUtils;

public class ContextSpecificValidatorTaskImpl extends AbstractValidatorTask implements ContextSpecificValidatorTask {
    @Resource(name = "jaxbMarshallerValidate")
    private CrigttJaxbMarshaller validateJaxbMarshaller;

    private List<Source> testcaseSources;
    private Map<String, Testcase> testcases;
    private List<String> nullFlavors;

    public ContextSpecificValidatorTaskImpl(XdmDocument doc, ByteArraySource docSrc, String docFileName, Map<String, String> docNamespaces,
        String testcaseId) {
        super(doc, docSrc, docFileName, docNamespaces, testcaseId);
    }

    @Override
    public List<ValidatorEvent> call() throws Exception {
        List<XPathSet> xPathSets = this.testcases.get(this.testcaseId).getXPathSets();
        List<ValidatorEvent> events = new ArrayList<>(xPathSets.size());

        for (XPathSet xPathSet : xPathSets) {
            String baseXPathExpression = xPathSet.getXPathExpression();
            Object xPathSetContent = xPathSet.getContent();

            if (xPathSetContent instanceof ExpectedResults) {
                evaluateResults(events, xPathSet, baseXPathExpression, (ExpectedResults) xPathSetContent);
            } else if (xPathSetContent instanceof ElementSets) {
                evaluateSubexpressionSets(events, baseXPathExpression, (ElementSets) xPathSetContent);
            }
        }

        return events;
    }

    private void evaluateResults(List<ValidatorEvent> events, XPathSet xPathSet, String baseXPathExpression, ExpectedResults xPathSetContent)
        throws SaxonApiException, XPathException {
        ValidatorLocation loc;
        CrigttLocation locObj;
        boolean assertionStatus = false;
        boolean xPathComparisonElementResult = xPathSet.getXPathResultComparison() && xPathSet.getElementNodeKindExpected();

        ValidatorEvent event = CrigttTestcaseUtils.setEventDetails(loc = new ValidatorLocationImpl());
        events.add(event);

        loc.setNodeExpression(baseXPathExpression);

        List<String> expectedResults =
            CrigttTestcaseUtils.addNullFlavors(xPathSetContent.getIncludeNullFlavors(), this.nullFlavors, xPathSetContent.getExpectedResults());
        List<XdmNode> locNodes = Arrays.asList(this.xpathCompiler.evaluateNodes(xPathSet.getXPathExpression(), this.xpathContext, this.doc));
        MatchingCondition matchingCondition = xPathSet.getMatchingCondition();
        Set<String> expectedXPathResults = new HashSet<>(expectedResults.size());
        List<XdmNode> xPathNodeResults = new ArrayList<>(expectedResults.size());

        for (XdmNode locNode : locNodes) {
            if (locNode != null) {
                loc.setColumnNumber((locObj = new CrigttLocation(locNode.getUnderlyingNode())).getColumnNumber());
                loc.setLineNumber(locObj.getLineNumber());

                XdmNodeKind locNodeKind = locNode.getNodeKind();
                String actualResult = (locNodeKind == XdmNodeKind.ATTRIBUTE || locNodeKind == XdmNodeKind.TEXT) ? locNode.getStringValue() : locNode.toString();

                if (xPathSet.getXPathResultComparison()) {
                    for (String expectedResult : expectedResults) {
                        XdmNode resultNode = this.xpathCompiler.evaluateNode(expectedResult, this.xpathContext, this.doc);

                        if (resultNode != null) {
                            XdmNodeKind nodeKind = resultNode.getNodeKind();

                            if (nodeKind == XdmNodeKind.ATTRIBUTE || nodeKind == XdmNodeKind.TEXT) {
                                expectedXPathResults.add(resultNode.getStringValue());
                            } else if (nodeKind == XdmNodeKind.ELEMENT) {
                                xPathNodeResults.add(resultNode);
                            }
                        }
                    }

                    assertionStatus = xPathSet.getElementNodeKindExpected()
                        ? CrigttTestcaseUtils.getAssertionStatus(xPathNodeResults, locNode, this.xpathContext.getConfiguration(), matchingCondition)
                        : CrigttTestcaseUtils.getAssertionStatus(new ArrayList<>(expectedXPathResults), actualResult, baseXPathExpression, matchingCondition);
                } else {
                    assertionStatus = CrigttTestcaseUtils.getAssertionStatus(expectedResults, actualResult, baseXPathExpression, matchingCondition);
                }

                event.setActualResult(actualResult);

                if (assertionStatus) {
                    break;
                }
            } else {
                assertionStatus =
                    expectedResults.isEmpty() || CrigttTestcaseUtils.getAssertionStatus(
                        xPathComparisonElementResult ? (expectedResults = findEmptyResult(expectedResults)) : expectedResults, CrigttTestcaseUtils.EMPTY_RESULT,
                        baseXPathExpression);
            }
        }

        if (locNodes.size() == 0) {
            assertionStatus =
                expectedResults.isEmpty() || CrigttTestcaseUtils.getAssertionStatus(
                    xPathComparisonElementResult ? (expectedResults = findEmptyResult(expectedResults)) : expectedResults, CrigttTestcaseUtils.EMPTY_RESULT,
                    baseXPathExpression);
        }

        if (expectedXPathResults.size() > 0) {
            expectedResults.addAll(expectedXPathResults);
        } else if (xPathComparisonElementResult && xPathNodeResults.size() > 0) {
            expectedResults.addAll(new HashSet<>(xPathNodeResults).stream().map(XdmNode::toString).collect(Collectors.toList()));
        }

        event.setExpectedResults(expectedResults);
        event.setStatus(assertionStatus);
    }

    private List<String> findEmptyResult(List<String> expectedResults) throws SaxonApiException {
        List<String> results = new ArrayList<>(expectedResults);

        for (String expectedResult : expectedResults) {
            if (this.xpathCompiler.evaluateNode(expectedResult, this.xpathContext, this.doc) == null && !results.contains(CrigttTestcaseUtils.EMPTY_RESULT)) {
                results.add(CrigttTestcaseUtils.EMPTY_RESULT);
            }
        }

        return results;
    }

    private void evaluateSubexpressionSets(List<ValidatorEvent> events, String baseXPathExpression, ElementSets xPathSetContent)
        throws SaxonApiException {
        List<XdmNode> baseExprLocNodes = Arrays.asList(this.xpathCompiler.evaluateNodes(baseXPathExpression, this.xpathContext, this.doc));

        if (baseExprLocNodes.isEmpty()) {
            for (ElementSet elementSet : xPathSetContent.getElementSets()) {
                CrigttTestcaseUtils.addEventInfo(events, elementSet, baseXPathExpression + elementSet.getSubExpressionPrefix(), this.nullFlavors);
            }
        } else {
            for (ElementSet elementSet : xPathSetContent.getElementSets()) {
                Map<SubExpressionSet, Map<String, List<NodeInfo>>> subExpressionSetResults = new LinkedHashMap<>(elementSet.getSubExpressionSets().size());
                String baseSubExpression = baseXPathExpression + elementSet.getSubExpressionPrefix();

                List<XdmNode> exprLocNodes = Arrays.asList(this.xpathCompiler.evaluateNodes(baseSubExpression, this.xpathContext, this.doc));

                if (exprLocNodes.isEmpty()) {
                    CrigttTestcaseUtils.addEventInfo(events, elementSet, baseSubExpression, this.nullFlavors);
                } else {
                    Map<String, Integer> indexCount = new HashMap<>();
                    String indexedBaseExpression = CrigttXpathUtils.getIndexedXPathExpression(exprLocNodes.get(0).getUnderlyingNode());
                    int numBaseXPathExpressionDelims = CrigttXpathUtils.getNumDelimiters(indexedBaseExpression, CrigttXpathUtils.EXPR_DELIM);

                    for (SubExpressionSet subExpressionSet : elementSet.getSubExpressionSets()) {
                        Map<String, List<NodeInfo>> nodeInfoResults = new HashMap<>();
                        String xPathExpression = baseSubExpression + subExpressionSet.getSubExpression();
                        MatchingCondition matchingCondition = subExpressionSet.getMatchingCondition();
                        List<XdmNode> subExprLocNodes = Arrays.asList(this.xpathCompiler.evaluateNodes(xPathExpression, this.xpathContext, this.doc));

                        for (XdmNode locNode : subExprLocNodes) {
                            if (locNode != null) {
                                NodeInfo nodeInfo = locNode.getUnderlyingNode();
                                String actualResult = nodeInfo.getStringValue();

                                nodeInfoResults.putIfAbsent(actualResult, new ArrayList<>());
                                nodeInfoResults.get(actualResult).add(nodeInfo);
                            }
                        }

                        subExpressionSetResults.put(subExpressionSet, nodeInfoResults);

                        List<String> expectedResults = CrigttTestcaseUtils.addNullFlavors(subExpressionSet.getExpectedResults().getIncludeNullFlavors(),
                            this.nullFlavors, subExpressionSet.getExpectedResults().getExpectedResults());

                        for (Entry<String, List<NodeInfo>> entry : nodeInfoResults.entrySet()) {
                            String actualResult = entry.getKey();
                            boolean assertionStatus = CrigttTestcaseUtils.getAssertionStatus(expectedResults, actualResult, xPathExpression, matchingCondition);

                            if (assertionStatus) {
                                for (NodeInfo nodeInfo : nodeInfoResults.get(actualResult)) {
                                    String xPathExpressionPrefix = CrigttXpathUtils
                                        .getXPathExpressionPrefix(CrigttXpathUtils.getIndexedXPathExpression(nodeInfo), numBaseXPathExpressionDelims);
                                    indexCount.putIfAbsent(xPathExpressionPrefix, 0);
                                    indexCount.put(xPathExpressionPrefix, (indexCount.get(xPathExpressionPrefix)) + 1);
                                }

                                break;
                            }
                        }
                    }

                    events.addAll(processResults(subExpressionSetResults, baseSubExpression, elementSet.getOptional(), indexCount));
                }
            }
        }
    }

    private List<ValidatorEvent> processResults(Map<SubExpressionSet, Map<String, List<NodeInfo>>> subExpressionSetResults, String baseSubExpression,
        boolean optional, Map<String, Integer> indexCount) {
        Entry<String, Integer> resultEntry = indexCount.entrySet().stream().max(Entry.comparingByValue()).orElse(null);
        List<ValidatorEvent> events = new LinkedList<>();
        List<ValidatorEvent> optionalEvents = new ArrayList<>();
        boolean foundOptionalMatch = false;

        for (SubExpressionSet subExpressionSet : subExpressionSetResults.keySet()) {
            boolean foundMatch = false;

            ValidatorLocation loc = new ValidatorLocationImpl();
            ValidatorEvent event = CrigttTestcaseUtils.setEventDetails(loc);
            Map<String, List<NodeInfo>> nodeInfoResults = subExpressionSetResults.get(subExpressionSet);
            MatchingCondition matchingCondition = subExpressionSet.getMatchingCondition();
            List<String> expectedResults = CrigttTestcaseUtils.addNullFlavors(subExpressionSet.getExpectedResults().getIncludeNullFlavors(), this.nullFlavors,
                subExpressionSet.getExpectedResults().getExpectedResults());

            String xPathExpression = baseSubExpression + subExpressionSet.getSubExpression();
            String xPathExpressionPrefix = resultEntry != null ? resultEntry.getKey() : baseSubExpression;

            Map<String, ValidatorEvent> tempEvents = new HashMap<>();

            for (Entry<String, List<NodeInfo>> entry : nodeInfoResults.entrySet()) {
                String actualResult = entry.getKey();
                boolean assertionStatus = CrigttTestcaseUtils.getAssertionStatus(expectedResults, actualResult,
                    CrigttXpathUtils.getIndexedXPathExpression(entry.getValue().get(0)), matchingCondition);

                for (NodeInfo nodeInfo : nodeInfoResults.get(actualResult)) {
                    String indexedXPathExpression = CrigttXpathUtils.getIndexedXPathExpression(nodeInfo);

                    if (assertionStatus) {
                        if (indexedXPathExpression.contains(xPathExpressionPrefix)) {
                            CrigttTestcaseUtils.setLocationInfo(loc, nodeInfo, indexedXPathExpression + StringUtils.LF + xPathExpression);
                            event = CrigttTestcaseUtils.setEventDetails(loc, expectedResults, true);
                            event.setActualResult(actualResult);

                            events.add(event);
                            foundMatch = true;

                            if (optional) {
                                foundOptionalMatch = true;
                            }

                            break;
                        } else {
                            CrigttTestcaseUtils.setLocationInfo(loc, nodeInfo, indexedXPathExpression + StringUtils.LF + xPathExpression);
                            event = CrigttTestcaseUtils.setEventDetails(loc, expectedResults);
                            event.setActualResult(actualResult);
                            event.getMessages().add("Actual result matches expected result, but is not found in the expected location.");

                            tempEvents.put(indexedXPathExpression, event);
                        }
                    } else {
                        loc = new ValidatorLocationImpl();
                        event = CrigttTestcaseUtils.setEventDetails(loc, expectedResults);
                        CrigttTestcaseUtils.setLocationInfo(loc, nodeInfo, indexedXPathExpression + StringUtils.LF + xPathExpression);
                        event.setActualResult(actualResult);

                        if (optional) {
                            event.getMessages().add(
                                "Mismatch is part of a group of XPath expressions, in which one must be satisfied for the event to be considered a match.");

                        }

                        tempEvents.putIfAbsent(CrigttXpathUtils.getIndexedXPathExpression(nodeInfo), event);
                    }
                }

                if (foundMatch) {
                    break;
                }
            }

            if (foundOptionalMatch) {
                break;
            }

            if (foundMatch) {
                continue;
            }

            if (tempEvents.isEmpty()) {
                loc.setNodeExpression(xPathExpression);

                if (expectedResults.contains(CrigttTestcaseUtils.EMPTY_RESULT)) {
                    event = CrigttTestcaseUtils.setEventDetails(loc, expectedResults, true);
                } else {
                    event.setExpectedResults(expectedResults);
                }

                if (optional) {
                    event.getMessages()
                        .add("Mismatch is part of a group of XPath expressions, in which one must be satisfied for the event to be considered a match.");
                    optionalEvents.add(event);
                } else {
                    events.add(event);
                }
            } else {
                if (optional) {
                    tempEvents.forEach((prefix, tempEvent) -> optionalEvents.add(tempEvent));
                } else {
                    if (tempEvents.containsKey(xPathExpressionPrefix)) {
                        events.add(tempEvents.get(xPathExpressionPrefix));
                    } else {
                        events.addAll(tempEvents.values().stream().collect(Collectors.toList()));
                    }
                }
            }
        }

        if (optional && !foundOptionalMatch) {
            events.addAll(optionalEvents);
        }

        return events;
    }

    @Override
    public List<Source> getTestcaseSources() {
        return this.testcaseSources;
    }

    @Override
    public void setTestcaseSources(List<Source> testcaseSources) {
        this.testcaseSources = testcaseSources;
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public void afterPropertiesSet() throws Exception {
        super.afterPropertiesSet();

        this.testcases = CrigttStreamUtils.toMap(IdentifiedBean::getId, Function.identity(), LinkedHashMap::new,
            CrigttTestcaseUtils.buildTestcases(this.getTestcaseSources(), this.validateJaxbMarshaller).stream());

        TinyTree docTree = ((TinyDocumentImpl) this.doc.getUnderlyingNode()).getTree();

        for (NamespaceBinding namespaceBinding : docTree.getNamespaceBindings()) {
            String prefix;

            if (namespaceBinding != null && !this.docNamespaces.containsKey(prefix = namespaceBinding.getPrefix())) {
                this.xpathContext.declareNamespace(prefix, namespaceBinding.getURI());
            }
        }

        this.nullFlavors = Arrays.stream(NullFlavor.values()).map(NullFlavor::value).collect(Collectors.toList());
    }
}
