package gov.hhs.onc.crigtt.logging.impl;

import ch.qos.logback.classic.LoggerContext;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import gov.hhs.onc.crigtt.context.impl.AbstractCrigttContextComponent;
import gov.hhs.onc.crigtt.context.impl.CrigttApplication;
import gov.hhs.onc.crigtt.logging.CrigttLoggingInitializer;
import java.io.File;
import javax.annotation.Nullable;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.ApplicationContextException;

public abstract class AbstractCrigttLoggingInitializer extends AbstractCrigttContextComponent implements CrigttLoggingInitializer {
    protected AbstractCrigttLoggingInitializer(CrigttApplication app) {
        super(app);
    }

    @Override
    public void postProcessContext(LoggerContext loggerContext) {
    }

    @Override
    public String buildLogFileName() {
        String logFileName = System.getProperty(CrigttProperties.LOGGING_FILE_NAME_NAME, this.app.getName());

        if (StringUtils.isBlank(logFileName)) {
            throw new ApplicationContextException("Unable to determine log file name.");
        }

        return logFileName;
    }

    @Override
    public File buildLogDirectory() {
        String logDirPath = this.buildLogDirectoryPath();

        if (StringUtils.isBlank(logDirPath)) {
            throw new ApplicationContextException("Unable to determine log file directory path.");
        }

        File logDir = new File(logDirPath);

        logDirPath = logDir.getPath();

        if (!logDir.exists()) {
            if (!logDir.mkdirs()) {
                throw new ApplicationContextException(String.format("Unable to create log file directory (path=%s).", logDirPath));
            }
        } else if (!logDir.isDirectory()) {
            throw new ApplicationContextException(String.format("Log file directory path (%s) is not a directory.", logDirPath));
        }

        return logDir;
    }

    @Nullable
    protected String buildLogDirectoryPath() {
        return System.getProperty(CrigttProperties.LOGGING_FILE_DIR_NAME);
    }
}
