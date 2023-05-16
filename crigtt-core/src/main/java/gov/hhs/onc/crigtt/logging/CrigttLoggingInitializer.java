package gov.hhs.onc.crigtt.logging;

import ch.qos.logback.classic.LoggerContext;
import gov.hhs.onc.crigtt.context.CrigttContextComponent;
import java.io.File;

public interface CrigttLoggingInitializer extends CrigttContextComponent {
    public void postProcessContext(LoggerContext loggerContext);

    public String buildLogFileName();

    public File buildLogDirectory();
}
