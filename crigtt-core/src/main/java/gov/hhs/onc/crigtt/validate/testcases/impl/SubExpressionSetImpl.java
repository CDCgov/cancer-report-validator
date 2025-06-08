package gov.hhs.onc.crigtt.validate.testcases.impl;

import gov.hhs.onc.crigtt.validate.testcases.CustomEvalExpression;
import gov.hhs.onc.crigtt.validate.testcases.ExpectedResults;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "sub-expression-set", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI, propOrder = {
    "xpathExpression", "description", "subExpression", "matchingCondition", 
    "expectedResults", "customEvalExpression"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public class SubExpressionSetImpl implements SubExpressionSet {
    @XmlElement(name = "xpath-expression", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI, required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String xpathExpression;
    
    @XmlElement(namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
    protected String description;
    
    @XmlElement(name = "sub-expression", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String subExpression;
    
    @XmlElement(name = "matching-condition", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected MatchingCondition matchingCondition;
    
    @XmlElement(name = "expected-results", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
    protected ExpectedResults expectedResults;
    
    @XmlElement(name = "custom-eval-expression", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
    protected CustomEvalExpression customEvalExpression;
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getXPathExpression() {
        return xpathExpression;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setXPathExpression(String value) {
        this.xpathExpression = value;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getDescription() {
        return description;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setDescription(String value) {
        this.description = value;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetDescription() {
        return (this.description != null);
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getSubExpression() {
        return subExpression;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setSubExpression(String value) {
        this.subExpression = value;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetSubExpression() {
        return (this.subExpression != null);
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public MatchingCondition getMatchingCondition() {
        return matchingCondition;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setMatchingCondition(MatchingCondition value) {
        this.matchingCondition = value;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetMatchingCondition() {
        return (this.matchingCondition != null);
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public ExpectedResults getExpectedResults() {
        return expectedResults;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setExpectedResults(ExpectedResults value) {
        this.expectedResults = value;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetExpectedResults() {
        return (this.expectedResults != null);
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public CustomEvalExpression getCustomEvalExpression() {
        return customEvalExpression;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCustomEvalExpression(CustomEvalExpression value) {
        this.customEvalExpression = value;
    }
    
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCustomEvalExpression() {
        return (this.customEvalExpression != null);
    }
}
