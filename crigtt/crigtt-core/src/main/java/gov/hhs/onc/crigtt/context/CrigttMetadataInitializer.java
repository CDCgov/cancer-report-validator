package gov.hhs.onc.crigtt.context;

import java.io.File;

public interface CrigttMetadataInitializer extends CrigttContextComponent {
    public File buildApplicationHome();

    public String buildApplicationName();
}
