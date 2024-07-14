
package gov.hhs.onc.crigtt.validate.vocab;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.vocab.impl.VocabAssertionsImpl;


/**
 * <p>Java class for VocabAssertions complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="VocabAssertions"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="vocabAssertion" type="{urn:gov.hhs.onc.crigtt:validate-vocab}VocabAssertion" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(VocabAssertionsImpl.class)
})
public interface VocabAssertions extends DtoBean
{


    /**
     * Gets the value of the assertions property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the assertions property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAssertions().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link VocabAssertion }
     * 
     * 
     */
    @JsonProperty
    List<VocabAssertion> getAssertions();

    boolean isSetAssertions();

    void unsetAssertions();

    void setAssertions(List<VocabAssertion> values);

}
