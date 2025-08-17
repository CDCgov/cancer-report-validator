package gov.hhs.onc.crigtt.web.context.impl;

import gov.hhs.onc.crigtt.context.CrigttProperties;
import gov.hhs.onc.crigtt.web.CrigttWebApplication;
import jakarta.servlet.ServletException;
import java.io.File;
import jakarta.servlet.ServletContext;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.boot.web.servlet.context.ServletWebServerApplicationContext;

public class CrigttServletInitializer extends SpringBootServletInitializer {
    private final static String WEBAPP_HOME_RESOLVE_PATH = "/";
    private final static String WEBAPP_HOME_CONTEXT_PATH = "/WEB-INF";

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        // Set the home directory
        final File homeDir;
        String homeDirPath = System.getProperty(CrigttProperties.APP_HOME_NAME);
        
        if (homeDirPath != null) {
            homeDir = new File(homeDirPath);
        } else {
            homeDir = null;
        }

        return builder
            .sources(CrigttWebApplication.class)
            .profiles("crigtt.profile.app.context.web")
            .initializers(applicationContext -> {
                if (applicationContext instanceof ServletWebServerApplicationContext && homeDir != null) {
                    System.setProperty(CrigttProperties.APP_HOME_NAME, homeDir.getAbsolutePath());
                }
            });
    }

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        // Set home directory if not already set
        if (System.getProperty(CrigttProperties.APP_HOME_NAME) == null) {
            File homeDir = new File(servletContext.getRealPath(WEBAPP_HOME_RESOLVE_PATH) + WEBAPP_HOME_CONTEXT_PATH);
            System.setProperty(CrigttProperties.APP_HOME_NAME, homeDir.getAbsolutePath());
        }
        
        super.onStartup(servletContext);
    }
}