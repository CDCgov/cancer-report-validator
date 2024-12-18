
package gov.hhs.onc.crigtt.validate.testcases;

import gov.hhs.onc.crigtt.beans.DtoBean;


/**
 * <p>Java class for CustomEvalExpression complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="CustomEvalExpression"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="expression" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attribute name="xquery" type="{http://www.w3.org/2001/XMLSchema}boolean" default="false" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
public interface CustomEvalExpression
    extends DtoBean
{


    /**
     * Gets the value of the expression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getExpression();

    /**
     * Sets the value of the expression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setExpression(String value);

    boolean isSetExpression();

    /**
     * Gets the value of the xquery property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    boolean getXquery();

    /**
     * Sets the value of the xquery property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setXquery(boolean value);

    boolean isSetXquery();

    void unsetXquery();

}
