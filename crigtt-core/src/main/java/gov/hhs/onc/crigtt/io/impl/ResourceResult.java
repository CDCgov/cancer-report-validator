package gov.hhs.onc.crigtt.io.impl;

import java.io.IOException;
import javax.annotation.Nullable;
import javax.xml.transform.stream.StreamResult;
import org.springframework.core.io.WritableResource;

public class ResourceResult extends StreamResult {
    private WritableResource resource;

    public ResourceResult(WritableResource resource) throws IOException {
        this(resource, null);
    }

    public ResourceResult(WritableResource resource, @Nullable String sysId) throws IOException {
        super(resource.getOutputStream());

        this.resource = resource;

        this.setSystemId(((sysId != null) ? sysId : this.resource.getURL().toExternalForm()));
    }

    public WritableResource getResource() {
        return this.resource;
    }
}
