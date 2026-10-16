
package gov.hhs.onc.crigtt.schematron.svrl.impl;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import javax.xml.namespace.QName;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.schematron.svrl.ActivePattern;
import gov.hhs.onc.crigtt.schematron.svrl.AttributeValueNamespace;
import gov.hhs.onc.crigtt.schematron.svrl.DiagnosticReference;
import gov.hhs.onc.crigtt.schematron.svrl.FailedAssertion;
import gov.hhs.onc.crigtt.schematron.svrl.FiredRule;
import gov.hhs.onc.crigtt.schematron.svrl.Output;
import gov.hhs.onc.crigtt.schematron.svrl.SuccessfulReport;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.schematron.svrl.impl package. 
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

    private final static QName _Text_QNAME = new QName("http://purl.oclc.org/dsdl/svrl", "text");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.schematron.svrl.impl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Output }
     * 
     */
    public OutputImpl createOutput() {
        return new OutputImpl();
    }

    /**
     * Create an instance of {@link AttributeValueNamespace }
     * 
     */
    public AttributeValueNamespaceImpl createAttributeValueNamespace() {
        return new AttributeValueNamespaceImpl();
    }

    /**
     * Create an instance of {@link ActivePattern }
     * 
     */
    public ActivePatternImpl createActivePattern() {
        return new ActivePatternImpl();
    }

    /**
     * Create an instance of {@link FiredRule }
     * 
     */
    public FiredRuleImpl createFiredRule() {
        return new FiredRuleImpl();
    }

    /**
     * Create an instance of {@link DiagnosticReference }
     * 
     */
    public DiagnosticReferenceImpl createDiagnosticReference() {
        return new DiagnosticReferenceImpl();
    }

    /**
     * Create an instance of {@link FailedAssertion }
     * 
     */
    public FailedAssertionImpl createFailedAssertion() {
        return new FailedAssertionImpl();
    }

    /**
     * Create an instance of {@link SuccessfulReport }
     * 
     */
    public SuccessfulReportImpl createSuccessfulReport() {
        return new SuccessfulReportImpl();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://purl.oclc.org/dsdl/svrl", name = "text")
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    public JAXBElement<String> createText(String value) {
        return new JAXBElement<String>(_Text_QNAME, String.class, null, value);
    }

}
