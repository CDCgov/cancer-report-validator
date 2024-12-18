
package gov.hhs.onc.crigtt.validate.vocab.impl;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.vocab.CodeSystem;
import gov.hhs.onc.crigtt.validate.vocab.ValueSet;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "VocabSet", propOrder = {
    "groupingValueSet",
    "valueSet",
    "codeSystem"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("vocabSet")
public class VocabSetImpl implements VocabSet
{

    @XmlElement(type = ValueSetImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected ValueSetImpl groupingValueSet;
    @XmlElement(type = ValueSetImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected ValueSetImpl valueSet;
    @XmlElement(type = CodeSystemImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected CodeSystemImpl codeSystem;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public VocabSetImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public VocabSetImpl(final ValueSetImpl groupingValueSet, final ValueSetImpl valueSet, final CodeSystemImpl codeSystem) {
        this.groupingValueSet = groupingValueSet;
        this.valueSet = valueSet;
        this.codeSystem = codeSystem;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public ValueSet getGroupingValueSet() {
        return groupingValueSet;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setGroupingValueSet(ValueSet value) {
        this.groupingValueSet = ((ValueSetImpl) value);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetGroupingValueSet() {
        return (this.groupingValueSet!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public ValueSet getValueSet() {
        return valueSet;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setValueSet(ValueSet value) {
        this.valueSet = ((ValueSetImpl) value);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetValueSet() {
        return (this.valueSet!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public CodeSystem getCodeSystem() {
        return codeSystem;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setCodeSystem(CodeSystem value) {
        this.codeSystem = ((CodeSystemImpl) value);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetCodeSystem() {
        return (this.codeSystem!= null);
    }

}
