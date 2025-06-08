package gov.hhs.onc.crigtt.validate.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Rule", propOrder = {
    "id"
})
public class ValidatorRuleImpl implements ValidatorRule
{

    @XmlAttribute(namespace = "urn:gov.hhs.onc.crigtt", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String id;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ValidatorRuleImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ValidatorRuleImpl(final String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String value) {
        this.id = value;
    }

    public boolean isSetId() {
        return (this.id!= null);
    }

}
