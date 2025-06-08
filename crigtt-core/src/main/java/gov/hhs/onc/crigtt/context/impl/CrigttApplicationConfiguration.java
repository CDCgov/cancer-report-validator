package gov.hhs.onc.crigtt.context.impl;

import java.io.IOException;
import java.util.Set;
import java.util.stream.Collectors;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.logging.LoggingApplicationListener;
import org.springframework.context.ApplicationContextException;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternUtils;

@Configuration("appConfiguration")
public abstract class CrigttApplicationConfiguration {
    private static class CrigttApplicationBuilder extends SpringApplicationBuilder {
        private final Class<?>[] initialSources;

        public CrigttApplicationBuilder(Class<?>... sources) {
            super(sources);
            this.initialSources = sources;
        }

        @Override
        public SpringApplication application() {
            CrigttApplication app = new CrigttApplication(this.initialSources);
            app.setBannerMode(Banner.Mode.OFF);
            app.setHeadless(true);
            return app;
        }
    }

    private final static String APP_SOURCE_RESOURCE_LOC_PATTERN = ResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX
        + "META-INF/crigtt/spring/spring-crigtt*.xml";

    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttApplicationConfiguration.class);

    public static void main(String... args) {
        buildApplication().run(args);
    }

    public static CrigttApplication buildApplication() {
        ResourceLoader resourceLoader = new DefaultResourceLoader();
        Class<?>[] sources = buildApplicationSources(resourceLoader);

        CrigttApplication app = (CrigttApplication) new CrigttApplicationBuilder(sources)
            .addCommandLineProperties(false)
            .bannerMode(Banner.Mode.OFF)
            .headless(true)
            .resourceLoader(resourceLoader)
            .application();

        app.setListeners(app.getListeners().stream()
            .filter(appListener -> !appListener.getClass().equals(LoggingApplicationListener.class))
            .collect(Collectors.toList()));

        return app;
    }

    private static Class<?>[] buildApplicationSources(ResourceLoader resourceLoader) {
        try {
            ResourcePatternResolver resolver = ResourcePatternUtils.getResourcePatternResolver(resourceLoader);
            Resource[] resources = resolver.getResources(APP_SOURCE_RESOURCE_LOC_PATTERN);

            LOGGER.info(String.format("Resolved %d application source resource(s): %s",
                resources.length, StringUtils.join(resources, "; ")));

            return new Class<?>[] { CrigttApplicationConfiguration.class };
        } catch (IOException e) {
            throw new ApplicationContextException(
                String.format("Unable to resolve application source resource(s): %s", APP_SOURCE_RESOURCE_LOC_PATTERN), e);
        }
    }
}
