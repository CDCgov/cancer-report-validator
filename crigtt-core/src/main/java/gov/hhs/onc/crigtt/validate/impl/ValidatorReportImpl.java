package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorError;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorResults;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;
import java.util.List;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "validatorReport")
@XmlRootElement(name = "report")
public class ValidatorReportImpl extends AbstractValidatorResponse implements ValidatorReport {
    @XmlElement(name = "error")
    private List<ValidatorError> errors;

    @XmlAttribute(name = "id")
    private String id;

    @XmlElement(name = "submittedTimestamp")
    private long submittedTimestamp;

    @XmlElement(name = "processedTimestamp")
    private long processedTimestamp;

    @XmlElement(name = "results")
    private ValidatorResults results;

    @XmlElement(name = "document")
    private ValidatorDocument document;

    @XmlElement(name = "testcaseId")
    private String testcaseId;

    @Override
    public List<ValidatorError> getErrors() {
        return this.errors;
    }

    @Override
    public void setErrors(List<ValidatorError> errors) {
        this.errors = errors;
    }

    @Override
    public String getId() {
        return id;
    }

    @Override
    public void setId(String value) {
        this.id = value;
    }

    @Override
    public boolean isSetId() {
        return this.id != null;
    }

    @Override
    public long getSubmittedTimestamp() {
        return submittedTimestamp;
    }

    @Override
    public void setSubmittedTimestamp(long value) {
        this.submittedTimestamp = value;
    }

    @Override
    public boolean isSetSubmittedTimestamp() {
        return this.submittedTimestamp > 0;
    }

    @Override
    public long getProcessedTimestamp() {
        return processedTimestamp;
    }

    @Override
    public void setProcessedTimestamp(long value) {
        this.processedTimestamp = value;
    }

    @Override
    public boolean isSetProcessedTimestamp() {
        return this.processedTimestamp > 0;
    }

    @Override
    public ValidatorResults getResults() {
        return results;
    }

    @Override
    public void setResults(ValidatorResults value) {
        this.results = value;
    }

    @Override
    public boolean isSetResults() {
        return this.results != null;
    }

    @Override
    public ValidatorDocument getDocument() {
        return document;
    }

    @Override
    public void setDocument(ValidatorDocument value) {
        this.document = value;
    }

    @Override
    public boolean isSetDocument() {
        return this.document != null;
    }

    @Override
    public String getTestcaseId() {
        return testcaseId;
    }

    @Override
    public void setTestcaseId(String value) {
        this.testcaseId = value;
    }

    @Override
    public boolean isSetTestcaseId() {
        return this.testcaseId != null;
    }
}
