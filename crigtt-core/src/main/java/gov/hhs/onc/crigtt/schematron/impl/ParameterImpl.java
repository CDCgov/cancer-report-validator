
package gov.hhs.onc.crigtt.schematron.impl;

import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import gov.hhs.onc.crigtt.schematron.Parameter;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "")
@XmlRootElement(name = "param")
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public class ParameterImpl implements Parameter
{

    @XmlAttribute(name = "name", required = true)
    @XmlJavaTypeAdapter(jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String name;
    @XmlAttribute(name = "value", required = true)
    @XmlJavaTypeAdapter(jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String value;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ParameterImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ParameterImpl(final String name, final String value) {
        this.name = name;
        this.value = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getName() {
        return name;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setName(String value) {
        this.name = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetName() {
        return (this.name!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getValue() {
        return value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setValue(String value) {
        this.value = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetValue() {
        return (this.value!= null);
    }

}
