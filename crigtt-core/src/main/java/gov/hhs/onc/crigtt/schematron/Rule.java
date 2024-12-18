
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
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}let"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}assert"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}report"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}extends"/&gt;
 *       &lt;/choice&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}foreign"/&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}linkable"/&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}rich"/&gt;
 *       &lt;attribute name="flag" type="{http://purl.oclc.org/dsdl/schematron}flagValue" /&gt;
 *       &lt;attribute name="abstract" type="{http://www.w3.org/2001/XMLSchema}boolean" /&gt;
 *       &lt;attribute name="id" type="{http://www.w3.org/2001/XMLSchema}ID" /&gt;
 *       &lt;attribute name="context" type="{http://purl.oclc.org/dsdl/schematron}pathValue" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
public interface Rule extends DtoBean, IdentifiedBean
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
     * {@link Include }
     * {@link Assertion }
     * {@link Report }
     * {@link Element }
     * {@link Let }
     * {@link Extension }
     * 
     * 
     */
    List<Object> getContent();

    boolean isSetContent();

    void unsetContent();

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

    /**
     * Gets the value of the abstract property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    boolean getAbstract();

    /**
     * Sets the value of the abstract property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setAbstract(boolean value);

    boolean isSetAbstract();

    void unsetAbstract();

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
     * Gets the value of the context property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getContext();

    /**
     * Sets the value of the context property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setContext(String value);

    boolean isSetContext();

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
     * Gets the value of the subject property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getSubject();

    /**
     * Sets the value of the subject property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setSubject(String value);

    boolean isSetSubject();

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
