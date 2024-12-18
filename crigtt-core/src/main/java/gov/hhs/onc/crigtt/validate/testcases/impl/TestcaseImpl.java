
package gov.hhs.onc.crigtt.validate.testcases.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.XPathSet;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Testcase", propOrder = {
    "id",
    "name",
    "xPathSets"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("testcase")
@XmlRootElement(name = "testcase")
public class TestcaseImpl implements Testcase
{

    @XmlElement(namespace = "urn:gov.hhs.onc.crigtt", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String id;
    @XmlElement(namespace = "urn:gov.hhs.onc.crigtt")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String name;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    @XmlElementWrapper
    @XmlElement(name = "xPathSet", namespace = "urn:gov.hhs.onc.crigtt:validate-testcases", type = XPathSetImpl.class)
    protected List<XPathSet> xPathSets;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public TestcaseImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public TestcaseImpl(final String id, final String name, final List<XPathSet> xPathSets) {
        this.id = id;
        this.name = name;
        this.xPathSets = xPathSets;
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
    public String getName() {
        return name;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setName(String value) {
        this.name = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetName() {
        return (this.name!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetXPathSets() {
        return (this.xPathSets!= null);
    }

    public List<XPathSet> getXPathSets() {
        if (xPathSets == null) {
            xPathSets = new ArrayList<XPathSet>();
        }
        return xPathSets;
    }

    public void setXPathSets(List<XPathSet> xPathSets) {
        this.xPathSets = xPathSets;
    }

}
