package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.Map;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.stereotype.Component;

@Component("extFuncEscapeHtml")
public class EscapeHtmlFunction extends AbstractCrigttExtensionFunction {
    public final static StructuredQName NAME = new QName(CrigttXmlNs.VALIDATE_PREFIX, CrigttXmlNs.VALIDATE_URI, "escape-html").getStructuredQName();

    public EscapeHtmlFunction() {
        super(NAME, SequenceType.SINGLE_STRING, SequenceType.SINGLE_STRING);
    }

    @Override
    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        return new XdmAtomicValue(StringEscapeUtils.escapeHtml4(CrigttXpathUtils.getStringValue(args[0])));
    }
}
