package gov.hhs.onc.crigtt.xml.impl;

import com.ctc.wstx.sax.WstxSAXParser;
import com.ctc.wstx.sax.WstxSAXParserFactory;

public class CrigttSaxParserFactory extends WstxSAXParserFactory {
    public CrigttSaxParserFactory(CrigttXmlInputFactory xmlInputFactory) {
        super(xmlInputFactory);
    }

    @Override
    public WstxSAXParser newSAXParser() {
        return ((WstxSAXParser) super.newSAXParser());
    }
}
