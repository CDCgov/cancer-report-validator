//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.util.Map;
import java.util.TimeZone;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.value.SequenceType;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.stereotype.Component;

@Component("extFuncFormatTimestamp")
public class FormatTimestampFunction extends AbstractCrigttExtensionFunction {
    public static final StructuredQName NAME = (new QName("crigtt-validate", "urn:gov.hhs.onc.crigtt:validate", "format-timestamp")).getStructuredQName();

    public FormatTimestampFunction() {
        super(NAME, SequenceType.SINGLE_STRING, new SequenceType[]{SequenceType.SINGLE_LONG});
    }

    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        return new XdmAtomicValue(DateFormatUtils.format(CrigttXpathUtils.getAtomicValue(args[0]).getLongValue(), "yyyy-MM-dd HH:mm:ss Z", (TimeZone)((Map)contextData.get("crigtt.context.data.validate.render.opts")).get("timeZone")));
    }
}
