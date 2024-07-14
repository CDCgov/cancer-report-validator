//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.Map;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

@Component("extFuncIsBlank")
public class IsBlankFunction extends AbstractCrigttExtensionFunction {
    public static final StructuredQName NAME = (new QName("crigtt-validate", "urn:gov.hhs.onc.crigtt:validate", "is-blank")).getStructuredQName();

    public IsBlankFunction() {
        super(NAME, SequenceType.SINGLE_BOOLEAN, new SequenceType[]{SequenceType.SINGLE_STRING});
    }

    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        return new XdmAtomicValue(StringUtils.isBlank(CrigttXpathUtils.getStringValue(args[0])));
    }
}
