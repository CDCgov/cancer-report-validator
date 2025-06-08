package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.beans.DtoBean;
import java.util.List;


/**
 * <p>Java class for Response complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Response"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="error" type="{urn:gov.hhs.onc.crigtt:validate}Error" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
public interface ValidatorResponse
    extends DtoBean
{

    /**
     * Gets the list of validator errors
     * @return List of validator errors
     */
    List<ValidatorError> getErrors();

    /**
     * Sets the list of validator errors
     * @param errors List of validator errors
     */
    void setErrors(List<ValidatorError> errors);
}
