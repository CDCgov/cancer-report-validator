
package gov.hhs.onc.crigtt.validate.vocab;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.validate.vocab.impl.CodeImpl;
import gov.hhs.onc.crigtt.validate.vocab.impl.CodeSystemImpl;
import gov.hhs.onc.crigtt.validate.vocab.impl.ValueSetImpl;
import gov.hhs.onc.crigtt.validate.vocab.impl.VocabAssertionImpl;
import gov.hhs.onc.crigtt.validate.vocab.impl.VocabAssertionsImpl;
import gov.hhs.onc.crigtt.validate.vocab.impl.VocabSetImpl;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.validate.vocab package. 
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
    private final static QName _VocabAssertions_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate-vocab", "vocabAssertions");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.validate.vocab
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link VocabAssertions }
     * 
     */
    public VocabAssertions createVocabAssertions() {
        return new VocabAssertionsImpl();
    }

    /**
     * Create an instance of {@link ValueSet }
     * 
     */
    public ValueSet createValueSet() {
        return new ValueSetImpl();
    }

    /**
     * Create an instance of {@link CodeSystem }
     * 
     */
    public CodeSystem createCodeSystem() {
        return new CodeSystemImpl();
    }

    /**
     * Create an instance of {@link VocabSet }
     * 
     */
    public VocabSet createVocabSet() {
        return new VocabSetImpl();
    }

    /**
     * Create an instance of {@link Code }
     * 
     */
    public Code createCode() {
        return new CodeImpl();
    }

    /**
     * Create an instance of {@link VocabAssertion }
     * 
     */
    public VocabAssertion createVocabAssertion() {
        return new VocabAssertionImpl();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link VocabAssertions }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate-vocab", name = "vocabAssertions")
    public JAXBElement<VocabAssertions> createVocabAssertions(VocabAssertions value) {
        return new JAXBElement<VocabAssertions>(_VocabAssertions_QNAME, ((Class) VocabAssertionsImpl.class), null, ((VocabAssertionsImpl) value));
    }

}
