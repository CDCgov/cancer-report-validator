
package gov.hhs.onc.crigtt.validate.vocab.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;
import gov.hhs.onc.crigtt.validate.vocab.VocabTarget;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "VocabAssertion", propOrder = {
    "id",
    "active",
    "optional",
    "target",
    "searchTarget",
    "expectedVocabSets",
    "vocabContextExpression",
    "groupingValueSetFallback",
    "groupingValueSetIdExpression",
    "groupingValueSetNameExpression",
    "groupingValueSetVersionExpression",
    "valueSetFallback",
    "valueSetIdExpression",
    "valueSetNameExpression",
    "valueSetVersionExpression",
    "codeSystemFallback",
    "codeSystemIdExpression",
    "codeSystemNameExpression",
    "codeSystemVersionExpression",
    "codeIdFallback",
    "codeIdExpression",
    "codeNameExpression",
    "testExpressionOverride"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("vocabAssertion")
public class VocabAssertionImpl implements VocabAssertion
{

    @XmlElement(namespace = "urn:gov.hhs.onc.crigtt", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String id;
    @XmlElement(defaultValue = "true")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean active = true;
    @XmlElement(defaultValue = "false")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean optional = false;
    @XmlElement(defaultValue = "CODE_ID")
    @XmlSchemaType(name = "string")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected VocabTarget target = VocabTarget.CODE_ID;
    @XmlElement(defaultValue = "CODE_ID")
    @XmlSchemaType(name = "string")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected VocabTarget searchTarget = VocabTarget.CODE_ID;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    @XmlElementWrapper
    @XmlElement(name = "vocabSet", namespace = "urn:gov.hhs.onc.crigtt:validate-vocab", type = VocabSetImpl.class)
    protected List<VocabSet> expectedVocabSets;
    @XmlElement(defaultValue = ".")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String vocabContextExpression = ".";
    @XmlElement(defaultValue = "true")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean groupingValueSetFallback = true;
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String groupingValueSetIdExpression;
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String groupingValueSetNameExpression;
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String groupingValueSetVersionExpression;
    @XmlElement(defaultValue = "true")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean valueSetFallback = true;
    @XmlElement(defaultValue = "@sdtc:valueSet")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String valueSetIdExpression = "@sdtc:valueSet";
    @XmlElement(defaultValue = "@sdtc:valueSetName")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String valueSetNameExpression = "@sdtc:valueSetName";
    @XmlElement(defaultValue = "@sdtc:valueSetVersion")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String valueSetVersionExpression = "@sdtc:valueSetVersion";
    @XmlElement(defaultValue = "false")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean codeSystemFallback = false;
    @XmlElement(defaultValue = "@codeSystem")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String codeSystemIdExpression = "@codeSystem";
    @XmlElement(defaultValue = "@codeSystemName")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String codeSystemNameExpression = "@codeSystemName";
    @XmlElement(defaultValue = "@codeSystemVersion")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String codeSystemVersionExpression = "@codeSystemVersion";
    @XmlElement(defaultValue = "false")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean codeIdFallback = false;
    @XmlElement(defaultValue = "@code")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String codeIdExpression = "@code";
    @XmlElement(defaultValue = "@displayName")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String codeNameExpression = "@displayName";
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String testExpressionOverride;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public VocabAssertionImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public VocabAssertionImpl(final String id, final Boolean active, final Boolean optional, final VocabTarget target, final VocabTarget searchTarget, final List<VocabSet> expectedVocabSets, final String vocabContextExpression, final Boolean groupingValueSetFallback, final String groupingValueSetIdExpression, final String groupingValueSetNameExpression, final String groupingValueSetVersionExpression, final Boolean valueSetFallback, final String valueSetIdExpression, final String valueSetNameExpression, final String valueSetVersionExpression, final Boolean codeSystemFallback, final String codeSystemIdExpression, final String codeSystemNameExpression, final String codeSystemVersionExpression, final Boolean codeIdFallback, final String codeIdExpression, final String codeNameExpression, final String testExpressionOverride) {
        this.id = id;
        this.active = active;
        this.optional = optional;
        this.target = target;
        this.searchTarget = searchTarget;
        this.expectedVocabSets = expectedVocabSets;
        this.vocabContextExpression = vocabContextExpression;
        this.groupingValueSetFallback = groupingValueSetFallback;
        this.groupingValueSetIdExpression = groupingValueSetIdExpression;
        this.groupingValueSetNameExpression = groupingValueSetNameExpression;
        this.groupingValueSetVersionExpression = groupingValueSetVersionExpression;
        this.valueSetFallback = valueSetFallback;
        this.valueSetIdExpression = valueSetIdExpression;
        this.valueSetNameExpression = valueSetNameExpression;
        this.valueSetVersionExpression = valueSetVersionExpression;
        this.codeSystemFallback = codeSystemFallback;
        this.codeSystemIdExpression = codeSystemIdExpression;
        this.codeSystemNameExpression = codeSystemNameExpression;
        this.codeSystemVersionExpression = codeSystemVersionExpression;
        this.codeIdFallback = codeIdFallback;
        this.codeIdExpression = codeIdExpression;
        this.codeNameExpression = codeNameExpression;
        this.testExpressionOverride = testExpressionOverride;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getId() {
        return id;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setId(String value) {
        this.id = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetId() {
        return (this.id!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getActive() {
        return active;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setActive(Boolean value) {
        this.active = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetActive() {
        return (this.active!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getOptional() {
        return optional;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setOptional(Boolean value) {
        this.optional = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetOptional() {
        return (this.optional!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public VocabTarget getTarget() {
        return target;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setTarget(VocabTarget value) {
        this.target = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetTarget() {
        return (this.target!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public VocabTarget getSearchTarget() {
        return searchTarget;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setSearchTarget(VocabTarget value) {
        this.searchTarget = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetSearchTarget() {
        return (this.searchTarget!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetExpectedVocabSets() {
        return (this.expectedVocabSets!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getVocabContextExpression() {
        return vocabContextExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setVocabContextExpression(String value) {
        this.vocabContextExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetVocabContextExpression() {
        return (this.vocabContextExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getGroupingValueSetFallback() {
        return groupingValueSetFallback;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setGroupingValueSetFallback(Boolean value) {
        this.groupingValueSetFallback = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetGroupingValueSetFallback() {
        return (this.groupingValueSetFallback!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getGroupingValueSetIdExpression() {
        return groupingValueSetIdExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setGroupingValueSetIdExpression(String value) {
        this.groupingValueSetIdExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetGroupingValueSetIdExpression() {
        return (this.groupingValueSetIdExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getGroupingValueSetNameExpression() {
        return groupingValueSetNameExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setGroupingValueSetNameExpression(String value) {
        this.groupingValueSetNameExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetGroupingValueSetNameExpression() {
        return (this.groupingValueSetNameExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getGroupingValueSetVersionExpression() {
        return groupingValueSetVersionExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setGroupingValueSetVersionExpression(String value) {
        this.groupingValueSetVersionExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetGroupingValueSetVersionExpression() {
        return (this.groupingValueSetVersionExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getValueSetFallback() {
        return valueSetFallback;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setValueSetFallback(Boolean value) {
        this.valueSetFallback = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetValueSetFallback() {
        return (this.valueSetFallback!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getValueSetIdExpression() {
        return valueSetIdExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setValueSetIdExpression(String value) {
        this.valueSetIdExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetValueSetIdExpression() {
        return (this.valueSetIdExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getValueSetNameExpression() {
        return valueSetNameExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setValueSetNameExpression(String value) {
        this.valueSetNameExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetValueSetNameExpression() {
        return (this.valueSetNameExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getValueSetVersionExpression() {
        return valueSetVersionExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setValueSetVersionExpression(String value) {
        this.valueSetVersionExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetValueSetVersionExpression() {
        return (this.valueSetVersionExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getCodeSystemFallback() {
        return codeSystemFallback;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCodeSystemFallback(Boolean value) {
        this.codeSystemFallback = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCodeSystemFallback() {
        return (this.codeSystemFallback!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getCodeSystemIdExpression() {
        return codeSystemIdExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCodeSystemIdExpression(String value) {
        this.codeSystemIdExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCodeSystemIdExpression() {
        return (this.codeSystemIdExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getCodeSystemNameExpression() {
        return codeSystemNameExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCodeSystemNameExpression(String value) {
        this.codeSystemNameExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCodeSystemNameExpression() {
        return (this.codeSystemNameExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getCodeSystemVersionExpression() {
        return codeSystemVersionExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCodeSystemVersionExpression(String value) {
        this.codeSystemVersionExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCodeSystemVersionExpression() {
        return (this.codeSystemVersionExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getCodeIdFallback() {
        return codeIdFallback;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCodeIdFallback(Boolean value) {
        this.codeIdFallback = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCodeIdFallback() {
        return (this.codeIdFallback!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getCodeIdExpression() {
        return codeIdExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCodeIdExpression(String value) {
        this.codeIdExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCodeIdExpression() {
        return (this.codeIdExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getCodeNameExpression() {
        return codeNameExpression;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCodeNameExpression(String value) {
        this.codeNameExpression = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCodeNameExpression() {
        return (this.codeNameExpression!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getTestExpressionOverride() {
        return testExpressionOverride;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setTestExpressionOverride(String value) {
        this.testExpressionOverride = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetTestExpressionOverride() {
        return (this.testExpressionOverride!= null);
    }

    public List<VocabSet> getExpectedVocabSets() {
        if (expectedVocabSets == null) {
            expectedVocabSets = new ArrayList<VocabSet>();
        }
        return expectedVocabSets;
    }

    public void setExpectedVocabSets(List<VocabSet> expectedVocabSets) {
        this.expectedVocabSets = expectedVocabSets;
    }

}
