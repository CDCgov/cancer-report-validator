
package gov.hhs.onc.crigtt.validate.testcases.impl;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.testcases.CustomEvalExpression;
import gov.hhs.onc.crigtt.validate.testcases.ExpectedResults;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "SubExpressionSet", propOrder = {
    "subExpression",
    "customEvalExpression",
    "matchingCondition",
    "expectedResults"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("subExpressionSet")
public class SubExpressionSetImpl implements SubExpressionSet
{

    @XmlElement(required = true, defaultValue = "")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String subExpression = "";
    @XmlElement(type = CustomEvalExpressionImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected CustomEvalExpressionImpl customEvalExpression;
    @XmlElement(type = MatchingConditionImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected MatchingConditionImpl matchingCondition;
    @XmlElement(required = true, type = ExpectedResultsImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected ExpectedResultsImpl expectedResults;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public SubExpressionSetImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public SubExpressionSetImpl(final String subExpression, final CustomEvalExpressionImpl customEvalExpression, final MatchingConditionImpl matchingCondition, final ExpectedResultsImpl expectedResults) {
        this.subExpression = subExpression;
        this.customEvalExpression = customEvalExpression;
        this.matchingCondition = matchingCondition;
        this.expectedResults = expectedResults;
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
        return (this.subExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public CustomEvalExpression getCustomEvalExpression() {
        return customEvalExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCustomEvalExpression(CustomEvalExpression value) {
        this.customEvalExpression = ((CustomEvalExpressionImpl) value);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCustomEvalExpression() {
        return (this.customEvalExpression!= null);
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
    public ExpectedResults getExpectedResults() {
        return expectedResults;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setExpectedResults(ExpectedResults value) {
        this.expectedResults = ((ExpectedResultsImpl) value);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetExpectedResults() {
        return (this.expectedResults!= null);
    }

}
