
package gov.hhs.onc.crigtt.validate;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.validate.impl.ValidatorAssertionImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorErrorImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorEventTotalsImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorLocationImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorPatternImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorPhaseImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorReportImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResultsImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorRuleImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorSchemaImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorSubmissionImpl;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.validate package. 
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

    private final static Void _useJAXBProperties = null;
    private final static QName _Submission_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate", "submission");
    private final static QName _Report_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate", "report");
    private final static QName _Error_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate", "error");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.validate
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ValidatorSubmission }
     * 
     */
    public ValidatorSubmission createValidatorSubmission() {
        return new ValidatorSubmissionImpl();
    }

    /**
     * Create an instance of {@link ValidatorReport }
     * 
     */
    public ValidatorReport createValidatorReport() {
        return new ValidatorReportImpl();
    }

    /**
     * Create an instance of {@link ValidatorError }
     * 
     */
    public ValidatorError createValidatorError() {
        return new ValidatorErrorImpl();
    }

    /**
     * Create an instance of {@link ValidatorLocation }
     * 
     */
    public ValidatorLocation createValidatorLocation() {
        return new ValidatorLocationImpl();
    }

    /**
     * Create an instance of {@link ValidatorSchema }
     * 
     */
    public ValidatorSchema createValidatorSchema() {
        return new ValidatorSchemaImpl();
    }

    /**
     * Create an instance of {@link ValidatorPhase }
     * 
     */
    public ValidatorPhase createValidatorPhase() {
        return new ValidatorPhaseImpl();
    }

    /**
     * Create an instance of {@link ValidatorPattern }
     * 
     */
    public ValidatorPattern createValidatorPattern() {
        return new ValidatorPatternImpl();
    }

    /**
     * Create an instance of {@link ValidatorRule }
     * 
     */
    public ValidatorRule createValidatorRule() {
        return new ValidatorRuleImpl();
    }

    /**
     * Create an instance of {@link ValidatorAssertion }
     * 
     */
    public ValidatorAssertion createValidatorAssertion() {
        return new ValidatorAssertionImpl();
    }

    /**
     * Create an instance of {@link ValidatorEvent }
     * 
     */
    public ValidatorEvent createValidatorEvent() {
        return new ValidatorEventImpl();
    }

    /**
     * Create an instance of {@link ValidatorEventTotals }
     * 
     */
    public ValidatorEventTotals createValidatorEventTotals() {
        return new ValidatorEventTotalsImpl();
    }

    /**
     * Create an instance of {@link ValidatorResults }
     * 
     */
    public ValidatorResults createValidatorResults() {
        return new ValidatorResultsImpl();
    }

    /**
     * Create an instance of {@link ValidatorDocument }
     * 
     */
    public ValidatorDocument createValidatorDocument() {
        return new ValidatorDocumentImpl();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorSubmission }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate", name = "submission")
    public JAXBElement<ValidatorSubmission> createSubmission(ValidatorSubmission value) {
        return new JAXBElement<ValidatorSubmission>(_Submission_QNAME, ((Class) ValidatorSubmissionImpl.class), null, ((ValidatorSubmissionImpl) value));
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorReport }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate", name = "report")
    public JAXBElement<ValidatorReport> createReport(ValidatorReport value) {
        return new JAXBElement<ValidatorReport>(_Report_QNAME, ((Class) ValidatorReportImpl.class), null, ((ValidatorReportImpl) value));
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatorError }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate", name = "error")
    public JAXBElement<ValidatorError> createError(ValidatorError value) {
        return new JAXBElement<ValidatorError>(_Error_QNAME, ((Class) ValidatorErrorImpl.class), null, ((ValidatorErrorImpl) value));
    }

}
