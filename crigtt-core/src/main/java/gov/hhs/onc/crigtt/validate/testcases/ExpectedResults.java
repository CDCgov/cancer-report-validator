
package gov.hhs.onc.crigtt.validate.testcases;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.testcases.impl.ExpectedResultsImpl;


/**
 * <p>Java class for ExpectedResults complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ExpectedResults"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="includeNullFlavors" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="expectedResult" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ExpectedResultsImpl.class)
})
public interface ExpectedResults extends DtoBean
{


    /**
     * Gets the value of the includeNullFlavors property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getIncludeNullFlavors();

    /**
     * Sets the value of the includeNullFlavors property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setIncludeNullFlavors(Boolean value);

    boolean isSetIncludeNullFlavors();

    /**
     * Gets the value of the expectedResults property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the expectedResults property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getExpectedResults().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    @JsonProperty
    List<String> getExpectedResults();

    boolean isSetExpectedResults();

    void unsetExpectedResults();

    void setExpectedResults(List<String> values);

}
