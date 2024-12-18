
package gov.hhs.onc.crigtt.validate.testcases;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.testcases.impl.ElementSetImpl;


/**
 * <p>Java class for ElementSet complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ElementSet"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="optional" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="subExpressionPrefix" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="subExpressionSet" type="{urn:gov.hhs.onc.crigtt:validate-testcases}SubExpressionSet" maxOccurs="unbounded"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ElementSetImpl.class)
})
public interface ElementSet
    extends DtoBean
{


    /**
     * Gets the value of the optional property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getOptional();

    /**
     * Sets the value of the optional property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setOptional(Boolean value);

    boolean isSetOptional();

    /**
     * Gets the value of the subExpressionPrefix property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getSubExpressionPrefix();

    /**
     * Sets the value of the subExpressionPrefix property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setSubExpressionPrefix(String value);

    boolean isSetSubExpressionPrefix();

    /**
     * Gets the value of the subExpressionSets property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the subExpressionSets property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getSubExpressionSets().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link SubExpressionSet }
     * 
     * 
     */
    @JsonProperty
    List<SubExpressionSet> getSubExpressionSets();

    boolean isSetSubExpressionSets();

    void unsetSubExpressionSets();

    void setSubExpressionSets(List<SubExpressionSet> values);

}
