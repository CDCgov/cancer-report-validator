
package gov.hhs.onc.crigtt.schematron;

import java.util.List;
import java.util.Map;
import javax.xml.namespace.QName;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import org.w3c.dom.Element;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;choice maxOccurs="unbounded" minOccurs="0"&gt;
 *         &lt;group ref="{http://purl.oclc.org/dsdl/schematron}foreign"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}include"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}title"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}ns"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}p"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}let"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}phase"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}pattern"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}diagnostics"/&gt;
 *       &lt;/choice&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}rich"/&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}foreign"/&gt;
 *       &lt;attribute name="id" type="{http://www.w3.org/2001/XMLSchema}ID" /&gt;
 *       &lt;attribute name="schemaVersion" type="{http://purl.oclc.org/dsdl/schematron}non-empty-string" /&gt;
 *       &lt;attribute name="defaultPhase" type="{http://www.w3.org/2001/XMLSchema}IDREF" /&gt;
 *       &lt;attribute name="queryBinding" type="{http://purl.oclc.org/dsdl/schematron}non-empty-string" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
public interface Schema
    extends DtoBean, IdentifiedBean
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
     * {@link Element }
     * {@link Let }
     * {@link Title }
     * {@link Paragraph }
     * {@link Phase }
     * {@link Include }
     * {@link Diagnostics }
     * {@link Namespace }
     * {@link Pattern }
     * 
     * 
     */
    List<Object> getContent();

    boolean isSetContent();

    void unsetContent();

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

    /**
     * Gets the value of the defaultPhase property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    Object getDefaultPhase();

    /**
     * Sets the value of the defaultPhase property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    void setDefaultPhase(Object value);

    boolean isSetDefaultPhase();

    /**
     * Gets the value of the queryBinding property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getQueryBinding();

    /**
     * Sets the value of the queryBinding property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setQueryBinding(String value);

    boolean isSetQueryBinding();

    /**
     * Gets the value of the icon property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getIcon();

    /**
     * Sets the value of the icon property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setIcon(String value);

    boolean isSetIcon();

    /**
     * Gets the value of the see property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getSee();

    /**
     * Sets the value of the see property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setSee(String value);

    boolean isSetSee();

    /**
     * Gets the value of the fpi property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getFpi();

    /**
     * Sets the value of the fpi property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setFpi(String value);

    boolean isSetFpi();

    Map<QName, String> getOtherAttributes();

    void setContent(List<Object> values);

}
