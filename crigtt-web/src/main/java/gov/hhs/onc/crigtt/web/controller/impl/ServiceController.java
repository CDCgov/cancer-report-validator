package gov.hhs.onc.crigtt.web.controller.impl;

import javax.annotation.Nullable;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.cxf.Bus;
import org.apache.cxf.BusFactory;
import org.apache.cxf.resource.ResourceManager;
import org.apache.cxf.transport.DestinationFactoryManager;
import org.apache.cxf.transport.http.AbstractHTTPDestination;
import org.apache.cxf.transport.http.DestinationRegistry;
import org.apache.cxf.transport.http.HTTPTransportFactory;
import org.apache.cxf.transport.servlet.BaseUrlHelper;
import org.apache.cxf.transport.servlet.ServletContextResourceResolver;
import org.apache.cxf.transport.servlet.ServletController;
import org.apache.cxf.transport.servlet.servicelist.ServiceListGeneratorServlet;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.context.ServletConfigAware;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

public class ServiceController implements Controller, InitializingBean, ServletConfigAware {
    private class ServiceServletController extends ServletController {
        public ServiceServletController(DestinationRegistry destReg) throws ServletException {
            super(destReg, ServiceController.this.servletConfig, new ServiceListGeneratorServlet(destReg, ServiceController.this.bus));

            this.serviceListRelativePath = ServiceController.this.listPath;
        }

        @Override
        protected void updateDestination(HttpServletRequest servletReq, String basePath, AbstractHTTPDestination dest) {
            BaseUrlHelper.setAddress(dest, ServletUriComponentsBuilder.fromContextPath(servletReq).path(ServiceController.this.path).toUriString());
        }
    }

    private ServletConfig servletConfig;
    private Bus bus;
    private String path;
    private String listPath;
    private ServiceServletController servletController;

    @Nullable
    @Override
    public ModelAndView handleRequest(HttpServletRequest servletReq, HttpServletResponse servletResp) throws Exception {
        try {
            BusFactory.setThreadDefaultBus(bus);

            this.servletController.invoke(servletReq, servletResp);
        } finally {
            BusFactory.setThreadDefaultBus(null);
        }

        return null;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.bus.getExtension(ResourceManager.class).addResourceResolver(new ServletContextResourceResolver(this.servletConfig.getServletContext()));

        this.servletController =
            new ServiceServletController(((HTTPTransportFactory) this.bus.getExtension(DestinationFactoryManager.class).getDestinationFactoryForUri(
                HTTPTransportFactory.DEFAULT_NAMESPACES.get(0))).getRegistry());
    }

    public Bus getBus() {
        return this.bus;
    }

    public void setBus(Bus bus) {
        this.bus = bus;
    }

    public String getListPath() {
        return this.listPath;
    }

    public void setListPath(String listPath) {
        this.listPath = listPath;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Override
    public void setServletConfig(ServletConfig servletConfig) {
        this.servletConfig = servletConfig;
    }
}
