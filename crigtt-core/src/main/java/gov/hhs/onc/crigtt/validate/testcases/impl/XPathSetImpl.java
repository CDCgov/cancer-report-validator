
package gov.hhs.onc.crigtt.validate.testcases.impl;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElements;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.XPathSet;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "XPathSet", propOrder = {
    "xPathExpression",
    "xPathResultComparison",
    "elementNodeKindExpected",
    "matchingCondition",
    "content"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("xPathSet")
public class XPathSetImpl implements XPathSet
{

    @XmlElement(required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String xPathExpression;
    @XmlElement(defaultValue = "false")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean xPathResultComparison = false;
    @XmlElement(defaultValue = "true")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean elementNodeKindExpected = true;
    @XmlElement(type = MatchingConditionImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected MatchingConditionImpl matchingCondition;
    @XmlElements({
        @XmlElement(name = "expectedResults", type = ExpectedResultsImpl.class),
        @XmlElement(name = "elementSets", type = ElementSetsImpl.class)
    })
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Object content;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public XPathSetImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public XPathSetImpl(final String xPathExpression, final Boolean xPathResultComparison, final Boolean elementNodeKindExpected, final MatchingConditionImpl matchingCondition, final Object content) {
        this.xPathExpression = xPathExpression;
        this.xPathResultComparison = xPathResultComparison;
        this.elementNodeKindExpected = elementNodeKindExpected;
        this.matchingCondition = matchingCondition;
        this.content = content;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getXPathExpression() {
        return xPathExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setXPathExpression(String value) {
        this.xPathExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetXPathExpression() {
        return (this.xPathExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getXPathResultComparison() {
        return xPathResultComparison;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setXPathResultComparison(Boolean value) {
        this.xPathResultComparison = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetXPathResultComparison() {
        return (this.xPathResultComparison!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getElementNodeKindExpected() {
        return elementNodeKindExpected;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setElementNodeKindExpected(Boolean value) {
        this.elementNodeKindExpected = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetElementNodeKindExpected() {
        return (this.elementNodeKindExpected!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public MatchingCondition getMatchingCondition() {
        return matchingCondition;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setMatchingCondition(MatchingCondition value) {
        this.matchingCondition = ((MatchingConditionImpl) value);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetMatchingCondition() {
        return (this.matchingCondition!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Object getContent() {
        return content;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setContent(Object value) {
        this.content = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetContent() {
        return (this.content!= null);
    }

}
