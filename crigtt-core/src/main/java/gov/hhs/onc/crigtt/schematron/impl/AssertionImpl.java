package gov.hhs.onc.crigtt.schematron.impl;

import gov.hhs.onc.crigtt.schematron.Assertion;
import jakarta.xml.bind.annotation.*;
import jakarta.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.xml.namespace.QName;
import java.io.Serializable;

/**
 * Implementation class for {@link gov.hhs.onc.crigtt.schematron.Assertion}.
 * Represents an assertion element in a Schematron schema that is used to express validation rules.
 * This class is part of the Schematron implementation in the gov.hhs.onc.crigtt.schematron.impl package.
 * An assertion contains a test expression and optional diagnostic information that is used during validation.
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Assertion", propOrder = {
    "content"
})
@XmlRootElement(name = "assert")
public class AssertionImpl extends AbstractSchematronObject implements Assertion
{

    @XmlElementRefs({
        @XmlElementRef(name = "emph", namespace = "http://purl.oclc.org/dsdl/schematron", type = EmphasisImpl.class, required = false),
        @XmlElementRef(name = "name", namespace = "http://purl.oclc.org/dsdl/schematron", type = NameImpl.class, required = false),
        @XmlElementRef(name = "value-of", namespace = "http://purl.oclc.org/dsdl/schematron", type = ValueOfImpl.class, required = false),
        @XmlElementRef(name = "dir", namespace = "http://purl.oclc.org/dsdl/schematron", type = DirectionImpl.class, required = false),
        @XmlElementRef(name = "span", namespace = "http://purl.oclc.org/dsdl/schematron", type = SpanImpl.class, required = false)
    })
    @XmlMixed
    @XmlAnyElement
    protected List<Serializable> content;
    @XmlAttribute(name = "test", required = true)
    @XmlJavaTypeAdapter(jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter.class)
    protected String test;
    @XmlAttribute(name = "flag")
    @XmlJavaTypeAdapter(jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter.class)
    protected String flag;
    @XmlAttribute(name = "id")
    @XmlJavaTypeAdapter(jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter.class)
    @XmlID
    @XmlSchemaType(name = "ID")
    protected String id;
    @XmlAttribute(name = "diagnostics")
    @XmlIDREF
    @XmlSchemaType(name = "IDREFS")
    protected List<Object> diagnostics;
    @XmlAttribute(name = "icon")
    protected String icon;
    @XmlAttribute(name = "see")
    protected String see;
    @XmlAttribute(name = "fpi")
    @XmlJavaTypeAdapter(jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter.class)
    protected String fpi;
    @XmlAttribute(name = "role")
    @XmlJavaTypeAdapter(jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter.class)
    protected String role;
    @XmlAttribute(name = "subject")
    @XmlJavaTypeAdapter(jakarta.xml.bind.annotation.adapters.CollapsedStringAdapter.class)
    protected String subject;
    @XmlAnyAttribute
    private Map<QName, String> otherAttributes;

    /**
     * Default no-arg constructor
     * 
     */
    public AssertionImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public AssertionImpl(final List<Serializable> content, final String test, final String flag, final String id, final List<Object> diagnostics, final String icon, final String see, final String fpi, final String role, final String subject, final Map<QName, String> otherAttributes) {
        this.content = content;
        this.test = test;
        this.flag = flag;
        this.id = id;
        this.diagnostics = diagnostics;
        this.icon = icon;
        this.see = see;
        this.fpi = fpi;
        this.role = role;
        this.subject = subject;
        this.otherAttributes = otherAttributes;
    }

    public List<Serializable> getContent() {
        if (content == null) {
            content = new ArrayList<Serializable>();
        }
        return this.content;
    }

    public boolean isSetContent() {
        return ((this.content!= null)&&(!this.content.isEmpty()));
    }

    public void unsetContent() {
        this.content = null;
    }

    public String getTest() {
        return test;
    }

    public void setTest(String value) {
        this.test = value;
    }

    public boolean isSetTest() {
        return (this.test!= null);
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

    public String getId() {
        return id;
    }

    public void setId(String value) {
        this.id = value;
    }

    public boolean isSetId() {
        return (this.id!= null);
    }

    public List<Object> getDiagnostics() {
        if (diagnostics == null) {
            diagnostics = new ArrayList<Object>();
        }
        return this.diagnostics;
    }

    public boolean isSetDiagnostics() {
        return ((this.diagnostics!= null)&&(!this.diagnostics.isEmpty()));
    }

    public void unsetDiagnostics() {
        this.diagnostics = null;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String value) {
        this.icon = value;
    }

    public boolean isSetIcon() {
        return (this.icon!= null);
    }

    public String getSee() {
        return see;
    }

    public void setSee(String value) {
        this.see = value;
    }

    public boolean isSetSee() {
        return (this.see!= null);
    }

    public String getFpi() {
        return fpi;
    }

    public void setFpi(String value) {
        this.fpi = value;
    }

    public boolean isSetFpi() {
        return (this.fpi!= null);
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

    public String getSubject() {
        return subject;
    }

    public void setSubject(String value) {
        this.subject = value;
    }

    public boolean isSetSubject() {
        return (this.subject!= null);
    }

    /**
     * Gets a map that contains attributes that aren't bound to any typed property on this class.
     * 
     * <p>
     * the map is keyed by the name of the attribute and 
     * the value is the string value of the attribute.
     * 
     * the map returned by this method is live, and you can add new attribute
     * by updating the map directly. Because of this design, there's no setter.
     * 
     * 
     * @return
     *     always non-null
     */
    public Map<QName, String> getOtherAttributes() {
        return otherAttributes;
    }

    public void setContent(List<Serializable> value) {
        this.content = value;
    }

    public void setDiagnostics(List<Object> value) {
        this.diagnostics = value;
    }

}
