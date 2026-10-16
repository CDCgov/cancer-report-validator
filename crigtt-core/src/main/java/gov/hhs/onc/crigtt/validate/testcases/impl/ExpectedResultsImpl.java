
package gov.hhs.onc.crigtt.validate.testcases.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.testcases.ExpectedResults;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ExpectedResults", propOrder = {
    "includeNullFlavors",
    "expectedResults"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("expectedResults")
public class ExpectedResultsImpl implements ExpectedResults
{

    @XmlElement(defaultValue = "false")
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected Boolean includeNullFlavors = false;
    @XmlElement(name = "expectedResult")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected List<String> expectedResults;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ExpectedResultsImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ExpectedResultsImpl(final Boolean includeNullFlavors, final List<String> expectedResults) {
        this.includeNullFlavors = includeNullFlavors;
        this.expectedResults = expectedResults;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public Boolean getIncludeNullFlavors() {
        return includeNullFlavors;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setIncludeNullFlavors(Boolean value) {
        this.includeNullFlavors = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetIncludeNullFlavors() {
        return (this.includeNullFlavors!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<String> getExpectedResults() {
        if (expectedResults == null) {
            expectedResults = new ArrayList<String>();
        }
        return this.expectedResults;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetExpectedResults() {
        return ((this.expectedResults!= null)&&(!this.expectedResults.isEmpty()));
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void unsetExpectedResults() {
        this.expectedResults = null;
    }

    public void setExpectedResults(List<String> value) {
        this.expectedResults = value;
    }

}
