
package gov.hhs.onc.crigtt.schematron;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.xml.namespace.QName;
import gov.hhs.onc.crigtt.beans.DtoBean;
import org.w3c.dom.Element;


/**
 * <p>Java class for dir element declaration.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;element name="dir"&gt;
 *   &lt;complexType&gt;
 *     &lt;complexContent&gt;
 *       &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *         &lt;group ref="{http://purl.oclc.org/dsdl/schematron}foreign"/&gt;
 *         &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}foreign"/&gt;
 *         &lt;attribute name="value"&gt;
 *           &lt;simpleType&gt;
 *             &lt;restriction base="{http://www.w3.org/2001/XMLSchema}token"&gt;
 *               &lt;enumeration value="ltr"/&gt;
 *               &lt;enumeration value="rtl"/&gt;
 *             &lt;/restriction&gt;
 *           &lt;/simpleType&gt;
 *         &lt;/attribute&gt;
 *       &lt;/restriction&gt;
 *     &lt;/complexContent&gt;
 *   &lt;/complexType&gt;
 * &lt;/element&gt;
 * </pre>
 * 
 * 
 */
public interface Direction extends DtoBean
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
     * {@link String }
     * {@link Element }
     * 
     * 
     */
    List<Serializable> getContent();

    boolean isSetContent();

    void unsetContent();

    /**
     * Gets the value of the value property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getValue();

    /**
     * Sets the value of the value property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setValue(String value);

    boolean isSetValue();

    Map<QName, String> getOtherAttributes();

    void setContent(List<Serializable> values);

}
