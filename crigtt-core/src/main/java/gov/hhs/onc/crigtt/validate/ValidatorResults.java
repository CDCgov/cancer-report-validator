
package gov.hhs.onc.crigtt.validate;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResultsImpl;


/**
 * <p>Java class for Results complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Results"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt:validate}StatusElements"/&gt;
 *         &lt;element name="eventTotals" type="{urn:gov.hhs.onc.crigtt:validate}EventTotals"/&gt;
 *         &lt;element name="events" type="{urn:gov.hhs.onc.crigtt:validate}Events"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ValidatorResultsImpl.class)
})
public interface ValidatorResults
    extends DtoBean
{


    /**
     * Gets the value of the status property.
     * 
     */
    @JsonProperty
    boolean getStatus();

    /**
     * Sets the value of the status property.
     * 
     */
    void setStatus(boolean value);

    boolean isSetStatus();

    /**
     * Gets the value of the eventTotals property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorEventTotals }
     *     
     */
    @JsonProperty
    ValidatorEventTotals getEventTotals();

    /**
     * Sets the value of the eventTotals property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorEventTotals }
     *     
     */
    void setEventTotals(ValidatorEventTotals value);

    boolean isSetEventTotals();

    boolean isSetEvents();

    @JsonProperty
    public List<ValidatorEvent> getEvents();

    public void setEvents(List<ValidatorEvent> events);

}
