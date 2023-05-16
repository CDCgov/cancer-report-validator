package gov.hhs.onc.crigtt.context.impl;

import gov.hhs.onc.crigtt.context.CrigttMetadataInitializer;
import java.io.File;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE)
public class MetadataApplicationRunListener extends AbstractCrigttApplicationRunListener {
    private class DefaultMetadataInitializer extends AbstractCrigttMetadataInitializer {
        public DefaultMetadataInitializer() {
            super(MetadataApplicationRunListener.this.app, "crigtt");
        }
    }

    private final static Logger LOGGER = LoggerFactory.getLogger(MetadataApplicationRunListener.class);

    public MetadataApplicationRunListener(SpringApplication app, String[] args) {
        super(app, args);
    }

    @Override
    public void started() {
        CrigttMetadataInitializer metadataInit = buildComponent(CrigttMetadataInitializer.class, DefaultMetadataInitializer::new, this.app);

        File appHome = metadataInit.buildApplicationHome();
        this.app.setHome(appHome);

        String appName = metadataInit.buildApplicationName();
        this.app.setName(appName);

        LOGGER.info(String.format("Initialized application metadata (home=%s, name=%s).", appHome.getPath(), appName));
    }
}
