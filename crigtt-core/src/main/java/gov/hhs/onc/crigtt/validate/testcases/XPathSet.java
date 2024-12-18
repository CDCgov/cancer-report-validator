
package gov.hhs.onc.crigtt.validate.testcases;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.testcases.impl.XPathSetImpl;


/**
 * <p>Java class for XPathSet complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="XPathSet"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="xPathExpression" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="xPathResultComparison" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="elementNodeKindExpected" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="matchingCondition" type="{urn:gov.hhs.onc.crigtt:validate-testcases}MatchingCondition" minOccurs="0"/&gt;
 *         &lt;choice&gt;
 *           &lt;element name="expectedResults" type="{urn:gov.hhs.onc.crigtt:validate-testcases}ExpectedResults"/&gt;
 *           &lt;element name="elementSets" type="{urn:gov.hhs.onc.crigtt:validate-testcases}ElementSets"/&gt;
 *         &lt;/choice&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(XPathSetImpl.class)
})
public interface XPathSet
    extends DtoBean
{


    /**
     * Gets the value of the xPathExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getXPathExpression();

    /**
     * Sets the value of the xPathExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setXPathExpression(String value);

    boolean isSetXPathExpression();

    /**
     * Gets the value of the xPathResultComparison property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getXPathResultComparison();

    /**
     * Sets the value of the xPathResultComparison property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setXPathResultComparison(Boolean value);

    boolean isSetXPathResultComparison();

    /**
     * Gets the value of the elementNodeKindExpected property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getElementNodeKindExpected();

    /**
     * Sets the value of the elementNodeKindExpected property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setElementNodeKindExpected(Boolean value);

    boolean isSetElementNodeKindExpected();

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
     * Gets the value of the content property.
     * 
     * @return
     *     possible object is
     *     {@link ExpectedResults }
     *     {@link ElementSets }
     *     
     */
    Object getContent();

    /**
     * Sets the value of the content property.
     * 
     * @param value
     *     allowed object is
     *     {@link ExpectedResults }
     *     {@link ElementSets }
     *     
     */
    void setContent(Object value);

    boolean isSetContent();

}
