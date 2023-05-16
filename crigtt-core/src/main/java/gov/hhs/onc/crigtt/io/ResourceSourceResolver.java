package gov.hhs.onc.crigtt.io;

import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import java.io.IOException;
import javax.annotation.Nullable;
import org.springframework.context.ResourceLoaderAware;

public interface ResourceSourceResolver extends ResourceLoaderAware {
    public ResourceSource[] resolveAll(String loc) throws IOException;

    @Nullable
    public ResourceSource resolve(String loc) throws IOException;
}
