package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.config.CrigttConfigurationValues;
import gov.hhs.onc.crigtt.config.impl.CrigttConfiguration;
import java.util.Properties;
import javax.annotation.Nullable;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import net.sf.saxon.event.PipelineConfiguration;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.event.StreamWriterToReceiver;
import net.sf.saxon.lib.SaxonOutputKeys;
import net.sf.saxon.lib.SerializerFactory;
import net.sf.saxon.serialize.CharacterMapIndex;
import net.sf.saxon.stax.ReceiverToXMLStreamWriter;
import net.sf.saxon.trans.XPathException;
import org.apache.cxf.staxutils.PrettyPrintXMLStreamWriter;

public class CrigttSerializerFactory extends SerializerFactory {
    private CrigttConfiguration config;

    public CrigttSerializerFactory(CrigttConfiguration config) {
        super(config);

        (this.config = config).setSerializerFactory(this);
    }

    @Override
    public Receiver getReceiver(Result result, PipelineConfiguration pipelineConfig, Properties outProps, @Nullable CharacterMapIndex charMapIndex)
        throws XPathException {
        int indentSpaces = config.getInteger(outProps, SaxonOutputKeys.INDENT_SPACES, -1);
        boolean indent = (this.config.getBoolean(outProps, OutputKeys.INDENT) && (indentSpaces > 0));

        outProps.setProperty(OutputKeys.INDENT, CrigttConfigurationValues.NO);

        Receiver receiver = super.getReceiver(result, pipelineConfig, outProps, charMapIndex);

        if (indent) {
            (receiver = new ReceiverToXMLStreamWriter(new PrettyPrintXMLStreamWriter(new StreamWriterToReceiver(receiver), indentSpaces)))
                .setPipelineConfiguration(pipelineConfig);
        }

        return receiver;
    }
}
