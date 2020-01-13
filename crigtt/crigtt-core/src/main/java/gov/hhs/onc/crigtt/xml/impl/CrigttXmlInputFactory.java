package gov.hhs.onc.crigtt.xml.impl;

import com.ctc.wstx.stax.WstxInputFactory;
import java.util.Map;

public class CrigttXmlInputFactory extends WstxInputFactory {
    public void setProperties(Map<String, Object> props) {
        props.forEach(this::setProperty);
    }
}
