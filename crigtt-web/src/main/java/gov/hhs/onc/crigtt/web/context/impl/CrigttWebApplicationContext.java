package gov.hhs.onc.crigtt.web.context.impl;

import java.util.Enumeration;
import javax.annotation.Nullable;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.boot.context.embedded.AnnotationConfigEmbeddedWebApplicationContext;
import org.springframework.web.context.ServletConfigAware;
import org.springframework.web.context.support.AbstractRefreshableWebApplicationContext;

public class CrigttWebApplicationContext extends AnnotationConfigEmbeddedWebApplicationContext {
    private class CrigttServletConfig implements ServletConfig {
        @Nullable
        @Override
        public String getInitParameter(String name) {
            return CrigttWebApplicationContext.this.getServletContext().getInitParameter(name);
        }

        @Override
        public Enumeration<String> getInitParameterNames() {
            return CrigttWebApplicationContext.this.getServletContext().getInitParameterNames();
        }

        @Override
        public ServletContext getServletContext() {
            return CrigttWebApplicationContext.this.getServletContext();
        }

        @Override
        public String getServletName() {
            return CrigttWebApplicationContext.this.getServletContext().getServletContextName();
        }
    }

    @Override
    protected void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) {
        CrigttServletConfig servletConfig = new CrigttServletConfig();
        this.setServletConfig(servletConfig);
        
        beanFactory.registerSingleton(AbstractRefreshableWebApplicationContext.SERVLET_CONFIG_BEAN_NAME, servletConfig);
        beanFactory.ignoreDependencyInterface(ServletConfigAware.class);

        super.postProcessBeanFactory(beanFactory);
    }
}
