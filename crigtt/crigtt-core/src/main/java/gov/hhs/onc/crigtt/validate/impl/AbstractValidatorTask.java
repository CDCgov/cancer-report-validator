package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.ValidatorTask;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.Map;
import javax.annotation.Resource;
import net.sf.saxon.sxpath.IndependentContext;

public abstract class AbstractValidatorTask implements ValidatorTask {
    @Resource(name = "xpathCompilerCrigtt")
    protected CrigttXpathCompiler xpathCompiler;

    protected XdmDocument doc;
    protected ByteArraySource docSrc;
    protected String docFileName;
    protected Map<String, String> docNamespaces;
    protected IndependentContext xpathContext;
    protected String testcaseId;

    protected AbstractValidatorTask(XdmDocument doc, ByteArraySource docSrc, String docFileName, Map<String, String> docNamespaces, String testcaseId) {
        this.doc = doc;
        this.docSrc = docSrc;
        this.docFileName = docFileName;
        this.docNamespaces = docNamespaces;
        this.testcaseId = testcaseId;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.xpathContext = new IndependentContext(this.xpathCompiler.getUnderlyingStaticContext());

        this.docNamespaces.forEach(this.xpathContext::declareNamespace);
    }
}
