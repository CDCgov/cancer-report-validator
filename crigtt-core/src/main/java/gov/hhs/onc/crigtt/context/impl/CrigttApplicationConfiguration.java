package gov.hhs.onc.crigtt.context.impl;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.logging.LoggingApplicationListener;
import org.springframework.context.ApplicationContextException;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternUtils;

@Configuration("appConfiguration")
public abstract class CrigttApplicationConfiguration {
    private static class CrigttApplicationBuilder extends SpringApplicationBuilder {
        public CrigttApplicationBuilder(Object ... srcs) {
            super(srcs);
        }

        @Override
        protected CrigttApplication createSpringApplication(Object ... srcs) {
            return new CrigttApplication(srcs);
        }
    }

    private final static String APP_SOURCE_RESOURCE_LOC_PATTERN = ResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX
        + "META-INF/crigtt/spring/spring-crigtt*.xml";

    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttApplicationConfiguration.class);

    public static void main(String ... args) {
        buildApplication().run(args);
    }

    public static CrigttApplication buildApplication() {
        ResourceLoader resourceLoader = new DefaultResourceLoader();

        CrigttApplication app =
            ((CrigttApplication) new CrigttApplicationBuilder(buildApplicationSources(resourceLoader)).addCommandLineProperties(false).showBanner(false)
                .headless(true).resourceLoader(resourceLoader).application());
        app.setListeners(app.getListeners().stream().filter((appListener -> !appListener.getClass().equals(LoggingApplicationListener.class)))
            .collect(Collectors.toList()));

        return app;
    }

    private static Object[] buildApplicationSources(ResourceLoader resourceLoader) {
        try {
            List<Object> srcs =
                Stream.of(ResourcePatternUtils.getResourcePatternResolver(resourceLoader).getResources(APP_SOURCE_RESOURCE_LOC_PATTERN)).collect(
                    Collectors.toList());

            LOGGER.info(String.format("Resolved %d application source resource(s): %s", srcs.size(), StringUtils.join(srcs, "; ")));

            srcs.add(0, CrigttApplicationConfiguration.class);

            return srcs.toArray();
        } catch (IOException e) {
            throw new ApplicationContextException(String.format("Unable to resolve application source resource(s): %s", APP_SOURCE_RESOURCE_LOC_PATTERN), e);
        }
    }
}
