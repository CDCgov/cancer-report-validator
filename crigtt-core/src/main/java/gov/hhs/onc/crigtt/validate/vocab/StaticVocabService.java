//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate.vocab;

import gov.hhs.onc.crigtt.xml.impl.XdmDocument;

public interface StaticVocabService extends VocabService {
    XdmDocument getDocument();

    void setDocument(XdmDocument doc);
}
