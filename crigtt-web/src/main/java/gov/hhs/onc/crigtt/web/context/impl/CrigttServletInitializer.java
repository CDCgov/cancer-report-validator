package gov.hhs.onc.crigtt.web.context.impl;

import gov.hhs.onc.crigtt.context.CrigttProperties;
import gov.hhs.onc.crigtt.context.impl.CrigttApplication;
import gov.hhs.onc.crigtt.context.impl.CrigttApplicationConfiguration;
import java.io.File;
import java.util.Optional;
import javax.servlet.ServletContext;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.context.web.ServletContextApplicationContextInitializer;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.web.context.ConfigurableWebApplicationContext;

public class CrigttServletInitializer extends SpringBootServletInitializer {
    private final static String WEBAPP_HOME_RESOLVE_PATH = "/";
    private final static String WEBAPP_HOME_CONTEXT_PATH = "/WEB-INF";

    @Override
    protected ConfigurableWebApplicationContext createRootApplicationContext(ServletContext servletContext) {
        CrigttApplication app = CrigttApplicationConfiguration.buildApplication();
        app.setApplicationContextClass(CrigttWebApplicationContext.class);
        app.setWebEnvironment(true);

        app.addInitializers(new ServletContextApplicationContextInitializer(servletContext));

        app.setHome(new File(Optional.ofNullable(System.getProperty(CrigttProperties.APP_HOME_NAME)).orElseGet(
            () -> (servletContext.getRealPath(WEBAPP_HOME_RESOLVE_PATH) + WEBAPP_HOME_CONTEXT_PATH))));

        return this.run(app);
    }

    @Override
    protected CrigttWebApplicationContext run(SpringApplication app) {
        return ((CrigttWebApplicationContext) super.run(app));
    }
}
