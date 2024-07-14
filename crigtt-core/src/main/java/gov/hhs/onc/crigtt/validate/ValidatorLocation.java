
package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorLocationImpl;


/**
 * <p>Java class for Location complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Location"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="nodeExpression" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="lineNumber" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="columnNumber" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ValidatorLocationImpl.class)
})
public interface ValidatorLocation
    extends DtoBean
{


    /**
     * Gets the value of the nodeExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getNodeExpression();

    /**
     * Sets the value of the nodeExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setNodeExpression(String value);

    boolean isSetNodeExpression();

    /**
     * Gets the value of the lineNumber property.
     * 
     */
    @JsonProperty
    int getLineNumber();

    /**
     * Sets the value of the lineNumber property.
     * 
     */
    void setLineNumber(int value);

    boolean isSetLineNumber();

    /**
     * Gets the value of the columnNumber property.
     * 
     */
    @JsonProperty
    int getColumnNumber();

    /**
     * Sets the value of the columnNumber property.
     * 
     */
    void setColumnNumber(int value);

    boolean isSetColumnNumber();

}
