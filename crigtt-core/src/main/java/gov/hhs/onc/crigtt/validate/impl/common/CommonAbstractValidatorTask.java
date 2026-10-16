package gov.hhs.onc.crigtt.validate.impl.common;

import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import net.sf.saxon.s9api.XPathCompiler;
import net.sf.saxon.sxpath.IndependentContext;

import javax.xml.xpath.XPath;
import java.util.List;
import java.util.concurrent.Callable;

public abstract class CommonAbstractValidatorTask implements Callable<List<ValidatorEvent>> {
    protected XdmDocument doc;
    protected IndependentContext xpathContext;
    protected CrigttXpathCompiler xpathCompiler;

    protected CommonAbstractValidatorTask(XdmDocument doc, IndependentContext xpathContext, CrigttXpathCompiler xpathCompiler) {
        this.doc = doc;
        this.xpathContext = xpathContext;
        this.xpathCompiler = xpathCompiler;
    }
}
