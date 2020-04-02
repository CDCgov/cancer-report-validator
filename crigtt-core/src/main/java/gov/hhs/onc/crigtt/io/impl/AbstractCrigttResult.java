package gov.hhs.onc.crigtt.io.impl;

import java.io.OutputStream;
import javax.annotation.Nullable;
import javax.xml.transform.stream.StreamResult;

public abstract class AbstractCrigttResult extends StreamResult {
    protected AbstractCrigttResult() {
        super();
    }

    protected AbstractCrigttResult(@Nullable String sysId) {
        super(sysId);
    }
    
    protected AbstractCrigttResult(@Nullable OutputStream outStream) {
        super(outStream);
    }
    
    protected AbstractCrigttResult(@Nullable OutputStream outStream, @Nullable String sysId) {
        super(outStream);
        
        this.setSystemId(sysId);
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
