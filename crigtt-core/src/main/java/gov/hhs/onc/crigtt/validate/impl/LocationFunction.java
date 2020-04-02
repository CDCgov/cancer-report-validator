package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import java.util.Arrays;
import java.util.Map;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.value.SequenceType;
import org.springframework.stereotype.Component;

@Component("extFuncLoc")
public class LocationFunction extends AbstractCrigttExtensionFunction {
    public final static StructuredQName NAME = new QName(CrigttXmlNs.VALIDATE_PREFIX, CrigttXmlNs.VALIDATE_URI, "location").getStructuredQName();

    public LocationFunction() {
        super(NAME, SequenceType.NUMERIC_SEQUENCE, SequenceType.SINGLE_NODE);
    }

    @Override
    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        XdmNode contextNode = ((XdmNode) args[0]);

        return new XdmValue(Arrays.asList(new XdmAtomicValue(contextNode.getLineNumber()), new XdmAtomicValue(contextNode.getColumnNumber())));
    }
}
