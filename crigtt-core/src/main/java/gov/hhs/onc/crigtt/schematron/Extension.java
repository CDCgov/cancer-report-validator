
package gov.hhs.onc.crigtt.schematron;

import java.util.Map;
import javax.xml.namespace.QName;
import gov.hhs.onc.crigtt.beans.DtoBean;


/**
 * <p>Java class for extends element declaration.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;element name="extends"&gt;
 *   &lt;complexType&gt;
 *     &lt;complexContent&gt;
 *       &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *         &lt;attGroup ref="{http://purl.oclc.org/dsdl/schematron}foreign-empty"/&gt;
 *         &lt;attribute name="rule" use="required" type="{http://www.w3.org/2001/XMLSchema}IDREF" /&gt;
 *       &lt;/restriction&gt;
 *     &lt;/complexContent&gt;
 *   &lt;/complexType&gt;
 * &lt;/element&gt;
 * </pre>
 * 
 * 
 */
public interface Extension extends DtoBean
{


    /**
     * Gets the value of the rule property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    Object getRule();

    /**
     * Sets the value of the rule property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    void setRule(Object value);

    boolean isSetRule();

    Map<QName, String> getOtherAttributes();

}
