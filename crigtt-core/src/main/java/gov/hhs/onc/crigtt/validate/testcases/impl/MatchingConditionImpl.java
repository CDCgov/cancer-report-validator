
package gov.hhs.onc.crigtt.validate.testcases.impl;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.MatchingLevel;
import gov.hhs.onc.crigtt.validate.testcases.MatchingRegexpElementType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "MatchingCondition", propOrder = {
    "matchingLevel",
    "matchingRegexpElementType",
    "matchLength"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("matchingCondition")
public class MatchingConditionImpl implements MatchingCondition
{

    @XmlElement(defaultValue = "EQUALS")
    @XmlSchemaType(name = "string")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected MatchingLevel matchingLevel = MatchingLevel.EQUALS;
    @XmlSchemaType(name = "string")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected MatchingRegexpElementType matchingRegexpElementType;
    @XmlElement(defaultValue = "8")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Integer matchLength = 8;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public MatchingConditionImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public MatchingConditionImpl(final MatchingLevel matchingLevel, final MatchingRegexpElementType matchingRegexpElementType, final Integer matchLength) {
        this.matchingLevel = matchingLevel;
        this.matchingRegexpElementType = matchingRegexpElementType;
        this.matchLength = matchLength;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public MatchingLevel getMatchingLevel() {
        return matchingLevel;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setMatchingLevel(MatchingLevel value) {
        this.matchingLevel = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetMatchingLevel() {
        return (this.matchingLevel!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public MatchingRegexpElementType getMatchingRegexpElementType() {
        return matchingRegexpElementType;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setMatchingRegexpElementType(MatchingRegexpElementType value) {
        this.matchingRegexpElementType = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetMatchingRegexpElementType() {
        return (this.matchingRegexpElementType!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Integer getMatchLength() {
        return matchLength;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setMatchLength(Integer value) {
        this.matchLength = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetMatchLength() {
        return (this.matchLength!= null);
    }

}
