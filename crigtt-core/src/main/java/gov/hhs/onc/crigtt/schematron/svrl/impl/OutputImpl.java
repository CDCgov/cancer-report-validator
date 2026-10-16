
package gov.hhs.onc.crigtt.schematron.svrl.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlElementRefs;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import gov.hhs.onc.crigtt.schematron.svrl.Output;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "content"
})
@XmlRootElement(name = "schematron-output")
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public class OutputImpl implements Output
{

    @XmlElementRefs({
        @XmlElementRef(name = "successful-report", namespace = "http://purl.oclc.org/dsdl/svrl", type = SuccessfulReportImpl.class),
        @XmlElementRef(name = "active-pattern", namespace = "http://purl.oclc.org/dsdl/svrl", type = ActivePatternImpl.class),
        @XmlElementRef(name = "ns-prefix-in-attribute-values", namespace = "http://purl.oclc.org/dsdl/svrl", type = AttributeValueNamespaceImpl.class),
        @XmlElementRef(name = "fired-rule", namespace = "http://purl.oclc.org/dsdl/svrl", type = FiredRuleImpl.class),
        @XmlElementRef(name = "text", namespace = "http://purl.oclc.org/dsdl/svrl", type = JAXBElement.class),
        @XmlElementRef(name = "failed-assert", namespace = "http://purl.oclc.org/dsdl/svrl", type = FailedAssertionImpl.class)
    })
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected List<Object> content;
    @XmlAttribute(name = "title")
    @XmlSchemaType(name = "anySimpleType")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String title;
    @XmlAttribute(name = "phase")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlSchemaType(name = "NMTOKEN")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String phase;
    @XmlAttribute(name = "schemaVersion")
    @XmlSchemaType(name = "anySimpleType")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String schemaVersion;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public OutputImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public OutputImpl(final List<Object> content, final String title, final String phase, final String schemaVersion) {
        this.content = content;
        this.title = title;
        this.phase = phase;
        this.schemaVersion = schemaVersion;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<Object> getContent() {
        if (content == null) {
            content = new ArrayList<Object>();
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
    public String getTitle() {
        return title;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setTitle(String value) {
        this.title = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetTitle() {
        return (this.title!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getPhase() {
        return phase;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setPhase(String value) {
        this.phase = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetPhase() {
        return (this.phase!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getSchemaVersion() {
        return schemaVersion;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setSchemaVersion(String value) {
        this.schemaVersion = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetSchemaVersion() {
        return (this.schemaVersion!= null);
    }

    public void setContent(List<Object> value) {
        this.content = value;
    }

}
