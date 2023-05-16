package gov.hhs.onc.crigtt.web.jaxrs.impl;

import org.apache.cxf.jaxrs.client.Client;
import org.apache.cxf.jaxrs.client.spring.JAXRSClientFactoryBeanDefinitionParser.JAXRSSpringClientFactoryBean;
import org.springframework.beans.factory.SmartFactoryBean;

public class CrigttJaxRsClientFactoryBean extends JAXRSSpringClientFactoryBean implements SmartFactoryBean<Client> {
    @Override
    public Client getObject() throws Exception {
        return this.create();
    }

    @Override
    public boolean isEagerInit() {
        return false;
    }

    @Override
    public Class<?> getObjectType() {
        return Client.class;
    }

    @Override
    public boolean isPrototype() {
        return true;
    }

    @Override
    public boolean isSingleton() {
        return false;
    }
}
