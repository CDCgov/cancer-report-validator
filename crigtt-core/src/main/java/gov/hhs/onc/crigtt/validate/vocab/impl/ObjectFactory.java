
package gov.hhs.onc.crigtt.validate.vocab.impl;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.CodeSystem;
import gov.hhs.onc.crigtt.validate.vocab.ValueSet;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertions;
import gov.hhs.onc.crigtt.validate.vocab.VocabSet;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.validate.vocab.impl package. 
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

    private final static QName _VocabAssertions_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate-vocab", "vocabAssertions");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.validate.vocab.impl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link VocabAssertions }
     * 
     */
    public VocabAssertionsImpl createVocabAssertions() {
        return new VocabAssertionsImpl();
    }

    /**
     * Create an instance of {@link ValueSet }
     * 
     */
    public ValueSetImpl createValueSet() {
        return new ValueSetImpl();
    }

    /**
     * Create an instance of {@link CodeSystem }
     * 
     */
    public CodeSystemImpl createCodeSystem() {
        return new CodeSystemImpl();
    }

    /**
     * Create an instance of {@link VocabSet }
     * 
     */
    public VocabSetImpl createVocabSet() {
        return new VocabSetImpl();
    }

    /**
     * Create an instance of {@link Code }
     * 
     */
    public CodeImpl createCode() {
        return new CodeImpl();
    }

    /**
     * Create an instance of {@link VocabAssertion }
     * 
     */
    public VocabAssertionImpl createVocabAssertion() {
        return new VocabAssertionImpl();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link VocabAssertionsImpl }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate-vocab", name = "vocabAssertions")
    public JAXBElement<VocabAssertionsImpl> createVocabAssertions(VocabAssertionsImpl value) {
        return new JAXBElement<VocabAssertionsImpl>(_VocabAssertions_QNAME, VocabAssertionsImpl.class, null, value);
    }

}
