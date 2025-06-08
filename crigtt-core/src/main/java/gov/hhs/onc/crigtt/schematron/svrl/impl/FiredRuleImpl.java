package gov.hhs.onc.crigtt.schematron.svrl.impl;

import gov.hhs.onc.crigtt.schematron.svrl.FiredRule;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlID;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlSchemaType;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "")
@XmlRootElement(name = "fired-rule")
public class FiredRuleImpl implements FiredRule
{

    @XmlAttribute(name = "id")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlID
    @XmlSchemaType(name = "ID")
    protected String id;
    @XmlAttribute(name = "context", required = true)
    @XmlSchemaType(name = "anySimpleType")
    protected String context;
    @XmlAttribute(name = "role")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlSchemaType(name = "NMTOKEN")
    protected String role;
    @XmlAttribute(name = "flag")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlSchemaType(name = "NMTOKEN")
    protected String flag;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public FiredRuleImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public FiredRuleImpl(final String id, final String context, final String role, final String flag) {
        this.id = id;
        this.context = context;
        this.role = role;
        this.flag = flag;
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

    public String getContext() {
        return context;
    }

    public void setContext(String value) {
        this.context = value;
    }

    public boolean isSetContext() {
        return (this.context!= null);
    }

    public String getRole() {
        return role;
    }

    public void setRole(String value) {
        this.role = value;
    }

    public boolean isSetRole() {
        return (this.role!= null);
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String value) {
        this.flag = value;
    }

    public boolean isSetFlag() {
        return (this.flag!= null);
    }

}
