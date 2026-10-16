package gov.hhs.onc.crigtt.io.impl;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import javax.annotation.Nullable;

public class ByteArraySource extends AbstractCrigttSource {
    protected byte[] bytes;

    public ByteArraySource(byte[] bytes) {
        this(bytes, null);
    }

    public ByteArraySource(byte[] bytes, @Nullable String sysId) {
        this(bytes, null, sysId);
    }

    public ByteArraySource(byte[] bytes, @Nullable String publicId, @Nullable String sysId) {
        this(publicId, sysId);

        this.bytes = bytes;
    }

    protected ByteArraySource(@Nullable String publicId, @Nullable String sysId) {
        super(publicId, sysId);
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    @Override
    public InputStream getInputStream() {
        return new ByteArrayInputStream(this.bytes);
    }
}
