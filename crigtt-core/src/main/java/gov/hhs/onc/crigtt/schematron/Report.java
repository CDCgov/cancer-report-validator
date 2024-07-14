
package gov.hhs.onc.crigtt.schematron;

import java.io.Serializable;
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
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}name"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}value-of"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}emph"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}dir"/&gt;
 *         &lt;element ref="{http://purl.oclc.org/dsdl/schematron}span"/&gt;
 *       &lt;/choice&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}linkable"/&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}foreign"/&gt;
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}rich"/&gt;
 *       &lt;attribute name="test" use="required" type="{http://purl.oclc.org/dsdl/schematron}exprValue" /&gt;
 *       &lt;attribute name="flag" type="{http://purl.oclc.org/dsdl/schematron}flagValue" /&gt;
 *       &lt;attribute name="id" type="{http://www.w3.org/2001/XMLSchema}ID" /&gt;
 *       &lt;attribute name="diagnostics" type="{http://www.w3.org/2001/XMLSchema}IDREFS" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
public interface Report extends DtoBean, IdentifiedBean
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
     * {@link String }
     * {@link Emphasis }
     * {@link Name }
     * {@link ValueOf }
     * {@link Direction }
     * {@link Span }
     * 
     * 
     */
    List<Serializable> getContent();

    boolean isSetContent();

    void unsetContent();

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
     * Gets the value of the diagnostics property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the diagnostics property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getDiagnostics().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Object }
     * 
     * 
     */
    List<Object> getDiagnostics();

    boolean isSetDiagnostics();

    void unsetDiagnostics();

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

    void setDiagnostics(List<Object> values);

    void setContent(List<Serializable> values);

}
