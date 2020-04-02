package gov.hhs.onc.crigtt.validate.vocab;

import gov.hhs.onc.crigtt.xml.impl.XdmDocument;

public interface StaticVocabService extends VocabService {
    public XdmDocument getDocument();

    public void setDocument(XdmDocument doc);
}
