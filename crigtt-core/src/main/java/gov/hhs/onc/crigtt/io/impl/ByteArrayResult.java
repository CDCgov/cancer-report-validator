package gov.hhs.onc.crigtt.io.impl;

import java.io.ByteArrayOutputStream;
import javax.annotation.Nullable;

public class ByteArrayResult extends AbstractCrigttResult {
    public ByteArrayResult() {
        this(null);
    }

    public ByteArrayResult(@Nullable String sysId) {
        super(new ByteArrayOutputStream(), sysId);
    }

    public byte[] getBytes() {
        return this.getOutputStream().toByteArray();
    }

    @Override
    public ByteArrayOutputStream getOutputStream() {
        return ((ByteArrayOutputStream) super.getOutputStream());
    }
}
