package gov.hhs.onc.crigtt.web.logging.impl;

import gov.hhs.onc.crigtt.context.CrigttProperties;
import gov.hhs.onc.crigtt.context.impl.CrigttApplication;
import gov.hhs.onc.crigtt.logging.impl.AbstractCrigttLoggingInitializer;
import java.nio.file.Paths;
import javax.annotation.Nullable;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.ApplicationContextException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE)
public class WebLoggingInitializer extends AbstractCrigttLoggingInitializer {
    private final static String TOMCAT_LOG_DIR_PATH = "logs";

    public WebLoggingInitializer(CrigttApplication app) {
        super(app);
    }

    @Nullable
    @Override
    protected String buildLogDirectoryPath() {
        String logDirPath = super.buildLogDirectoryPath();

        if (logDirPath == null) {
            String baseLogDirPath = System.getProperty(CrigttProperties.CATALINA_BASE_NAME);

            if (StringUtils.isBlank(baseLogDirPath)) {
                throw new ApplicationContextException("Unable to determine base log file directory.");
            }

            logDirPath = Paths.get(baseLogDirPath, TOMCAT_LOG_DIR_PATH).toString();
        }

        return logDirPath;
    }
}
