package gov.hhs.onc.crigtt.transform.impl;

import net.sf.saxon.PreparedStylesheet;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.XsltExecutable;
import net.sf.saxon.trans.CompilerInfo;
import net.sf.saxon.trans.XPathException;

public class CrigttXsltExecutable extends XsltExecutable {
    private CompilerInfo compilerInfo;

    public CrigttXsltExecutable(CrigttProcessor proc, PreparedStylesheet preparedStylesheet, CompilerInfo compilerInfo) {
        super(proc, preparedStylesheet);

        this.compilerInfo = compilerInfo;
    }

    @Override
    public CrigttXsltTransformer load() {
        CrigttProcessor proc = this.getProcessor();
        PreparedStylesheet preparedStylesheet = this.getUnderlyingCompiledStylesheet();

        CrigttController controller = new CrigttController(proc.getUnderlyingConfiguration(), preparedStylesheet);
        controller.setMessageReceiverClassName(this.compilerInfo.getMessageReceiverClassName());
        controller.setOutputURIResolver(this.compilerInfo.getOutputURIResolver());
        controller.setRecoveryPolicy(this.compilerInfo.getRecoveryPolicy());

        StructuredQName defaultInitialTemplate = this.compilerInfo.getDefaultInitialTemplate();

        if (defaultInitialTemplate != null) {
            try {
                controller.setInitialTemplate(defaultInitialTemplate);
            } catch (XPathException ignored) {
            }
        }

        StructuredQName defaultInitialMode = this.compilerInfo.getDefaultInitialMode();

        if (defaultInitialMode != null) {
            try {
                controller.setInitialMode(defaultInitialMode);
            } catch (XPathException ignored) {
            }
        }

        return new CrigttXsltTransformer(proc, controller, preparedStylesheet.getCompileTimeParams());
    }

    @Override
    public CrigttProcessor getProcessor() {
        return ((CrigttProcessor) super.getProcessor());
    }
}
