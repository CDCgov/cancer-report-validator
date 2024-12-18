
package gov.hhs.onc.crigtt.validate.testcases.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.testcases.ElementSet;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ElementSet", propOrder = {
    "optional",
    "subExpressionPrefix",
    "subExpressionSets"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("elementSet")
public class ElementSetImpl implements ElementSet
{

    @XmlElement(defaultValue = "false")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean optional = false;
    @XmlElement(defaultValue = "")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String subExpressionPrefix = "";
    @XmlElement(name = "subExpressionSet", required = true, type = SubExpressionSetImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected List<SubExpressionSet> subExpressionSets;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ElementSetImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ElementSetImpl(final Boolean optional, final String subExpressionPrefix, final List<SubExpressionSet> subExpressionSets) {
        this.optional = optional;
        this.subExpressionPrefix = subExpressionPrefix;
        this.subExpressionSets = subExpressionSets;
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
        return (this.optional!= null);
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
        return (this.subExpressionPrefix!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<SubExpressionSet> getSubExpressionSets() {
        if (subExpressionSets == null) {
            subExpressionSets = new ArrayList<SubExpressionSet>();
        }
        return this.subExpressionSets;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetSubExpressionSets() {
        return ((this.subExpressionSets!= null)&&(!this.subExpressionSets.isEmpty()));
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void unsetSubExpressionSets() {
        this.subExpressionSets = null;
    }

    public void setSubExpressionSets(List<SubExpressionSet> value) {
        this.subExpressionSets = value;
    }

}
