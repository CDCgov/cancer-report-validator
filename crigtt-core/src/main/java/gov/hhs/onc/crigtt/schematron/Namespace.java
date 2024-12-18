
package gov.hhs.onc.crigtt.schematron;

import java.util.Map;
import javax.xml.namespace.QName;
import gov.hhs.onc.crigtt.beans.DtoBean;


/**
 * <p>Java class for ns element declaration.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;element name="ns"&gt;
 *   &lt;complexType&gt;
 *     &lt;complexContent&gt;
 *       &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *         &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}foreign-empty"/&gt;
 *         &lt;attribute name="uri" use="required" type="{http://purl.oclc.org/dsdl/schematron}uriValue" /&gt;
 *         &lt;attribute name="prefix" use="required" type="{http://purl.oclc.org/dsdl/schematron}nameValue" /&gt;
 *       &lt;/restriction&gt;
 *     &lt;/complexContent&gt;
 *   &lt;/complexType&gt;
 * &lt;/element&gt;
 * </pre>
 * 
 * 
 */
public interface Namespace extends DtoBean
{


    /**
     * Gets the value of the uri property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getUri();

    /**
     * Sets the value of the uri property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setUri(String value);

    boolean isSetUri();

    /**
     * Gets the value of the prefix property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getPrefix();

    /**
     * Sets the value of the prefix property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setPrefix(String value);

    boolean isSetPrefix();

    Map<QName, String> getOtherAttributes();

}
