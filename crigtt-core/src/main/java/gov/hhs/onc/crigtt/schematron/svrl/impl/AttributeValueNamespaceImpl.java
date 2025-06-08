package gov.hhs.onc.crigtt.schematron.svrl.impl;

import gov.hhs.onc.crigtt.schematron.svrl.AttributeValueNamespace;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlSchemaType;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "")
@XmlRootElement(name = "ns-prefix-in-attribute-values")
public class AttributeValueNamespaceImpl implements AttributeValueNamespace
{

    @XmlAttribute(name = "prefix", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlSchemaType(name = "NMTOKEN")
    protected String prefix;
    @XmlAttribute(name = "uri", required = true)
    @XmlSchemaType(name = "anySimpleType")
    protected String uri;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public AttributeValueNamespaceImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public AttributeValueNamespaceImpl(final String prefix, final String uri) {
        this.prefix = prefix;
        this.uri = uri;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String value) {
        this.prefix = value;
    }

    public boolean isSetPrefix() {
        return (this.prefix!= null);
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String value) {
        this.uri = value;
    }

    public boolean isSetUri() {
        return (this.uri!= null);
    }

}
