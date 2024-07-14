
package gov.hhs.onc.crigtt.schematron.svrl;

import java.util.List;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/svrl}diagnostic-reference" maxOccurs="unbounded" minOccurs="0"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/svrl}text"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/svrl}attlist.assert-and-report"/&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
public interface SuccessfulReport extends DtoBean, IdentifiedBean
{


    /**
     * Gets the value of the diagnosticReference property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the diagnosticReference property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getDiagnosticReference().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link DiagnosticReference }
     * 
     * 
     */
    List<DiagnosticReference> getDiagnosticReference();

    boolean isSetDiagnosticReference();

    void unsetDiagnosticReference();

    /**
     * Gets the value of the text property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getText();

    /**
     * Sets the value of the text property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setText(String value);

    boolean isSetText();

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
     * Gets the value of the location property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getLocation();

    /**
     * Sets the value of the location property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setLocation(String value);

    boolean isSetLocation();

    /**
     * Gets the value of the test property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getTest();

    /**
     * Sets the value of the test property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setTest(String value);

    boolean isSetTest();

    /**
     * Gets the value of the role property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getRole();

    /**
     * Sets the value of the role property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setRole(String value);

    boolean isSetRole();

    /**
     * Gets the value of the flag property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getFlag();

    /**
     * Sets the value of the flag property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setFlag(String value);

    boolean isSetFlag();

    void setDiagnosticReference(List<DiagnosticReference> values);

}
