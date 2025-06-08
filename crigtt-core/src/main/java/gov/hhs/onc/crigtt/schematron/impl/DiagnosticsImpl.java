package gov.hhs.onc.crigtt.schematron.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAnyAttribute;
import jakarta.xml.bind.annotation.XmlAnyElement;
import jakarta.xml.bind.annotation.XmlElementRef;
import jakarta.xml.bind.annotation.XmlElementRefs;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;
import javax.xml.namespace.QName;
import gov.hhs.onc.crigtt.schematron.Diagnostics;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "content"
})
@XmlRootElement(name = "diagnostics")
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public class DiagnosticsImpl implements Diagnostics {

    @XmlElementRefs({
        @XmlElementRef(name = "diagnostic", namespace = "http://purl.oclc.org/dsdl/schematron", type = Object.class)
    })
    @XmlAnyElement(lax = true)
    protected List<Object> content;

    @XmlAnyAttribute
    private Map<QName, String> otherAttributes = new HashMap<>();

    /**
     * Default no-arg constructor
     * 
     */
    public DiagnosticsImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public DiagnosticsImpl(final List<Object> content, final Map<QName, String> otherAttributes) {
        this.content = content;
        this.otherAttributes = otherAttributes;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<Object> getContent() {
        if (content == null) {
            content = new ArrayList<>();
        }
        return this.content;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Map<QName, String> getOtherAttributes() {
        return otherAttributes;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setContent(List<Object> value) {
        this.content = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetContent() {
        return ((this.content != null) && (!this.content.isEmpty()));
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void unsetContent() {
        this.content = null;
    }
}
