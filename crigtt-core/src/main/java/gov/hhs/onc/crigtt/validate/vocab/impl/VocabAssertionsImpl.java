
package gov.hhs.onc.crigtt.validate.vocab.impl;

import java.util.ArrayList;
import java.util.List;
import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertions;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "VocabAssertions", propOrder = {
    "assertions"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("vocabAssertions")
@XmlRootElement(name = "vocabAssertions")
public class VocabAssertionsImpl implements VocabAssertions
{

    @XmlElement(name = "vocabAssertion", type = VocabAssertionImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected List<VocabAssertion> assertions;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public VocabAssertionsImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public VocabAssertionsImpl(final List<VocabAssertion> assertions) {
        this.assertions = assertions;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<VocabAssertion> getAssertions() {
        if (assertions == null) {
            assertions = new ArrayList<VocabAssertion>();
        }
        return this.assertions;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetAssertions() {
        return ((this.assertions!= null)&&(!this.assertions.isEmpty()));
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void unsetAssertions() {
        this.assertions = null;
    }

    public void setAssertions(List<VocabAssertion> value) {
        this.assertions = value;
    }

}
