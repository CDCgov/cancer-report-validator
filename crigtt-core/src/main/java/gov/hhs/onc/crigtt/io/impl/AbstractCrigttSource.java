package gov.hhs.onc.crigtt.io.impl;

import java.io.InputStream;
import java.io.Reader;
import javax.annotation.Nullable;
import javax.xml.transform.stream.StreamSource;
import org.xml.sax.InputSource;

public abstract class AbstractCrigttSource extends StreamSource {
    protected class CrigttInputSource extends InputSource {
        @Nullable
        @Override
        public InputStream getByteStream() {
            return AbstractCrigttSource.this.getInputStream();
        }

        @Override
        public void setByteStream(@Nullable InputStream inStream) {
            AbstractCrigttSource.this.setInputStream(inStream);
        }

        @Nullable
        @Override
        public Reader getCharacterStream() {
            return AbstractCrigttSource.this.getReader();
        }

        @Override
        public void setCharacterStream(@Nullable Reader reader) {
            AbstractCrigttSource.this.setReader(reader);
        }

        @Nullable
        @Override
        public String getEncoding() {
            return super.getEncoding();
        }

        @Override
        public void setEncoding(@Nullable String enc) {
            super.setEncoding(enc);
        }

        @Nullable
        @Override
        public String getPublicId() {
            return AbstractCrigttSource.this.getPublicId();
        }

        @Override
        public void setPublicId(@Nullable String publicId) {
            AbstractCrigttSource.this.setPublicId(publicId);
        }

        @Nullable
        @Override
        public String getSystemId() {
            return AbstractCrigttSource.this.getSystemId();
        }

        @Override
        public void setSystemId(@Nullable String sysId) {
            AbstractCrigttSource.this.setSystemId(sysId);
        }
    }

    protected CrigttInputSource inputSrc = new CrigttInputSource();

    protected AbstractCrigttSource() {
        this(null);
    }

    protected AbstractCrigttSource(@Nullable String sysId) {
        this(null, sysId);
    }

    protected AbstractCrigttSource(@Nullable String publicId, @Nullable String sysId) {
        super(sysId);

        this.setPublicId(publicId);
    }

    public CrigttInputSource asInputSource() {
        return this.inputSrc;
    }

    @Nullable
    @Override
    public String getPublicId() {
        return super.getPublicId();
    }

    @Override
    public void setPublicId(@Nullable String publicId) {
        super.setPublicId(publicId);
    }

    @Nullable
    @Override
    public String getSystemId() {
        return super.getSystemId();
    }

    @Override
    public void setSystemId(@Nullable String sysId) {
        super.setSystemId(sysId);
    }
}
