package gov.hhs.onc.crigtt.transform.impl;

import net.sf.saxon.expr.instruct.GlobalParameterSet;
import net.sf.saxon.s9api.XsltTransformer;

public class CrigttXsltTransformer extends XsltTransformer {
    public CrigttXsltTransformer(CrigttProcessor proc, CrigttController controller, GlobalParameterSet staticParams) {
        super(proc, controller, staticParams);
    }

    @Override
    public CrigttController getUnderlyingController() {
        return ((CrigttController) super.getUnderlyingController());
    }
}
