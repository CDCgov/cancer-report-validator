package gov.hhs.onc.crigtt.validate.testcases.impl;

import gov.hhs.onc.crigtt.validate.testcases.ElementSet;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import java.util.ArrayList;
import java.util.List;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "element-set", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI, propOrder = {
    "element", "subExpressions", "optional", "subExpressionPrefix"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public class ElementSetImpl implements ElementSet {
    @XmlElement(namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI, required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String element;

    @XmlElement(name = "sub-expressions", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
    protected List<SubExpressionSet> subExpressions;

    @XmlElement(namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
    protected Boolean optional;

    @XmlElement(name = "sub-expression-prefix", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String subExpressionPrefix;

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getElement() {
        return element;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setElement(String value) {
        this.element = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<SubExpressionSet> getSubExpressionSets() {
        if (subExpressions == null) {
            subExpressions = new ArrayList<>();
        }
        return this.subExpressions;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setSubExpressionSets(List<SubExpressionSet> value) {
        this.subExpressions = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getOptional() {
        return optional;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setOptional(Boolean value) {
        this.optional = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetOptional() {
        return (this.optional != null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getSubExpressionPrefix() {
        return subExpressionPrefix;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setSubExpressionPrefix(String value) {
        this.subExpressionPrefix = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetSubExpressionPrefix() {
        return (this.subExpressionPrefix != null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetSubExpressionSets() {
        return ((this.subExpressions != null) && (!this.subExpressions.isEmpty()));
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void unsetSubExpressionSets() {
        this.subExpressions = null;
    }
}
