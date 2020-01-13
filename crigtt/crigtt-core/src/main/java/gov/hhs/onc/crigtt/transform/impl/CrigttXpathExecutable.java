package gov.hhs.onc.crigtt.transform.impl;

import net.sf.saxon.s9api.XPathExecutable;
import net.sf.saxon.sxpath.IndependentContext;
import net.sf.saxon.sxpath.XPathExpression;

public class CrigttXpathExecutable extends XPathExecutable {
    public CrigttXpathExecutable(XPathExpression expr, CrigttProcessor proc, IndependentContext context) {
        super(expr, proc, context);
    }

    @Override
    public IndependentContext getUnderlyingStaticContext() {
        return ((IndependentContext) super.getUnderlyingStaticContext());
    }
}
