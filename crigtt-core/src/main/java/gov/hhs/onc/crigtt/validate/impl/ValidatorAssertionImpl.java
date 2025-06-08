package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import com.fasterxml.jackson.annotation.JsonTypeName;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Assertion", propOrder = {
    "id",
    "name"
})
@JsonTypeName("validatorAssertion")
public class ValidatorAssertionImpl implements ValidatorAssertion
{

    @XmlAttribute(namespace = "urn:gov.hhs.onc.crigtt", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String id;
    @XmlAttribute(namespace = "urn:gov.hhs.onc.crigtt")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String name;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ValidatorAssertionImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ValidatorAssertionImpl(final String id, final String name) {
        this.id = id;
        this.name = name;
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

    public String getName() {
        return name;
    }

    public void setName(String value) {
        this.name = value;
    }

    public boolean isSetName() {
        return (this.name!= null);
    }

}
