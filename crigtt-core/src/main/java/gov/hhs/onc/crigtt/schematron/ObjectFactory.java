
package gov.hhs.onc.crigtt.schematron;

import javax.xml.bind.annotation.XmlRegistry;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.schematron.impl.ActiveImpl;
import gov.hhs.onc.crigtt.schematron.impl.AssertionImpl;
import gov.hhs.onc.crigtt.schematron.impl.DiagnosticImpl;
import gov.hhs.onc.crigtt.schematron.impl.DiagnosticsImpl;
import gov.hhs.onc.crigtt.schematron.impl.DirectionImpl;
import gov.hhs.onc.crigtt.schematron.impl.EmphasisImpl;
import gov.hhs.onc.crigtt.schematron.impl.ExtensionImpl;
import gov.hhs.onc.crigtt.schematron.impl.IncludeImpl;
import gov.hhs.onc.crigtt.schematron.impl.LetImpl;
import gov.hhs.onc.crigtt.schematron.impl.NameImpl;
import gov.hhs.onc.crigtt.schematron.impl.NamespaceImpl;
import gov.hhs.onc.crigtt.schematron.impl.ParagraphImpl;
import gov.hhs.onc.crigtt.schematron.impl.ParameterImpl;
import gov.hhs.onc.crigtt.schematron.impl.PatternImpl;
import gov.hhs.onc.crigtt.schematron.impl.PhaseImpl;
import gov.hhs.onc.crigtt.schematron.impl.ReportImpl;
import gov.hhs.onc.crigtt.schematron.impl.RuleImpl;
import gov.hhs.onc.crigtt.schematron.impl.SchemaImpl;
import gov.hhs.onc.crigtt.schematron.impl.SpanImpl;
import gov.hhs.onc.crigtt.schematron.impl.TitleImpl;
import gov.hhs.onc.crigtt.schematron.impl.ValueOfImpl;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.schematron package. 
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

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.schematron
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Schema }
     * 
     */
    public Schema createSchema() {
        return new SchemaImpl();
    }

    /**
     * Create an instance of {@link Include }
     * 
     */
    public Include createInclude() {
        return new IncludeImpl();
    }

    /**
     * Create an instance of {@link Title }
     * 
     */
    public Title createTitle() {
        return new TitleImpl();
    }

    /**
     * Create an instance of {@link Direction }
     * 
     */
    public Direction createDirection() {
        return new DirectionImpl();
    }

    /**
     * Create an instance of {@link Namespace }
     * 
     */
    public Namespace createNamespace() {
        return new NamespaceImpl();
    }

    /**
     * Create an instance of {@link Paragraph }
     * 
     */
    public Paragraph createParagraph() {
        return new ParagraphImpl();
    }

    /**
     * Create an instance of {@link Let }
     * 
     */
    public Let createLet() {
        return new LetImpl();
    }

    /**
     * Create an instance of {@link Phase }
     * 
     */
    public Phase createPhase() {
        return new PhaseImpl();
    }

    /**
     * Create an instance of {@link Active }
     * 
     */
    public Active createActive() {
        return new ActiveImpl();
    }

    /**
     * Create an instance of {@link Emphasis }
     * 
     */
    public Emphasis createEmphasis() {
        return new EmphasisImpl();
    }

    /**
     * Create an instance of {@link Span }
     * 
     */
    public Span createSpan() {
        return new SpanImpl();
    }

    /**
     * Create an instance of {@link Pattern }
     * 
     */
    public Pattern createPattern() {
        return new PatternImpl();
    }

    /**
     * Create an instance of {@link Rule }
     * 
     */
    public Rule createRule() {
        return new RuleImpl();
    }

    /**
     * Create an instance of {@link Assertion }
     * 
     */
    public Assertion createAssertion() {
        return new AssertionImpl();
    }

    /**
     * Create an instance of {@link Report }
     * 
     */
    public Report createReport() {
        return new ReportImpl();
    }

    /**
     * Create an instance of {@link Name }
     * 
     */
    public Name createName() {
        return new NameImpl();
    }

    /**
     * Create an instance of {@link ValueOf }
     * 
     */
    public ValueOf createValueOf() {
        return new ValueOfImpl();
    }

    /**
     * Create an instance of {@link Extension }
     * 
     */
    public Extension createExtension() {
        return new ExtensionImpl();
    }

    /**
     * Create an instance of {@link Parameter }
     * 
     */
    public Parameter createParameter() {
        return new ParameterImpl();
    }

    /**
     * Create an instance of {@link Diagnostics }
     * 
     */
    public Diagnostics createDiagnostics() {
        return new DiagnosticsImpl();
    }

    /**
     * Create an instance of {@link Diagnostic }
     * 
     */
    public Diagnostic createDiagnostic() {
        return new DiagnosticImpl();
    }

}
