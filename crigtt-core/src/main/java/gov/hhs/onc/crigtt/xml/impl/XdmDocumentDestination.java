package gov.hhs.onc.crigtt.xml.impl;

import net.sf.saxon.om.DocumentInfo;
import net.sf.saxon.s9api.XdmDestination;

public class XdmDocumentDestination extends XdmDestination {
    @Override
    public XdmDocument getXdmNode() {
        return new XdmDocument(((DocumentInfo) super.getXdmNode().getUnderlyingNode()));
    }
}
