
package gov.hhs.onc.crigtt.schematron;

import java.util.Map;
import javax.xml.namespace.QName;
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
 *       &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}foreign-empty"/&gt;
 *       &lt;attribute name="select" use="required" type="{http://purl.oclc.org/dsdl/schematron}pathValue" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
public interface ValueOf extends DtoBean
{


    /**
     * Gets the value of the select property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getSelect();

    /**
     * Sets the value of the select property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setSelect(String value);

    boolean isSetSelect();

    Map<QName, String> getOtherAttributes();

}
