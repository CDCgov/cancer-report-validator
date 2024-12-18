
package gov.hhs.onc.crigtt.validate.vocab;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.validate.vocab.impl.VocabAssertionImpl;


/**
 * <p>Java class for VocabAssertion complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="VocabAssertion"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt}IdElements"/&gt;
 *         &lt;element name="active" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="optional" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="target" type="{urn:gov.hhs.onc.crigtt:validate-vocab}VocabTarget" minOccurs="0"/&gt;
 *         &lt;element name="searchTarget" type="{urn:gov.hhs.onc.crigtt:validate-vocab}VocabTarget" minOccurs="0"/&gt;
 *         &lt;element name="expectedVocabSets" type="{urn:gov.hhs.onc.crigtt:validate-vocab}VocabSets" minOccurs="0"/&gt;
 *         &lt;element name="vocabContextExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="groupingValueSetFallback" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="groupingValueSetIdExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="groupingValueSetNameExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="groupingValueSetVersionExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="valueSetFallback" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="valueSetIdExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="valueSetNameExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="valueSetVersionExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="codeSystemFallback" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="codeSystemIdExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="codeSystemNameExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="codeSystemVersionExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="codeIdFallback" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/&gt;
 *         &lt;element name="codeIdExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="codeNameExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="testExpressionOverride" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(VocabAssertionImpl.class)
})
public interface VocabAssertion
    extends DtoBean, IdentifiedBean
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
     * Gets the value of the active property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getActive();

    /**
     * Sets the value of the active property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setActive(Boolean value);

    boolean isSetActive();

    /**
     * Gets the value of the optional property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getOptional();

    /**
     * Sets the value of the optional property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setOptional(Boolean value);

    boolean isSetOptional();

    /**
     * Gets the value of the target property.
     * 
     * @return
     *     possible object is
     *     {@link VocabTarget }
     *     
     */
    @JsonProperty
    VocabTarget getTarget();

    /**
     * Sets the value of the target property.
     * 
     * @param value
     *     allowed object is
     *     {@link VocabTarget }
     *     
     */
    void setTarget(VocabTarget value);

    boolean isSetTarget();

    /**
     * Gets the value of the searchTarget property.
     * 
     * @return
     *     possible object is
     *     {@link VocabTarget }
     *     
     */
    @JsonProperty
    VocabTarget getSearchTarget();

    /**
     * Sets the value of the searchTarget property.
     * 
     * @param value
     *     allowed object is
     *     {@link VocabTarget }
     *     
     */
    void setSearchTarget(VocabTarget value);

    boolean isSetSearchTarget();

    boolean isSetExpectedVocabSets();

    /**
     * Gets the value of the vocabContextExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getVocabContextExpression();

    /**
     * Sets the value of the vocabContextExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setVocabContextExpression(String value);

    boolean isSetVocabContextExpression();

    /**
     * Gets the value of the groupingValueSetFallback property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getGroupingValueSetFallback();

    /**
     * Sets the value of the groupingValueSetFallback property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setGroupingValueSetFallback(Boolean value);

    boolean isSetGroupingValueSetFallback();

    /**
     * Gets the value of the groupingValueSetIdExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getGroupingValueSetIdExpression();

    /**
     * Sets the value of the groupingValueSetIdExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setGroupingValueSetIdExpression(String value);

    boolean isSetGroupingValueSetIdExpression();

    /**
     * Gets the value of the groupingValueSetNameExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getGroupingValueSetNameExpression();

    /**
     * Sets the value of the groupingValueSetNameExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setGroupingValueSetNameExpression(String value);

    boolean isSetGroupingValueSetNameExpression();

    /**
     * Gets the value of the groupingValueSetVersionExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getGroupingValueSetVersionExpression();

    /**
     * Sets the value of the groupingValueSetVersionExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setGroupingValueSetVersionExpression(String value);

    boolean isSetGroupingValueSetVersionExpression();

    /**
     * Gets the value of the valueSetFallback property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getValueSetFallback();

    /**
     * Sets the value of the valueSetFallback property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setValueSetFallback(Boolean value);

    boolean isSetValueSetFallback();

    /**
     * Gets the value of the valueSetIdExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getValueSetIdExpression();

    /**
     * Sets the value of the valueSetIdExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setValueSetIdExpression(String value);

    boolean isSetValueSetIdExpression();

    /**
     * Gets the value of the valueSetNameExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getValueSetNameExpression();

    /**
     * Sets the value of the valueSetNameExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setValueSetNameExpression(String value);

    boolean isSetValueSetNameExpression();

    /**
     * Gets the value of the valueSetVersionExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getValueSetVersionExpression();

    /**
     * Sets the value of the valueSetVersionExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setValueSetVersionExpression(String value);

    boolean isSetValueSetVersionExpression();

    /**
     * Gets the value of the codeSystemFallback property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getCodeSystemFallback();

    /**
     * Sets the value of the codeSystemFallback property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setCodeSystemFallback(Boolean value);

    boolean isSetCodeSystemFallback();

    /**
     * Gets the value of the codeSystemIdExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getCodeSystemIdExpression();

    /**
     * Sets the value of the codeSystemIdExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setCodeSystemIdExpression(String value);

    boolean isSetCodeSystemIdExpression();

    /**
     * Gets the value of the codeSystemNameExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getCodeSystemNameExpression();

    /**
     * Sets the value of the codeSystemNameExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setCodeSystemNameExpression(String value);

    boolean isSetCodeSystemNameExpression();

    /**
     * Gets the value of the codeSystemVersionExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getCodeSystemVersionExpression();

    /**
     * Sets the value of the codeSystemVersionExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setCodeSystemVersionExpression(String value);

    boolean isSetCodeSystemVersionExpression();

    /**
     * Gets the value of the codeIdFallback property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    @JsonProperty
    Boolean getCodeIdFallback();

    /**
     * Sets the value of the codeIdFallback property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    void setCodeIdFallback(Boolean value);

    boolean isSetCodeIdFallback();

    /**
     * Gets the value of the codeIdExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getCodeIdExpression();

    /**
     * Sets the value of the codeIdExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setCodeIdExpression(String value);

    boolean isSetCodeIdExpression();

    /**
     * Gets the value of the codeNameExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getCodeNameExpression();

    /**
     * Sets the value of the codeNameExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setCodeNameExpression(String value);

    boolean isSetCodeNameExpression();

    /**
     * Gets the value of the testExpressionOverride property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getTestExpressionOverride();

    /**
     * Sets the value of the testExpressionOverride property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setTestExpressionOverride(String value);

    boolean isSetTestExpressionOverride();

    @JsonProperty
    public List<VocabSet> getExpectedVocabSets();

    public void setExpectedVocabSets(List<VocabSet> expectedVocabSets);

}
