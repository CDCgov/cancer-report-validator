
package gov.hhs.onc.crigtt.validate.testcases;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.testcases.impl.SubExpressionSetImpl;


/**
 * <p>Java class for SubExpressionSet complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="SubExpressionSet"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="subExpression" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="customEvalExpression" type="{urn:gov.hhs.onc.crigtt:validate-testcases}CustomEvalExpression" minOccurs="0"/&gt;
 *         &lt;element name="matchingCondition" type="{urn:gov.hhs.onc.crigtt:validate-testcases}MatchingCondition" minOccurs="0"/&gt;
 *         &lt;element name="expectedResults" type="{urn:gov.hhs.onc.crigtt:validate-testcases}ExpectedResults"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(SubExpressionSetImpl.class)
})
public interface SubExpressionSet
    extends DtoBean
{


    /**
     * Gets the value of the subExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getSubExpression();

    /**
     * Sets the value of the subExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setSubExpression(String value);

    boolean isSetSubExpression();

    /**
     * Gets the value of the customEvalExpression property.
     * 
     * @return
     *     possible object is
     *     {@link CustomEvalExpression }
     *     
     */
    CustomEvalExpression getCustomEvalExpression();

    /**
     * Sets the value of the customEvalExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link CustomEvalExpression }
     *     
     */
    void setCustomEvalExpression(CustomEvalExpression value);

    boolean isSetCustomEvalExpression();

    /**
     * Gets the value of the matchingCondition property.
     * 
     * @return
     *     possible object is
     *     {@link MatchingCondition }
     *     
     */
    @JsonProperty
    MatchingCondition getMatchingCondition();

    /**
     * Sets the value of the matchingCondition property.
     * 
     * @param value
     *     allowed object is
     *     {@link MatchingCondition }
     *     
     */
    void setMatchingCondition(MatchingCondition value);

    boolean isSetMatchingCondition();

    /**
     * Gets the value of the expectedResults property.
     * 
     * @return
     *     possible object is
     *     {@link ExpectedResults }
     *     
     */
    @JsonProperty
    ExpectedResults getExpectedResults();

    /**
     * Sets the value of the expectedResults property.
     * 
     * @param value
     *     allowed object is
     *     {@link ExpectedResults }
     *     
     */
    void setExpectedResults(ExpectedResults value);

    boolean isSetExpectedResults();

}
