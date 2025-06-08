package gov.hhs.onc.crigtt.schematron.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElementRef;
import jakarta.xml.bind.annotation.XmlMixed;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;
import gov.hhs.onc.crigtt.schematron.Title;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "content"
})
@XmlRootElement(name = "title")
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public class TitleImpl implements Title
{

    @XmlElementRef(name = "dir", namespace = "http://purl.oclc.org/dsdl/schematron", type = DirectionImpl.class, required = false)
    @XmlMixed
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected List<Serializable> content;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public TitleImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public TitleImpl(final List<Serializable> content) {
        this.content = content;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<Serializable> getContent() {
        if (content == null) {
            content = new ArrayList<Serializable>();
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

    public void setContent(List<Serializable> value) {
        this.content = value;
    }

}
