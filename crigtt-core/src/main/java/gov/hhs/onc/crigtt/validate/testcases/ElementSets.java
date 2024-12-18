
package gov.hhs.onc.crigtt.validate.testcases;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.testcases.impl.ElementSetsImpl;


/**
 * <p>Java class for ElementSets complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ElementSets"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="elementSet" type="{urn:gov.hhs.onc.crigtt:validate-testcases}ElementSet" maxOccurs="unbounded"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ElementSetsImpl.class)
})
public interface ElementSets extends DtoBean
{


    /**
     * Gets the value of the elementSets property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the elementSets property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getElementSets().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link ElementSet }
     * 
     * 
     */
    @JsonProperty
    List<ElementSet> getElementSets();

    boolean isSetElementSets();

    void unsetElementSets();

    void setElementSets(List<ElementSet> values);

}
