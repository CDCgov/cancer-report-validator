
package gov.hhs.onc.crigtt.validate;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import gov.hhs.onc.crigtt.beans.DtoBean;
import gov.hhs.onc.crigtt.beans.NamedBean;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;


/**
 * <p>Java class for Event complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Event"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt}NameElements"/&gt;
 *         &lt;group ref="{urn:gov.hhs.onc.crigtt:validate}StatusElements"/&gt;
 *         &lt;element name="level" type="{urn:gov.hhs.onc.crigtt:validate}Level"/&gt;
 *         &lt;element name="location" type="{urn:gov.hhs.onc.crigtt:validate}Location"/&gt;
 *         &lt;element name="contextExpression" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="testExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="runtimeTestExpression" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="schema" type="{urn:gov.hhs.onc.crigtt:validate}Schema" minOccurs="0"/&gt;
 *         &lt;element name="phase" type="{urn:gov.hhs.onc.crigtt:validate}Phase" minOccurs="0"/&gt;
 *         &lt;element name="pattern" type="{urn:gov.hhs.onc.crigtt:validate}Pattern" minOccurs="0"/&gt;
 *         &lt;element name="rule" type="{urn:gov.hhs.onc.crigtt:validate}Rule" minOccurs="0"/&gt;
 *         &lt;element name="assertion" type="{urn:gov.hhs.onc.crigtt:validate}Assertion" minOccurs="0"/&gt;
 *         &lt;element name="expectedVocabSets" type="{urn:gov.hhs.onc.crigtt:validate-vocab}VocabSets" minOccurs="0"/&gt;
 *         &lt;element name="vocabSet" type="{urn:gov.hhs.onc.crigtt:validate-vocab}VocabSet" minOccurs="0"/&gt;
 *         &lt;element name="expectedCodes" type="{urn:gov.hhs.onc.crigtt:validate-vocab}Codes" minOccurs="0"/&gt;
 *         &lt;element name="code" type="{urn:gov.hhs.onc.crigtt:validate-vocab}Code" minOccurs="0"/&gt;
 *         &lt;element name="description" type="{http://www.w3.org/2001/XMLSchema}string"/&gt;
 *         &lt;element name="messages" type="{urn:gov.hhs.onc.crigtt:validate}Messages" minOccurs="0"/&gt;
 *         &lt;element name="actualResult" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="expectedResults" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/&gt;
 *         &lt;element name="contextSpecific" type="{http://www.w3.org/2001/XMLSchema}boolean"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@JsonSubTypes({
    @JsonSubTypes.Type(ValidatorEventImpl.class)
})
public interface ValidatorEvent
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

    /**
     * Gets the value of the status property.
     * 
     */
    @JsonProperty
    boolean getStatus();

    /**
     * Sets the value of the status property.
     * 
     */
    void setStatus(boolean value);

    boolean isSetStatus();

    /**
     * Gets the value of the level property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorLevel }
     *     
     */
    @JsonProperty
    ValidatorLevel getLevel();

    /**
     * Sets the value of the level property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorLevel }
     *     
     */
    void setLevel(ValidatorLevel value);

    boolean isSetLevel();

    /**
     * Gets the value of the location property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorLocation }
     *     
     */
    @JsonProperty
    ValidatorLocation getLocation();

    /**
     * Sets the value of the location property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorLocation }
     *     
     */
    void setLocation(ValidatorLocation value);

    boolean isSetLocation();

    /**
     * Gets the value of the contextExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getContextExpression();

    /**
     * Sets the value of the contextExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setContextExpression(String value);

    boolean isSetContextExpression();

    /**
     * Gets the value of the testExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getTestExpression();

    /**
     * Sets the value of the testExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setTestExpression(String value);

    boolean isSetTestExpression();

    /**
     * Gets the value of the runtimeTestExpression property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getRuntimeTestExpression();

    /**
     * Sets the value of the runtimeTestExpression property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setRuntimeTestExpression(String value);

    boolean isSetRuntimeTestExpression();

    /**
     * Gets the value of the schema property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorSchema }
     *     
     */
    @JsonProperty
    ValidatorSchema getSchema();

    /**
     * Sets the value of the schema property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorSchema }
     *     
     */
    void setSchema(ValidatorSchema value);

    boolean isSetSchema();

    /**
     * Gets the value of the phase property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorPhase }
     *     
     */
    @JsonProperty
    ValidatorPhase getPhase();

    /**
     * Sets the value of the phase property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorPhase }
     *     
     */
    void setPhase(ValidatorPhase value);

    boolean isSetPhase();

    /**
     * Gets the value of the pattern property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorPattern }
     *     
     */
    @JsonProperty
    ValidatorPattern getPattern();

    /**
     * Sets the value of the pattern property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorPattern }
     *     
     */
    void setPattern(ValidatorPattern value);

    boolean isSetPattern();

    /**
     * Gets the value of the rule property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorRule }
     *     
     */
    @JsonProperty
    ValidatorRule getRule();

    /**
     * Sets the value of the rule property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorRule }
     *     
     */
    void setRule(ValidatorRule value);

    boolean isSetRule();

    /**
     * Gets the value of the assertion property.
     * 
     * @return
     *     possible object is
     *     {@link ValidatorAssertion }
     *     
     */
    @JsonProperty
    ValidatorAssertion getAssertion();

    /**
     * Sets the value of the assertion property.
     * 
     * @param value
     *     allowed object is
     *     {@link ValidatorAssertion }
     *     
     */
    void setAssertion(ValidatorAssertion value);

    boolean isSetAssertion();

    boolean isSetExpectedVocabSets();

    /**
     * Gets the value of the vocabSet property.
     * 
     * @return
     *     possible object is
     *     {@link VocabSet }
     *     
     */
    @JsonProperty
    VocabSet getVocabSet();

    /**
     * Sets the value of the vocabSet property.
     * 
     * @param value
     *     allowed object is
     *     {@link VocabSet }
     *     
     */
    void setVocabSet(VocabSet value);

    boolean isSetVocabSet();

    boolean isSetExpectedCodes();

    /**
     * Gets the value of the code property.
     * 
     * @return
     *     possible object is
     *     {@link Code }
     *     
     */
    @JsonProperty
    Code getCode();

    /**
     * Sets the value of the code property.
     * 
     * @param value
     *     allowed object is
     *     {@link Code }
     *     
     */
    void setCode(Code value);

    boolean isSetCode();

    /**
     * Gets the value of the description property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getDescription();

    /**
     * Sets the value of the description property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setDescription(String value);

    boolean isSetDescription();

    boolean isSetMessages();

    /**
     * Gets the value of the actualResult property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    @JsonProperty
    String getActualResult();

    /**
     * Sets the value of the actualResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    void setActualResult(String value);

    boolean isSetActualResult();

    /**
     * Gets the value of the expectedResults property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the expectedResults property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getExpectedResults().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    @JsonProperty
    List<String> getExpectedResults();

    boolean isSetExpectedResults();

    void unsetExpectedResults();

    /**
     * Gets the value of the contextSpecific property.
     * 
     */
    @JsonProperty
    boolean getContextSpecific();

    /**
     * Sets the value of the contextSpecific property.
     * 
     */
    void setContextSpecific(boolean value);

    boolean isSetContextSpecific();

    @JsonProperty
    public List<VocabSet> getExpectedVocabSets();

    public void setExpectedVocabSets(List<VocabSet> expectedVocabSets);

    @JsonProperty
    public List<Code> getExpectedCodes();

    public void setExpectedCodes(List<Code> expectedCodes);

    @JsonProperty
    public List<String> getMessages();

    public void setMessages(List<String> messages);

    void setExpectedResults(List<String> values);

}
