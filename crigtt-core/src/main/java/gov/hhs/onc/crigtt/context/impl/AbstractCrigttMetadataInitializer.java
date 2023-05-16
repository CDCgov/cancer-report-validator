package gov.hhs.onc.crigtt.context.impl;

import gov.hhs.onc.crigtt.context.CrigttMetadataInitializer;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import java.io.File;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;
import org.springframework.context.ApplicationContextException;

public abstract class AbstractCrigttMetadataInitializer extends AbstractCrigttContextComponent implements CrigttMetadataInitializer {
    protected String defaultAppName;

    protected AbstractCrigttMetadataInitializer(CrigttApplication app, String defaultAppName) {
        super(app);
        this.defaultAppName = defaultAppName;
    }

    @Override
    public File buildApplicationHome() {
        return new File(ObjectUtils.defaultIfNull(System.getProperty(CrigttProperties.APP_HOME_NAME), SystemUtils.USER_DIR));
    }

    @Override
    public String buildApplicationName() {
        String appName = System.getProperty(CrigttProperties.APP_NAME_NAME, this.defaultAppName);

        if (StringUtils.isBlank(appName)) {
            throw new ApplicationContextException(String.format("Invalid application name (%s).", appName));
        }

        return appName;
    }
}
