
package gov.hhs.onc.crigtt.validate.impl;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.validate.ValidatorAssertion;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorError;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorEventTotals;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.ValidatorPattern;
import gov.hhs.onc.crigtt.validate.ValidatorPhase;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorResults;
import gov.hhs.onc.crigtt.validate.ValidatorRule;
import gov.hhs.onc.crigtt.validate.ValidatorSchema;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.validate.impl package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
@SuppressWarnings({
    CompilerWarnings.RAWTYPES,
    CompilerWarnings.UNCHECKED
})
public class ObjectFactory {

    private final static QName _Submission_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate", "submission");
    private final static QName _Report_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate", "report");
    private final static QName _Error_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate", "error");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.validate.impl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ValidatorSubmission }
     * 
     */
    public ValidatorSubmissionImpl createValidatorSubmission() {
        return new ValidatorSubmissionImpl();
    }

    /**
     * Create an instance of {@link ValidatorReport }
     * 
     */
    public ValidatorReportImpl createValidatorReport() {
        return new ValidatorReportImpl();
    }

    /**
     * Create an instance of {@link ValidatorError }
     * 
     */
    public ValidatorErrorImpl createValidatorError() {
        return new ValidatorErrorImpl();
    }

    /**
     * Create an instance of {@link ValidatorLocation }
     * 
     */
    public ValidatorLocationImpl createValidatorLocation() {
        return new ValidatorLocationImpl();
    }

    /**
     * Create an instance of {@link ValidatorSchema }
     * 
     */
    public ValidatorSchemaImpl createValidatorSchema() {
        return new ValidatorSchemaImpl();
    }

    /**
     * Create an instance of {@link ValidatorPhase }
     * 
     */
    public ValidatorPhaseImpl createValidatorPhase() {
        return new ValidatorPhaseImpl();
    }

    /**
     * Create an instance of {@link ValidatorPattern }
     * 
     */
    public ValidatorPatternImpl createValidatorPattern() {
        return new ValidatorPatternImpl();
    }

    /**
     * Create an instance of {@link ValidatorRule }
     * 
     */
    public ValidatorRuleImpl createValidatorRule() {
        return new ValidatorRuleImpl();
    }

    /**
     * Create an instance of {@link ValidatorAssertion }
     * 
     */
    public ValidatorAssertionImpl createValidatorAssertion() {
        return new ValidatorAssertionImpl();
    }

    /**
     * Create an instance of {@link ValidatorEvent }
     * 
     */
    public ValidatorEventImpl createValidatorEvent() {
        return new ValidatorEventImpl();
    }

    /**
     * Create an instance of {@link ValidatorEventTotals }
     * 
     */
    public ValidatorEventTotalsImpl createValidatorEventTotals() {
        return new ValidatorEventTotalsImpl();
    }

    /**
     * Create an instance of {@link ValidatorResults }
     * 
     */
    public ValidatorResultsImpl createValidatorResults() {
        return new ValidatorResultsImpl();
    }

    /**
     * Create an instance of {@link ValidatorDocument }
     * 
     */
    public ValidatorDocumentImpl createValidatorDocument() {
        return new ValidatorDocumentImpl();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorSubmissionImpl }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate", name = "submission")
    public JAXBElement<ValidatorSubmissionImpl> createSubmission(ValidatorSubmissionImpl value) {
        return new JAXBElement<ValidatorSubmissionImpl>(_Submission_QNAME, ValidatorSubmissionImpl.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorReportImpl }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate", name = "report")
    public JAXBElement<ValidatorReportImpl> createReport(ValidatorReportImpl value) {
        return new JAXBElement<ValidatorReportImpl>(_Report_QNAME, ValidatorReportImpl.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorErrorImpl }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate", name = "error")
    public JAXBElement<ValidatorErrorImpl> createError(ValidatorErrorImpl value) {
        return new JAXBElement<ValidatorErrorImpl>(_Error_QNAME, ValidatorErrorImpl.class, null, value);
    }

}
