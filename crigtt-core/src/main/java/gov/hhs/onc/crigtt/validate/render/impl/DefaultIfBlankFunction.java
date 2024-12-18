//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.Map;
import javax.annotation.Nonnegative;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

@Component("extFuncDefaultIfBlank")
public class DefaultIfBlankFunction extends AbstractCrigttExtensionFunction {
    public static final StructuredQName NAME = (new QName("crigtt-validate", "urn:gov.hhs.onc.crigtt:validate", "default-if-blank")).getStructuredQName();

    public DefaultIfBlankFunction() {
        super(NAME, SequenceType.SINGLE_STRING, new SequenceType[]{SequenceType.SINGLE_STRING, SequenceType.OPTIONAL_STRING});
    }

    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        return new XdmAtomicValue((String)StringUtils.defaultIfBlank(CrigttXpathUtils.getStringValue(args[0]), CrigttXpathUtils.getStringValue(args[1])));
    }

    @Nonnegative
    public int getMinimumNumberOfArguments() {
        return 1;
    }
}
