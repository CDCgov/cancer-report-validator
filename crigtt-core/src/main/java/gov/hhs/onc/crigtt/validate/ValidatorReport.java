
package gov.hhs.onc.crigtt.validate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorReportImpl;


/**
 * <p>Java class for Report complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Report"&gt;
 *   &lt;complexContent&gt;
 *     &lt;extension base="{urn:gov.hhs.onc.crigtt:validate}Response"&gt;
 *       &lt;sequence&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt:validate}DtoElements"/&gt;
 *         &lt;element name="processedTimestamp" type="{urn:gov.hhs.onc.crigtt:validate}Timestamp"/&gt;
 *         &lt;element name="results" type="{urn:gov.hhs.onc.crigtt:validate}Results"/&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt:validate}DocumentElements"/&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt:validate}TestcaseElements"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/extension&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ValidatorReportImpl.class)
})
public interface ValidatorReport
    extends DtoBean, IdentifiedBean, ValidatorResponse
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
     * Gets the value of the processedTimestamp property.
     * 
     */
    @JsonProperty
    long getProcessedTimestamp();

    /**
     * Sets the value of the processedTimestamp property.
     * 
     */
    void setProcessedTimestamp(long value);

    boolean isSetProcessedTimestamp();

    /**
     * Gets the value of the results property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorResults }
     *     
     */
    @JsonProperty
    ValidatorResults getResults();

    /**
     * Sets the value of the results property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorResults }
     *     
     */
    void setResults(ValidatorResults value);

    boolean isSetResults();

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
