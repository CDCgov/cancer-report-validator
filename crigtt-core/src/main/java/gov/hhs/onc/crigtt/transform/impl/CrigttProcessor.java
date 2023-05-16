package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.config.impl.CrigttConfiguration;
import java.io.File;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Properties;
import javax.annotation.Nullable;
import net.sf.saxon.s9api.Processor;

public class CrigttProcessor extends Processor {
    public CrigttProcessor(CrigttConfiguration config) {
        super(config);
    }

    @Override
    public CrigttDocumentBuilder newDocumentBuilder() {
        return new CrigttDocumentBuilder(this.getUnderlyingConfiguration());
    }

    @Override
    public CrigttSerializer newSerializer(File outFile) {
        return this.newSerializer(outFile, null);
    }

    public CrigttSerializer newSerializer(File outFile, @Nullable Properties outProps) {
        CrigttSerializer serializer = this.newSerializer(outProps);
        serializer.setOutputFile(outFile);

        return serializer;
    }

    @Override
    public CrigttSerializer newSerializer(Writer outWriter) {
        return this.newSerializer(outWriter, null);
    }

    public CrigttSerializer newSerializer(Writer outWriter, @Nullable Properties outProps) {
        CrigttSerializer serializer = this.newSerializer(outProps);
        serializer.setOutputWriter(outWriter);

        return serializer;
    }

    @Override
    public CrigttSerializer newSerializer(OutputStream outStream) {
        return this.newSerializer(outStream, null);
    }

    public CrigttSerializer newSerializer(OutputStream outStream, @Nullable Properties outProps) {
        CrigttSerializer serializer = this.newSerializer(outProps);
        serializer.setOutputStream(outStream);

        return serializer;
    }

    @Override
    public CrigttSerializer newSerializer() {
        return this.newSerializer(((Properties) null));
    }

    public CrigttSerializer newSerializer(@Nullable Properties outProps) {
        CrigttSerializer serializer = new CrigttSerializer(this, outProps);
        serializer.setDefaultOutputProperties(this.getUnderlyingConfiguration().getDefaultSerializationProperties());

        return serializer;
    }

    @Override
    public CrigttXpathCompiler newXPathCompiler() {
        return new CrigttXpathCompiler(this);
    }

    @Override
    public CrigttXsltCompiler newXsltCompiler() {
        return new CrigttXsltCompiler(this);
    }

    @Override
    public CrigttConfiguration getUnderlyingConfiguration() {
        return ((CrigttConfiguration) super.getUnderlyingConfiguration());
    }
}
