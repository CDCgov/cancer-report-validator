
package gov.hhs.onc.crigtt.validate.impl;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Submission", propOrder = {
    "id",
    "submittedTimestamp",
    "document",
    "testcaseId"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("validatorSubmission")
@XmlRootElement(name = "submission")
public class ValidatorSubmissionImpl implements ValidatorSubmission
{

    @XmlElement(namespace = "urn:gov.hhs.onc.crigtt", required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String id;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected long submittedTimestamp;
    @XmlElement(required = true, type = ValidatorDocumentImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected ValidatorDocumentImpl document;
    @XmlElement(required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected String testcaseId;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ValidatorSubmissionImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ValidatorSubmissionImpl(final String id, final long submittedTimestamp, final ValidatorDocumentImpl document, final String testcaseId) {
        this.id = id;
        this.submittedTimestamp = submittedTimestamp;
        this.document = document;
        this.testcaseId = testcaseId;
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
    public long getSubmittedTimestamp() {
        return submittedTimestamp;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setSubmittedTimestamp(long value) {
        this.submittedTimestamp = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetSubmittedTimestamp() {
        return true;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public ValidatorDocument getDocument() {
        return document;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setDocument(ValidatorDocument value) {
        this.document = ((ValidatorDocumentImpl) value);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetDocument() {
        return (this.document!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public String getTestcaseId() {
        return testcaseId;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setTestcaseId(String value) {
        this.testcaseId = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetTestcaseId() {
        return (this.testcaseId!= null);
    }

}