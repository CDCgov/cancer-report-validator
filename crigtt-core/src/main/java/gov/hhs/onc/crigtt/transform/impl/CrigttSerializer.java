package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.config.impl.CrigttConfiguration;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Properties;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamResult;
import net.sf.saxon.event.FilterFactory;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.event.Sender;
import net.sf.saxon.lib.AugmentedSource;
import net.sf.saxon.lib.ParseOptions;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.Serializer;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.trans.XPathException;
import org.apache.commons.collections4.CollectionUtils;

public class CrigttSerializer extends Serializer {
    @Resource(name = "charsetUtf8")
    private Charset enc;

    private Properties defaultOutProps;

    public CrigttSerializer(CrigttProcessor processor) {
        this(processor, null);
    }

    public CrigttSerializer(CrigttProcessor processor, @Nullable Properties outProps) {
        super(processor);

        if (outProps != null) {
            this.setOutputProperties(outProps);
        }
    }

    @Override
    public String serializeNodeToString(XdmNode node) throws SaxonApiException {
        return this.serializeToString(node.getUnderlyingNode());
    }

    public void serializeToFile(Source src, File file) throws SaxonApiException {
        this.serializeToFile(src, file, this.getOutputProperties());
    }

    public void serializeToFile(Source src, File file, Properties outProps) throws SaxonApiException {
        try (FileOutputStream outStream = new FileOutputStream(file)) {
            this.serializeToStream(src, outStream, outProps);
        } catch (IOException e) {
            throw new SaxonApiException(e);
        }
    }

    public String serializeToString(Source src) throws SaxonApiException {
        return this.serializeToString(src, this.getOutputProperties());
    }

    public String serializeToString(Source src, Properties outProps) throws SaxonApiException {
        byte[] resultBytes = this.serializeToBytes(src, outProps);
        String encName = outProps.getProperty(OutputKeys.ENCODING);

        try {
            return ((encName != null) ? new String(resultBytes, encName) : new String(resultBytes, this.enc));
        } catch (UnsupportedEncodingException e) {
            throw new SaxonApiException(String.format("Unable to use encoding (name=%s) for serializing node string to bytes.", encName), e);
        }
    }

    public byte[] serializeToBytes(Source src) throws SaxonApiException {
        return this.serializeToBytes(src, this.getOutputProperties());
    }

    public byte[] serializeToBytes(Source src, Properties outProps) throws SaxonApiException {
        return this.serializeToStream(src, new ByteArrayOutputStream(), outProps).toByteArray();
    }

    public <T extends OutputStream> T serializeToStream(Source src, T outStream) throws SaxonApiException {
        return this.serializeToStream(src, outStream, this.getOutputProperties());
    }

    public <T extends OutputStream> T serializeToStream(Source src, T outStream, Properties outProps) throws SaxonApiException {
        this.serializeToResult(src, new StreamResult(outStream), outProps);

        return outStream;
    }

    public <T extends Result> T serializeToResult(Source src, T result) throws SaxonApiException {
        return this.serializeToResult(src, result, this.getOutputProperties());
    }

    public <T extends Result> T serializeToResult(Source src, T result, Properties outProps) throws SaxonApiException {
        CrigttConfiguration config = this.getProcessor().getUnderlyingConfiguration();
        ParseOptions parseOpts = config.getParseOptions();

        try {
            Receiver receiver = config.getSerializerFactory().getReceiver(result, config.makePipelineConfiguration(), outProps);

            if (src instanceof AugmentedSource) {
                AugmentedSource augmentedSrc = ((AugmentedSource) src);

                parseOpts = augmentedSrc.getParseOptions();

                List<FilterFactory> srcFilters = augmentedSrc.getFilters();

                if (!CollectionUtils.isEmpty(srcFilters)) {
                    for (int a = (srcFilters.size() - 1); a >= 0; a--) {
                        receiver = srcFilters.get(a).makeFilter(receiver);
                    }

                    srcFilters.clear();
                }
            }

            Sender.send(src, receiver, parseOpts);

            receiver.close();
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }

        return result;
    }

    @Nullable
    public Properties getDefaultOutputProperties() {
        return this.defaultOutProps;
    }

    @Override
    protected void setDefaultOutputProperties(@Nullable Properties defaultOutProps) {
        super.setDefaultOutputProperties((this.defaultOutProps = defaultOutProps));
    }

    @Override
    public Properties getOutputProperties() {
        return super.getOutputProperties();
    }

    public void setOutputProperties(Properties outProps) {
        outProps.stringPropertyNames().forEach(outPropName -> this.setOutputProperty(Property.get(outPropName), outProps.getProperty(outPropName)));
    }

    @Override
    public CrigttProcessor getProcessor() {
        return ((CrigttProcessor) super.getProcessor());
    }
}
