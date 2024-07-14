
package gov.hhs.onc.crigtt.validate.vocab;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.vocab.impl.VocabSetImpl;


/**
 * <p>Java class for VocabSet complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="VocabSet"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="groupingValueSet" type="{urn:gov.hhs.onc.crigtt:validate-vocab}ValueSet" minOccurs="0"/&gt;
 *         &lt;element name="valueSet" type="{urn:gov.hhs.onc.crigtt:validate-vocab}ValueSet" minOccurs="0"/&gt;
 *         &lt;element name="codeSystem" type="{urn:gov.hhs.onc.crigtt:validate-vocab}CodeSystem" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(VocabSetImpl.class)
})
public interface VocabSet
    extends DtoBean
{


    /**
     * Gets the value of the groupingValueSet property.
     * 
     * @return
     *     possible object is
     *     {@link ValueSet }
     *     
     */
    @JsonProperty
    ValueSet getGroupingValueSet();

    /**
     * Sets the value of the groupingValueSet property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValueSet }
     *     
     */
    void setGroupingValueSet(ValueSet value);

    boolean isSetGroupingValueSet();

    /**
     * Gets the value of the valueSet property.
     * 
     * @return
     *     possible object is
     *     {@link ValueSet }
     *     
     */
    @JsonProperty
    ValueSet getValueSet();

    /**
     * Sets the value of the valueSet property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValueSet }
     *     
     */
    void setValueSet(ValueSet value);

    boolean isSetValueSet();

    /**
     * Gets the value of the codeSystem property.
     * 
     * @return
     *     possible object is
     *     {@link CodeSystem }
     *     
     */
    @JsonProperty
    CodeSystem getCodeSystem();

    /**
     * Sets the value of the codeSystem property.
     * 
     * @param value
     *     allowed object is
     *     {@link CodeSystem }
     *     
     */
    void setCodeSystem(CodeSystem value);

    boolean isSetCodeSystem();

}
