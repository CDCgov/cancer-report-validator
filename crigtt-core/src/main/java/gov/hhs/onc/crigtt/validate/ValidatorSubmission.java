
package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorSubmissionImpl;


/**
 * <p>Java class for Submission complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Submission"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt:validate}DtoElements"/&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt:validate}DocumentElements"/&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt:validate}TestcaseElements"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ValidatorSubmissionImpl.class)
})
public interface ValidatorSubmission
    extends DtoBean, IdentifiedBean
{


    /**
     * Gets the value of the id property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getId();

    /**
     * Sets the value of the id property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setId(String value);

    boolean isSetId();

    /**
     * Gets the value of the submittedTimestamp property.
     * 
     */
    @JsonProperty
    long getSubmittedTimestamp();

    /**
     * Sets the value of the submittedTimestamp property.
     * 
     */
    void setSubmittedTimestamp(long value);

    boolean isSetSubmittedTimestamp();

    /**
     * Gets the value of the document property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorDocument }
     *     
     */
    @JsonProperty
    ValidatorDocument getDocument();

    /**
     * Sets the value of the document property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorDocument }
     *     
     */
    void setDocument(ValidatorDocument value);

    boolean isSetDocument();

    /**
     * Gets the value of the testcaseId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getTestcaseId();

    /**
     * Sets the value of the testcaseId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setTestcaseId(String value);

    boolean isSetTestcaseId();

}
