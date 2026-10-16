
package gov.hhs.onc.crigtt.schematron.svrl;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import javax.xml.namespace.QName;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.schematron.svrl.impl.ActivePatternImpl;
import gov.hhs.onc.crigtt.schematron.svrl.impl.AttributeValueNamespaceImpl;
import gov.hhs.onc.crigtt.schematron.svrl.impl.DiagnosticReferenceImpl;
import gov.hhs.onc.crigtt.schematron.svrl.impl.FailedAssertionImpl;
import gov.hhs.onc.crigtt.schematron.svrl.impl.FiredRuleImpl;
import gov.hhs.onc.crigtt.schematron.svrl.impl.OutputImpl;
import gov.hhs.onc.crigtt.schematron.svrl.impl.SuccessfulReportImpl;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.schematron.svrl package. 
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
    private final static QName _Text_QNAME = new QName("http://purl.oclc.org/dsdl/svrl", "text");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.schematron.svrl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Output }
     * 
     */
    public Output createOutput() {
        return new OutputImpl();
    }

    /**
     * Create an instance of {@link AttributeValueNamespace }
     * 
     */
    public AttributeValueNamespace createAttributeValueNamespace() {
        return new AttributeValueNamespaceImpl();
    }

    /**
     * Create an instance of {@link ActivePattern }
     * 
     */
    public ActivePattern createActivePattern() {
        return new ActivePatternImpl();
    }

    /**
     * Create an instance of {@link FiredRule }
     * 
     */
    public FiredRule createFiredRule() {
        return new FiredRuleImpl();
    }

    /**
     * Create an instance of {@link DiagnosticReference }
     * 
     */
    public DiagnosticReference createDiagnosticReference() {
        return new DiagnosticReferenceImpl();
    }

    /**
     * Create an instance of {@link FailedAssertion }
     * 
     */
    public FailedAssertion createFailedAssertion() {
        return new FailedAssertionImpl();
    }

    /**
     * Create an instance of {@link SuccessfulReport }
     * 
     */
    public SuccessfulReport createSuccessfulReport() {
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
