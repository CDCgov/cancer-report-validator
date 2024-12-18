
package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventTotalsImpl;


/**
 * <p>Java class for EventTotals complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="EventTotals"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="all" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="info" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="warn" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="error" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="mismatch" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ValidatorEventTotalsImpl.class)
})
public interface ValidatorEventTotals
    extends DtoBean
{


    /**
     * Gets the value of the all property.
     * 
     */
    @JsonProperty
    int getAll();

    /**
     * Sets the value of the all property.
     * 
     */
    void setAll(int value);

    boolean isSetAll();

    /**
     * Gets the value of the info property.
     * 
     */
    @JsonProperty
    int getInfo();

    /**
     * Sets the value of the info property.
     * 
     */
    void setInfo(int value);

    boolean isSetInfo();

    /**
     * Gets the value of the warn property.
     * 
     */
    @JsonProperty
    int getWarn();

    /**
     * Sets the value of the warn property.
     * 
     */
    void setWarn(int value);

    boolean isSetWarn();

    /**
     * Gets the value of the error property.
     * 
     */
    @JsonProperty
    int getError();

    /**
     * Sets the value of the error property.
     * 
     */
    void setError(int value);

    boolean isSetError();

    /**
     * Gets the value of the mismatch property.
     * 
     */
    @JsonProperty
    int getMismatch();

    /**
     * Sets the value of the mismatch property.
     * 
     */
    void setMismatch(int value);

    boolean isSetMismatch();

}
