package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.config.impl.CrigttConfiguration;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.io.File;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.s9api.DocumentBuilder;
import net.sf.saxon.s9api.SaxonApiException;

public class CrigttDocumentBuilder extends DocumentBuilder {
    public CrigttDocumentBuilder(CrigttConfiguration config) {
        super(config);
    }

    @Override
    public XdmDocument build(File srcFile) throws SaxonApiException {
        return this.build(new StreamSource(srcFile));
    }

    @Override
    public XdmDocument build(Source src) throws SaxonApiException {
        return new XdmDocument(((DocumentInfo) super.build(src).getUnderlyingNode()), src.getSystemId());
    }
}
