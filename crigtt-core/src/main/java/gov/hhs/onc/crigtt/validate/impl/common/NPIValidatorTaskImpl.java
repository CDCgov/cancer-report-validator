package gov.hhs.onc.crigtt.validate.impl.common;

import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.sxpath.IndependentContext;

import java.util.Arrays;
import java.util.List;

public class NPIValidatorTaskImpl extends CommonAbstractValidatorTask {
    /*
        For each OID, validate that the element's @extension value is 10 digit in length
    * */
    private static final String NPI_OID = "2.16.840.1.113883.4.6";
    private static final String XPATH = "/ClinicalDocument//id[@root='" + NPI_OID + "']/@extension";
    private static final String REGEX = "\\d{10}";

    private static final List<String> expectedResults = Arrays.asList("A 10 digit number");

    public NPIValidatorTaskImpl(XdmDocument doc, IndependentContext xpathContext, CrigttXpathCompiler xPathCompiler) {
        super(doc, xpathContext, xPathCompiler);
    }
    @Override
    public List<ValidatorEvent> call() throws Exception {
        List<XdmNode> nodes = Arrays.asList(this.xpathCompiler.evaluateNodes(XPATH, this.xpathContext, this.doc));
        return CommonValidatorTaskUtil.call(REGEX, XPATH, nodes, expectedResults);
    }
}
