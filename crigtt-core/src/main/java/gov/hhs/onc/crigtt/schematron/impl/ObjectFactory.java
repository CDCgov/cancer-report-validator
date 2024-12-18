
package gov.hhs.onc.crigtt.schematron.impl;

import javax.xml.bind.annotation.XmlRegistry;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.schematron.Active;
import gov.hhs.onc.crigtt.schematron.Assertion;
import gov.hhs.onc.crigtt.schematron.Diagnostic;
import gov.hhs.onc.crigtt.schematron.Diagnostics;
import gov.hhs.onc.crigtt.schematron.Direction;
import gov.hhs.onc.crigtt.schematron.Emphasis;
import gov.hhs.onc.crigtt.schematron.Extension;
import gov.hhs.onc.crigtt.schematron.Include;
import gov.hhs.onc.crigtt.schematron.Let;
import gov.hhs.onc.crigtt.schematron.Name;
import gov.hhs.onc.crigtt.schematron.Namespace;
import gov.hhs.onc.crigtt.schematron.Paragraph;
import gov.hhs.onc.crigtt.schematron.Parameter;
import gov.hhs.onc.crigtt.schematron.Pattern;
import gov.hhs.onc.crigtt.schematron.Phase;
import gov.hhs.onc.crigtt.schematron.Report;
import gov.hhs.onc.crigtt.schematron.Rule;
import gov.hhs.onc.crigtt.schematron.Schema;
import gov.hhs.onc.crigtt.schematron.Span;
import gov.hhs.onc.crigtt.schematron.Title;
import gov.hhs.onc.crigtt.schematron.ValueOf;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.schematron.impl package. 
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


    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.schematron.impl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Schema }
     * 
     */
    public SchemaImpl createSchema() {
        return new SchemaImpl();
    }

    /**
     * Create an instance of {@link Include }
     * 
     */
    public IncludeImpl createInclude() {
        return new IncludeImpl();
    }

    /**
     * Create an instance of {@link Title }
     * 
     */
    public TitleImpl createTitle() {
        return new TitleImpl();
    }

    /**
     * Create an instance of {@link Direction }
     * 
     */
    public DirectionImpl createDirection() {
        return new DirectionImpl();
    }

    /**
     * Create an instance of {@link Namespace }
     * 
     */
    public NamespaceImpl createNamespace() {
        return new NamespaceImpl();
    }

    /**
     * Create an instance of {@link Paragraph }
     * 
     */
    public ParagraphImpl createParagraph() {
        return new ParagraphImpl();
    }

    /**
     * Create an instance of {@link Let }
     * 
     */
    public LetImpl createLet() {
        return new LetImpl();
    }

    /**
     * Create an instance of {@link Phase }
     * 
     */
    public PhaseImpl createPhase() {
        return new PhaseImpl();
    }

    /**
     * Create an instance of {@link Active }
     * 
     */
    public ActiveImpl createActive() {
        return new ActiveImpl();
    }

    /**
     * Create an instance of {@link Emphasis }
     * 
     */
    public EmphasisImpl createEmphasis() {
        return new EmphasisImpl();
    }

    /**
     * Create an instance of {@link Span }
     * 
     */
    public SpanImpl createSpan() {
        return new SpanImpl();
    }

    /**
     * Create an instance of {@link Pattern }
     * 
     */
    public PatternImpl createPattern() {
        return new PatternImpl();
    }

    /**
     * Create an instance of {@link Rule }
     * 
     */
    public RuleImpl createRule() {
        return new RuleImpl();
    }

    /**
     * Create an instance of {@link Assertion }
     * 
     */
    public AssertionImpl createAssertion() {
        return new AssertionImpl();
    }

    /**
     * Create an instance of {@link Report }
     * 
     */
    public ReportImpl createReport() {
        return new ReportImpl();
    }

    /**
     * Create an instance of {@link Name }
     * 
     */
    public NameImpl createName() {
        return new NameImpl();
    }

    /**
     * Create an instance of {@link ValueOf }
     * 
     */
    public ValueOfImpl createValueOf() {
        return new ValueOfImpl();
    }

    /**
     * Create an instance of {@link Extension }
     * 
     */
    public ExtensionImpl createExtension() {
        return new ExtensionImpl();
    }

    /**
     * Create an instance of {@link Parameter }
     * 
     */
    public ParameterImpl createParameter() {
        return new ParameterImpl();
    }

    /**
     * Create an instance of {@link Diagnostics }
     * 
     */
    public DiagnosticsImpl createDiagnostics() {
        return new DiagnosticsImpl();
    }

    /**
     * Create an instance of {@link Diagnostic }
     * 
     */
    public DiagnosticImpl createDiagnostic() {
        return new DiagnosticImpl();
    }

}
