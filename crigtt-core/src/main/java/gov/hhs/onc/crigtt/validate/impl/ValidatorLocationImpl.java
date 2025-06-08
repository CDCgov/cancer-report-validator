package gov.hhs.onc.crigtt.validate.impl;

import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Location", propOrder = {
    "nodeExpression",
    "lineNumber",
    "columnNumber"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("validatorLocation")
public class ValidatorLocationImpl implements ValidatorLocation {

    @XmlElement(required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String nodeExpression;

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected int lineNumber;

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected int columnNumber;

    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ValidatorLocationImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ValidatorLocationImpl(final String nodeExpression, final int lineNumber, final int columnNumber) {
        this.nodeExpression = nodeExpression;
        this.lineNumber = lineNumber;
        this.columnNumber = columnNumber;
    }

    @Override
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getNodeExpression() {
        return nodeExpression;
    }

    @Override
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setNodeExpression(String value) {
        this.nodeExpression = value;
    }

    @Override
    public boolean isSetNodeExpression() {
        return this.nodeExpression != null;
    }

    @Override
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public int getLineNumber() {
        return lineNumber;
    }

    @Override
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setLineNumber(int value) {
        this.lineNumber = value;
    }

    @Override
    public boolean isSetLineNumber() {
        return true;
    }

    @Override
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public int getColumnNumber() {
        return columnNumber;
    }

    @Override
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setColumnNumber(int value) {
        this.columnNumber = value;
    }

    @Override
    public boolean isSetColumnNumber() {
        return true;
    }
}
