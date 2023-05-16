package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.validate.impl.CustomEvalNodeInfo;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import javax.annotation.Nullable;

import net.sf.saxon.expr.StaticContext;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.query.DynamicQueryContext;
import net.sf.saxon.query.StaticQueryContext;
import net.sf.saxon.query.XQueryExpression;
import net.sf.saxon.s9api.*;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.sxpath.XPathEvaluator;
import net.sf.saxon.trans.XPathException;
import org.apache.commons.collections4.IteratorUtils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class CrigttXpathCompiler extends XPathCompiler {
    public CrigttXpathCompiler(CrigttProcessor proc) {
        super(proc);
    }

    public XdmNode[] evaluateNodes(String expr) throws SaxonApiException {
        return this.evaluateNodes(expr, ((XdmItem) null));
    }

    public XdmNode[] evaluateNodes(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.evaluateNodes(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    public XdmNode[] evaluateNodes(String expr, IndependentContext context) throws SaxonApiException {
        return this.evaluateNodes(expr, context, null);
    }

    public XdmNode[] evaluateNodes(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        XdmValue value = this.evaluate(expr, context, contextItem);
        return ((value != null) ? IteratorUtils.toArray(CrigttIteratorUtils.instances(value.iterator(), XdmNode.class), XdmNode.class) : new XdmNode[0]);
    }

    public XdmNode[] evaluateNodesWithCustomEvaluator(String contextRootEvalExpression, IndependentContext context,
                                                      @Nullable XdmItem contextItem,
                                                      String customEvalExpression, boolean isXquery)
        throws SaxonApiException {
        XdmNode[] nodes = evaluateNodes(contextRootEvalExpression, context, contextItem);
        if (nodes.length > 0) {
            NodeInfo sourceNodeInfo = nodes[0].getUnderlyingNode();
            if (isXquery) {
                nodes = evaluateCustomEvalXQueryStatement(contextItem, customEvalExpression, context, sourceNodeInfo);
            } else {
                nodes = evaluateCustomEvalSimpleExpression(context, contextItem, customEvalExpression, sourceNodeInfo);
            }
        }
        return nodes;
    }

    private XdmNode[] evaluateCustomEvalSimpleExpression(IndependentContext context, @Nullable XdmItem contextItem, String customEvaluator,
                                                         NodeInfo sourceNodeInfo) throws SaxonApiException {
        XdmValue value = this.evaluate(customEvaluator, context, contextItem);
        XdmNode[] nodes = new XdmNode[0];
        if (value instanceof XdmAtomicValue) {
            CustomEvalNodeInfo nodeInfo = new CustomEvalNodeInfo(sourceNodeInfo, value.toString());
            XdmNode node = new XdmNode(nodeInfo);
            nodes = new XdmNode[1];
            nodes[0] = node;
        }
        return nodes;
    }

    private XdmNode[] evaluateCustomEvalXQueryStatement(XdmItem contextItem, String expression,
                                                        IndependentContext context,
                                                        NodeInfo sourceNodeInfo) throws SaxonApiException {
        try {

            XdmNode[] resultNodes;
            Processor proc = new Processor(false);
            Iterator<String> namespacePrefixes = context.iteratePrefixes();

            DynamicQueryContext dc = new DynamicQueryContext(proc.getUnderlyingConfiguration());
            dc.setContextItem(proc.getUnderlyingConfiguration().buildDocument(((XdmDocument)contextItem).asSource()));
            StaticQueryContext staticContext = proc.newXQueryCompiler().getUnderlyingStaticContext();

            while (namespacePrefixes.hasNext()) {
                String prefix = namespacePrefixes.next();
                String uri = context.getNamespaceResolver().getURIForPrefix(prefix, true);
                staticContext.declareNamespace(prefix, uri);
            }
            XQueryExpression xqExpression = staticContext.compileQuery(expression);

            List<Object> resultList = xqExpression.evaluate(dc);
            resultNodes = new XdmNode[resultList.size()];

            int i = 0;
            for (Object result : resultList) {
                CustomEvalNodeInfo nodeInfo = new CustomEvalNodeInfo(sourceNodeInfo, result.toString());
                XdmNode node = new XdmNode(nodeInfo);
                resultNodes[i] = node;
                i++;
            }

            return resultNodes;

        } catch (Exception e) {
            throw new SaxonApiException(e);
        }
    }

    @Nullable
    public XdmNode evaluateNode(String expr) throws SaxonApiException {
        return this.evaluateNode(expr, ((XdmItem) null));
    }

    @Nullable
    public XdmNode evaluateNode(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.evaluateNode(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    @Nullable
    public XdmNode evaluateNode(String expr, IndependentContext context) throws SaxonApiException {
        return this.evaluateNode(expr, context, null);
    }

    @Nullable
    public XdmNode evaluateNode(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        return ((XdmNode) this.evaluateSingle(expr, context, contextItem));
    }

    @Nullable
    public String evaluateString(String expr) throws SaxonApiException {
        return this.evaluateString(expr, ((XdmItem) null));
    }

    @Nullable
    public String evaluateString(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.evaluateString(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    @Nullable
    public String evaluateString(String expr, IndependentContext context) throws SaxonApiException {
        return this.evaluateString(expr, context, null);
    }

    @Nullable
    public String evaluateString(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        return CrigttXpathUtils.getStringValue(this.evaluateSingle(expr, context, contextItem));
    }

    @Nullable
    public XdmItem evaluateSingle(String expr) throws SaxonApiException {
        return this.evaluateSingle(expr, ((XdmItem) null));
    }

    @Nullable
    public XdmItem evaluateSingle(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.evaluateSingle(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    @Nullable
    public XdmItem evaluateSingle(String expr, IndependentContext context) throws SaxonApiException {
        return this.evaluateSingle(expr, context, null);
    }

    @Nullable
    public XdmItem evaluateSingle(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.select(expr, context, contextItem).evaluateSingle();
    }

    public XdmValue evaluate(String expr) throws SaxonApiException {
        return this.evaluate(expr, ((XdmItem) null));
    }

    public XdmValue evaluate(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.evaluate(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    public XdmValue evaluate(String expr, IndependentContext context) throws SaxonApiException {
        return this.evaluate(expr, context, null);
    }

    public XdmValue evaluate(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.select(expr, context, contextItem).evaluate();
    }

    public XPathSelector select(String expr) throws SaxonApiException {
        return this.select(expr, ((XdmItem) null));
    }

    public XPathSelector select(String expr, @Nullable XdmItem contextItem) throws SaxonApiException {
        return this.select(expr, this.getUnderlyingStaticContext(), contextItem);
    }

    public XPathSelector select(String expr, IndependentContext context) throws SaxonApiException {
        return this.select(expr, context, null);
    }

    public XPathSelector select(String expr, IndependentContext context, @Nullable XdmItem contextItem) throws SaxonApiException {
        XPathSelector xpathSel = this.compile(expr, context).load();

        if (contextItem != null) {
            xpathSel.setContextItem(contextItem);
        }

        return xpathSel;
    }

    @Override
    public CrigttXpathExecutable compile(String expr) throws SaxonApiException {
        return this.compile(expr, this.getUnderlyingStaticContext());
    }

    public CrigttXpathExecutable compile(String expr, IndependentContext context) throws SaxonApiException {
        CrigttProcessor proc = this.getProcessor();

        XPathEvaluator xpathEval = new XPathEvaluator(proc.getUnderlyingConfiguration());
        xpathEval.setStaticContext(context);

        try {
            return new CrigttXpathExecutable(xpathEval.createExpression(expr), proc, context);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    @Override
    public CrigttProcessor getProcessor() {
        return ((CrigttProcessor) super.getProcessor());
    }

    @Override
    public IndependentContext getUnderlyingStaticContext() {
        return ((IndependentContext) super.getUnderlyingStaticContext());
    }
}
