
package gov.hhs.onc.crigtt.validate.testcases;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.testcases.impl.MatchingConditionImpl;


/**
 * <p>Java class for MatchingCondition complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="MatchingCondition"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="matchingLevel" type="{urn:gov.hhs.onc.crigtt:validate-testcases}MatchingLevel" minOccurs="0"/&gt;
 *         &lt;element name="matchingRegexpElementType" type="{urn:gov.hhs.onc.crigtt:validate-testcases}MatchingRegexpElementType" minOccurs="0"/&gt;
 *         &lt;element name="matchLength" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(MatchingConditionImpl.class)
})
public interface MatchingCondition
    extends DtoBean
{


    /**
     * Gets the value of the matchingLevel property.
     * 
     * @return
     *     possible object is
     *     {@link MatchingLevel }
     *     
     */
    @JsonProperty
    MatchingLevel getMatchingLevel();

    /**
     * Sets the value of the matchingLevel property.
     * 
     * @param value
     *     allowed object is
     *     {@link MatchingLevel }
     *     
     */
    void setMatchingLevel(MatchingLevel value);

    boolean isSetMatchingLevel();

    /**
     * Gets the value of the matchingRegexpElementType property.
     * 
     * @return
     *     possible object is
     *     {@link MatchingRegexpElementType }
     *     
     */
    MatchingRegexpElementType getMatchingRegexpElementType();

    /**
     * Sets the value of the matchingRegexpElementType property.
     * 
     * @param value
     *     allowed object is
     *     {@link MatchingRegexpElementType }
     *     
     */
    void setMatchingRegexpElementType(MatchingRegexpElementType value);

    boolean isSetMatchingRegexpElementType();

    /**
     * Gets the value of the matchLength property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    @JsonProperty
    Integer getMatchLength();

    /**
     * Sets the value of the matchLength property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    void setMatchLength(Integer value);

    boolean isSetMatchLength();

}
