package gov.hhs.onc.crigtt.web.jaxrs.impl;

import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Stream;
import org.apache.cxf.endpoint.Server;
import org.apache.cxf.jaxrs.spring.JAXRSServerFactoryBeanDefinitionParser.SpringJAXRSServerFactoryBean;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.SmartFactoryBean;

public class CrigttJaxRsServerFactoryBean extends SpringJAXRSServerFactoryBean implements DisposableBean, InitializingBean, SmartFactoryBean<Server> {
    private Map<Object, Object> extMappings = new HashMap<>();

    @Override
    public Server getObject() throws Exception {
        return this.create();
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        Stream.of(ValidatorRenderType.values()).forEach(renderType -> this.extMappings.put(renderType.getExtension(), renderType.getContentType().toString()));

        super.setExtensionMappings(this.extMappings);
    }

    @Override
    public boolean isEagerInit() {
        return true;
    }

    @Override
    public void setExtensionMappings(Map<Object, Object> extMappings) {
        this.extMappings.putAll(extMappings);
    }

    @Override
    public Class<?> getObjectType() {
        return Server.class;
    }

    @Override
    public boolean isPrototype() {
        return false;
    }

    @Override
    public boolean isSingleton() {
        return true;
    }
}
