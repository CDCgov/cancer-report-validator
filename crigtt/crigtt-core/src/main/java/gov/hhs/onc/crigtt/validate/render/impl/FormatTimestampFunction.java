package gov.hhs.onc.crigtt.validate.render.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.transform.CrigttContextDataNames;
import gov.hhs.onc.crigtt.transform.impl.AbstractCrigttExtensionFunction;
import gov.hhs.onc.crigtt.utils.CrigttDateUtils;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
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
    public final static StructuredQName NAME = new QName(CrigttXmlNs.VALIDATE_PREFIX, CrigttXmlNs.VALIDATE_URI, "format-timestamp").getStructuredQName();

    public FormatTimestampFunction() {
        super(NAME, SequenceType.SINGLE_STRING, SequenceType.SINGLE_LONG);
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    protected XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception {
        // noinspection ConstantConditions
        return new XdmAtomicValue(DateFormatUtils.format(CrigttXpathUtils.getAtomicValue(args[0]).getLongValue(), CrigttDateUtils.DISPLAY_FORMAT_PATTERN,
            ((TimeZone) ((Map<String, Object>) contextData.get(CrigttContextDataNames.VALIDATE_RENDER_OPTS_NAME)).get(ValidatorRenderOptions.TIME_ZONE_NAME))));
    }
}
