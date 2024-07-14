
package gov.hhs.onc.crigtt.validate.testcases;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.validate.testcases.impl.CustomEvalExpressionImpl;
import gov.hhs.onc.crigtt.validate.testcases.impl.ElementSetImpl;
import gov.hhs.onc.crigtt.validate.testcases.impl.ElementSetsImpl;
import gov.hhs.onc.crigtt.validate.testcases.impl.ExpectedResultsImpl;
import gov.hhs.onc.crigtt.validate.testcases.impl.MatchingConditionImpl;
import gov.hhs.onc.crigtt.validate.testcases.impl.SubExpressionSetImpl;
import gov.hhs.onc.crigtt.validate.testcases.impl.TestcaseImpl;
import gov.hhs.onc.crigtt.validate.testcases.impl.XPathSetImpl;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.validate.testcases package. 
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
    private final static QName _Testcase_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate-testcases", "testcase");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.validate.testcases
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Testcase }
     * 
     */
    public Testcase createTestcase() {
        return new TestcaseImpl();
    }

    /**
     * Create an instance of {@link ElementSet }
     * 
     */
    public ElementSet createElementSet() {
        return new ElementSetImpl();
    }

    /**
     * Create an instance of {@link ElementSets }
     * 
     */
    public ElementSets createElementSets() {
        return new ElementSetsImpl();
    }

    /**
     * Create an instance of {@link ExpectedResults }
     * 
     */
    public ExpectedResults createExpectedResults() {
        return new ExpectedResultsImpl();
    }

    /**
     * Create an instance of {@link MatchingCondition }
     * 
     */
    public MatchingCondition createMatchingCondition() {
        return new MatchingConditionImpl();
    }

    /**
     * Create an instance of {@link SubExpressionSet }
     * 
     */
    public SubExpressionSet createSubExpressionSet() {
        return new SubExpressionSetImpl();
    }

    /**
     * Create an instance of {@link CustomEvalExpression }
     * 
     */
    public CustomEvalExpression createCustomEvalExpression() {
        return new CustomEvalExpressionImpl();
    }

    /**
     * Create an instance of {@link XPathSet }
     * 
     */
    public XPathSet createXPathSet() {
        return new XPathSetImpl();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Testcase }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate-testcases", name = "testcase")
    public JAXBElement<Testcase> createTestcase(Testcase value) {
        return new JAXBElement<Testcase>(_Testcase_QNAME, ((Class) TestcaseImpl.class), null, ((TestcaseImpl) value));
    }

}
