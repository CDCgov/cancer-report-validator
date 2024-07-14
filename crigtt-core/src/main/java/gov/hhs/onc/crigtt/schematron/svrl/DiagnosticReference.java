
package gov.hhs.onc.crigtt.schematron.svrl;

import gov.hhs.onc.crigtt.beans.DtoBean;


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
 *         &lt;element ref="{http://purl.oclc.org/dsdl/svrl}text"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attribute name="diagnostic" use="required" type="{http://www.w3.org/2001/XMLSchema}NMTOKEN" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
public interface DiagnosticReference
    extends DtoBean
{


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
     * Gets the value of the diagnostic property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getDiagnostic();

    /**
     * Sets the value of the diagnostic property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setDiagnostic(String value);

    boolean isSetDiagnostic();

}
