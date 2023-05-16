package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import gov.hhs.onc.crigtt.utils.CrigttOptionUtils;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.render.HtmlValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.xml.impl.CrigttXmlOutputFactory;
import java.util.Map;
import java.util.regex.Pattern;
import javax.annotation.Resource;
import net.sf.saxon.event.ProxyReceiver;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.lib.AugmentedSource;
import net.sf.saxon.om.NodeName;
import net.sf.saxon.stax.XMLStreamWriterDestination;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.type.SimpleType;
import net.sf.saxon.value.Whitespace;
import org.apache.commons.lang3.BooleanUtils;

public class HtmlValidatorRendererImpl extends AbstractXmlTransformValidatorRenderer implements HtmlValidatorRenderer {
    private static class NormalizeWhitespaceFilter extends ProxyReceiver {
        private final static String DATA_NORMALIZE_WHITESPACE_ATTR_LOCAL_NAME = "data-normalize-whitespace";

        private final static Pattern NORMALIZE_WHITESPACE_PATTERN = Pattern.compile("(\\s)\\1+");
        private final static String NORMALIZE_WHITESPACE_REPLACEMENT = "$1";

        private boolean state;

        public NormalizeWhitespaceFilter(Receiver next) {
            super(next);
        }

        @Override
        public void attribute(NodeName name, SimpleType type, CharSequence value, int locId, int props) throws XPathException {
            if (name.getLocalPart().equals(DATA_NORMALIZE_WHITESPACE_ATTR_LOCAL_NAME)) {
                if (BooleanUtils.toBoolean(value.toString())) {
                    this.state = true;
                }
            } else {
                super.attribute(name, type, value, locId, props);
            }
        }

        @Override
        public void characters(CharSequence chars, int locId, int props) throws XPathException {
            super.characters((this.state ? NORMALIZE_WHITESPACE_PATTERN.matcher(chars.toString().trim()).replaceAll(NORMALIZE_WHITESPACE_REPLACEMENT) : chars),
                locId, props);
        }
    }

    @Resource(name = "xmlOutFactoryCrigtt")
    private CrigttXmlOutputFactory xmlOutFactory;

    @Resource(name = "serializerHtmlDisplay")
    private CrigttSerializer displaySerializer;

    @Resource(name = "serializerHtml")
    private CrigttSerializer serializer;

    public HtmlValidatorRendererImpl() {
        super(ValidatorRenderType.HTML);
    }

    @Override
    protected byte[] renderInternal(ValidatorResponse resp, Map<String, Object> opts) throws Exception {
        ByteArrayResult result = new ByteArrayResult();

        this.renderInternal(resp, opts, new XMLStreamWriterDestination(this.xmlOutFactory.createXMLStreamWriter(result)));

        AugmentedSource augmentedSrc = AugmentedSource.makeAugmentedSource(new ByteArraySource(result.getBytes()));
        augmentedSrc.setStripSpace(Whitespace.ALL);
        augmentedSrc.addFilter(NormalizeWhitespaceFilter::new);

        return (CrigttOptionUtils.toBoolean(opts.get(ValidatorRenderOptions.FORMAT_NAME), ((Boolean) this.defaultOpts.get(ValidatorRenderOptions.FORMAT_NAME)))
            ? this.displaySerializer : this.serializer).serializeToBytes(augmentedSrc);
    }
}
