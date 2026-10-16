
package gov.hhs.onc.crigtt.validate.testcases.impl;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.validate.testcases.CustomEvalExpression;
import gov.hhs.onc.crigtt.validate.testcases.ElementSet;
import gov.hhs.onc.crigtt.validate.testcases.ElementSets;
import gov.hhs.onc.crigtt.validate.testcases.ExpectedResults;
import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.XPathSet;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gov.hhs.onc.crigtt.validate.testcases.impl package. 
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

    private final static QName _Testcase_QNAME = new QName("urn:gov.hhs.onc.crigtt:validate-testcases", "testcase");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gov.hhs.onc.crigtt.validate.testcases.impl
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Testcase }
     * 
     */
    public TestcaseImpl createTestcase() {
        return new TestcaseImpl();
    }

    /**
     * Create an instance of {@link ElementSet }
     * 
     */
    public ElementSetImpl createElementSet() {
        return new ElementSetImpl();
    }

    /**
     * Create an instance of {@link ElementSets }
     * 
     */
    public ElementSetsImpl createElementSets() {
        return new ElementSetsImpl();
    }

    /**
     * Create an instance of {@link ExpectedResults }
     * 
     */
    public ExpectedResultsImpl createExpectedResults() {
        return new ExpectedResultsImpl();
    }

    /**
     * Create an instance of {@link MatchingCondition }
     * 
     */
    public MatchingConditionImpl createMatchingCondition() {
        return new MatchingConditionImpl();
    }

    /**
     * Create an instance of {@link SubExpressionSet }
     * 
     */
    public SubExpressionSetImpl createSubExpressionSet() {
        return new SubExpressionSetImpl();
    }

    /**
     * Create an instance of {@link CustomEvalExpression }
     * 
     */
    public CustomEvalExpressionImpl createCustomEvalExpression() {
        return new CustomEvalExpressionImpl();
    }

    /**
     * Create an instance of {@link XPathSet }
     * 
     */
    public XPathSetImpl createXPathSet() {
        return new XPathSetImpl();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link TestcaseImpl }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "urn:gov.hhs.onc.crigtt:validate-testcases", name = "testcase")
    public JAXBElement<TestcaseImpl> createTestcase(TestcaseImpl value) {
        return new JAXBElement<TestcaseImpl>(_Testcase_QNAME, TestcaseImpl.class, null, value);
    }

}
