package gov.hhs.onc.crigtt.logging.impl;

import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import net.sf.saxon.Configuration;
import net.sf.saxon.lib.StandardErrorListener;
import net.sf.saxon.trans.SaxonErrorCode;
import net.sf.saxon.trans.XPathException;
import org.codehaus.stax2.XMLReporter2;
import org.codehaus.stax2.validation.XMLValidationProblem;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXParseException;

@Component("errorListenerCrigtt")
public class CrigttErrorListener extends StandardErrorListener implements ErrorHandler, InitializingBean, XMLReporter2 {
    @Resource(name = "loggerCrigtt")
    private CrigttLogger logger;

    @Override
    public void report(String msg, String errorType, @Nullable Object relatedInfo, @Nullable Location loc) throws XMLStreamException {
        if (relatedInfo instanceof XMLValidationProblem) {
            this.report(((XMLValidationProblem) relatedInfo));
        } else if (relatedInfo instanceof SAXParseException) {
            this.error(((SAXParseException) relatedInfo));
        } else {
            // noinspection ConstantConditions
            XPathException xpathCause =
                new XPathException(msg, new CrigttLocation(loc), ((relatedInfo instanceof Throwable) ? ((Throwable) relatedInfo) : null));
            xpathCause.setErrorCode(SaxonErrorCode.SXXP0003);

            this.error(xpathCause);
        }
    }

    @Override
    public void report(XMLValidationProblem cause) throws XMLStreamException {
        XPathException xpathCause = new XPathException(cause.getMessage(), new CrigttLocation(cause.getLocation()));
        xpathCause.setErrorCode(SaxonErrorCode.SXXP0003);

        switch (cause.getSeverity()) {
            case XMLValidationProblem.SEVERITY_FATAL:
                this.fatalError(xpathCause);
                break;

            case XMLValidationProblem.SEVERITY_WARNING:
                this.warning(xpathCause);
                break;

            default:
                this.error(xpathCause);
                break;
        }
    }

    @Override
    public void fatalError(SAXParseException cause) {
        this.fatalError(new XPathException(cause.getMessage(), new CrigttLocation(cause), cause.getCause()));
    }

    @Override
    public void error(SAXParseException cause) {
        this.error(new XPathException(cause.getMessage(), new CrigttLocation(cause), cause.getCause()));
    }

    @Override
    public void warning(SAXParseException cause) {
        this.warning(new XPathException(cause.getMessage(), new CrigttLocation(cause), cause.getCause()));
    }

    @Override
    public CrigttErrorListener makeAnother(int hostLang) {
        return this;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.setLogger(this.logger);
        this.setMaximumNumberOfWarnings(Integer.MAX_VALUE);
        this.setRecoveryPolicy(Configuration.DO_NOT_RECOVER);
    }
}
