package gov.hhs.onc.crigtt.web.config;

import org.apache.cxf.Bus;
import org.apache.cxf.transport.servlet.CXFServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CxfConfig {

    @Autowired
    private Bus bus;

    @Bean
    public ServletRegistrationBean<CXFServlet> cxfServletRegistration() {
        ServletRegistrationBean<CXFServlet> registration = new ServletRegistrationBean<>(new CXFServlet(), "/service/*");
        registration.setLoadOnStartup(1);
        registration.setName("CXFServlet");
        return registration;
    }
}
