
package gov.hhs.onc.crigtt.validate.testcases;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.beans.NamedBean;
import gov.hhs.onc.crigtt.validate.testcases.impl.TestcaseImpl;


/**
 * <p>Java class for Testcase complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Testcase"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt}NameElements"/&gt;
 *         &lt;element name="xPathSets" type="{urn:gov.hhs.onc.crigtt:validate-testcases}XPathSets" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(TestcaseImpl.class)
})
public interface Testcase
    extends DtoBean, NamedBean
{


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
     * Gets the value of the name property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    String getName();

    /**
     * Sets the value of the name property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setName(String value);

    boolean isSetName();

    boolean isSetXPathSets();

    @JsonProperty
    public List<XPathSet> getXPathSets();

    public void setXPathSets(List<XPathSet> xPathSets);

}
