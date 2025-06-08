package gov.hhs.onc.crigtt.validate.impl;

import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;

/**
 * This object contains factory methods for each Java content interface and Java
 * element interface generated in the gov.hhs.onc.crigtt.validate.impl package.
 * <p>
 * An ObjectFactory allows you to programatically construct new instances of the
 * Java representation for XML content. The Java representation of XML content can
 * consist of schema derived interfaces and classes representing the binding of
 * schema type definitions, element declarations and model groups. Factory methods
 * for each of these are provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {
    private final static QName _Submission_QNAME = new QName("http://gov.hhs.onc.crigtt.validate", "submission");
    private final static QName _Report_QNAME = new QName("http://gov.hhs.onc.crigtt.validate", "report");
    private final static QName _Error_QNAME = new QName("http://gov.hhs.onc.crigtt.validate", "error");

    /**
     * Create a new ObjectFactory that can be used to create new instances of
     * schema derived classes for package: gov.hhs.onc.crigtt.validate.impl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ValidatorSubmissionImpl }
     * 
     */
    public ValidatorSubmissionImpl createValidatorSubmission() {
        return new ValidatorSubmissionImpl();
    }

    /**
     * Create an instance of {@link ValidatorReportImpl }
     * 
     */
    public ValidatorReportImpl createValidatorReport() {
        return new ValidatorReportImpl();
    }

    /**
     * Create an instance of {@link ValidatorErrorImpl }
     * 
     */
    public ValidatorErrorImpl createValidatorError() {
        return new ValidatorErrorImpl();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorSubmissionImpl }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gov.hhs.onc.crigtt.validate", name = "submission")
    public JAXBElement<ValidatorSubmissionImpl> createSubmission(ValidatorSubmissionImpl value) {
        return new JAXBElement<ValidatorSubmissionImpl>(_Submission_QNAME, ValidatorSubmissionImpl.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorReportImpl }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gov.hhs.onc.crigtt.validate", name = "report")
    public JAXBElement<ValidatorReportImpl> createReport(ValidatorReportImpl value) {
        return new JAXBElement<ValidatorReportImpl>(_Report_QNAME, ValidatorReportImpl.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorErrorImpl }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gov.hhs.onc.crigtt.validate", name = "error")
    public JAXBElement<ValidatorErrorImpl> createError(ValidatorErrorImpl value) {
        return new JAXBElement<ValidatorErrorImpl>(_Error_QNAME, ValidatorErrorImpl.class, null, value);
    }
}
