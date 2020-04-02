package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import javax.annotation.Nullable;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XPathCompiler;
import net.sf.saxon.s9api.XPathSelector;
import net.sf.saxon.s9api.XdmItem;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.sxpath.XPathEvaluator;
import net.sf.saxon.trans.XPathException;
import org.apache.commons.collections4.IteratorUtils;

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
