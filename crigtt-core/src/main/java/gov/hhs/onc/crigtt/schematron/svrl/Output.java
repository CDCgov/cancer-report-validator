
package gov.hhs.onc.crigtt.schematron.svrl;

import java.util.List;
import javax.xml.bind.JAXBElement;
import gov.hhs.onc.crigtt.beans.DtoBean;


/**
 * <p>Java class for schematron-output element declaration.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;element name="schematron-output"&gt;
 *   &lt;complexType&gt;
 *     &lt;complexContent&gt;
 *       &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *         &lt;sequence&gt;
 *           &lt;element ref="{http://purl.oclc.org/dsdl/svrl}text" maxOccurs="unbounded" minOccurs="0"/&gt;
 *           &lt;element ref="{http://purl.oclc.org/dsdl/svrl}ns-prefix-in-attribute-values" maxOccurs="unbounded" minOccurs="0"/&gt;
 *           &lt;sequence maxOccurs="unbounded"&gt;
 *             &lt;element ref="{http://purl.oclc.org/dsdl/svrl}active-pattern"/&gt;
 *             &lt;sequence maxOccurs="unbounded"&gt;
 *               &lt;element ref="{http://purl.oclc.org/dsdl/svrl}fired-rule"/&gt;
 *               &lt;choice maxOccurs="unbounded" minOccurs="0"&gt;
 *                 &lt;element ref="{http://purl.oclc.org/dsdl/svrl}failed-assert"/&gt;
 *                 &lt;element ref="{http://purl.oclc.org/dsdl/svrl}successful-report"/&gt;
 *               &lt;/choice&gt;
 *             &lt;/sequence&gt;
 *           &lt;/sequence&gt;
 *         &lt;/sequence&gt;
 *         &lt;attribute name="title" type="{http://www.w3.org/2001/XMLSchema}anySimpleType" /&gt;
 *         &lt;attribute name="phase" type="{http://www.w3.org/2001/XMLSchema}NMTOKEN" /&gt;
 *         &lt;attribute name="schemaVersion" type="{http://www.w3.org/2001/XMLSchema}anySimpleType" /&gt;
 *       &lt;/restriction&gt;
 *     &lt;/complexContent&gt;
 *   &lt;/complexType&gt;
 * &lt;/element&gt;
 * </pre>
 * 
 * 
 */
public interface Output
    extends DtoBean
{


    /**
     * Gets the value of the content property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the content property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getContent().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link SuccessfulReport }
     * {@link ActivePattern }
     * {@link AttributeValueNamespace }
     * {@link FiredRule }
     * {@link FailedAssertion }
     * {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * 
     */
    List<Object> getContent();

    boolean isSetContent();

    void unsetContent();

    /**
     * Gets the value of the title property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getTitle();

    /**
     * Sets the value of the title property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setTitle(String value);

    boolean isSetTitle();

    /**
     * Gets the value of the phase property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getPhase();

    /**
     * Sets the value of the phase property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setPhase(String value);

    boolean isSetPhase();

    /**
     * Gets the value of the schemaVersion property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getSchemaVersion();

    /**
     * Sets the value of the schemaVersion property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setSchemaVersion(String value);

    boolean isSetSchemaVersion();

    void setContent(List<Object> values);

}
