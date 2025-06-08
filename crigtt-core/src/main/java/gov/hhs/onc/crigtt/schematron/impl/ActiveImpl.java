package gov.hhs.onc.crigtt.schematron.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAnyAttribute;
import jakarta.xml.bind.annotation.XmlAnyElement;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlElementRef;
import jakarta.xml.bind.annotation.XmlElementRefs;
import jakarta.xml.bind.annotation.XmlIDREF;
import jakarta.xml.bind.annotation.XmlMixed;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlSchemaType;
import jakarta.xml.bind.annotation.XmlType;
import javax.xml.namespace.QName;
import gov.hhs.onc.crigtt.schematron.Active;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "content"
})
@XmlRootElement(name = "active")
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public class ActiveImpl implements Active {
    @XmlElementRefs({
        @XmlElementRef(name = "name", namespace = "http://purl.oclc.org/dsdl/schematron", type = Object.class, required = false)
    })
    @XmlMixed
    @XmlAnyElement(lax = true)
    protected List<Serializable> content;

    @XmlAttribute(name = "pattern")
    @XmlIDREF
    @XmlSchemaType(name = "IDREF")
    protected Object pattern;

    @XmlAnyAttribute
    private Map<QName, String> otherAttributes = new HashMap<>();

    /**
     * Default no-arg constructor
     * 
     */
    public ActiveImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ActiveImpl(final List<Serializable> content, final Object pattern, final Map<QName, String> otherAttributes) {
        this.content = content;
        this.pattern = pattern;
        this.otherAttributes = otherAttributes;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<Serializable> getContent() {
        if (content == null) {
            content = new ArrayList<>();
        }
        return this.content;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetContent() {
        return ((this.content!= null)&&(!this.content.isEmpty()));
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void unsetContent() {
        this.content = null;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Object getPattern() {
        return pattern;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setPattern(Object value) {
        this.pattern = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Map<QName, String> getOtherAttributes() {
        return otherAttributes;
    }

    public void setContent(List<Serializable> value) {
        this.content = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetPattern() {
        return this.pattern != null;
    }
}
