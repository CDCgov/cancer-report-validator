
package gov.hhs.onc.crigtt.schematron;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.xml.namespace.QName;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import org.w3c.dom.Element;


/**
 * <p>Java class for p element declaration.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;element name="p"&gt;
 *   &lt;complexType&gt;
 *     &lt;complexContent&gt;
 *       &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *         &lt;choice maxOccurs="unbounded" minOccurs="0"&gt;
 *           &lt;group ref="{http://purl.oclc.org/dsdl/schematron}foreign"/&gt;
 *           &lt;element ref="{http://purl.oclc.org/dsdl/schematron}dir"/&gt;
 *           &lt;element ref="{http://purl.oclc.org/dsdl/schematron}emph"/&gt;
 *           &lt;element ref="{http://purl.oclc.org/dsdl/schematron}span"/&gt;
 *         &lt;/choice&gt;
 *         &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}foreign"/&gt;
 *         &lt;attribute name="id" type="{http://www.w3.org/2001/XMLSchema}ID" /&gt;
 *         &lt;attribute name="class" type="{http://purl.oclc.org/dsdl/schematron}classValue" /&gt;
 *         &lt;attribute name="icon" type="{http://purl.oclc.org/dsdl/schematron}uriValue" /&gt;
 *       &lt;/restriction&gt;
 *     &lt;/complexContent&gt;
 *   &lt;/complexType&gt;
 * &lt;/element&gt;
 * </pre>
 * 
 * 
 */
public interface Paragraph extends DtoBean, IdentifiedBean
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
     * {@link Direction }
     * {@link Span }
     * {@link Emphasis }
     * 
     * 
     */
    List<Serializable> getContent();

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
     * Gets the value of the clazz property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getClazz();

    /**
     * Sets the value of the clazz property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setClazz(String value);

    boolean isSetClazz();

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

    Map<QName, String> getOtherAttributes();

    void setContent(List<Serializable> values);

}
