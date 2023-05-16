package gov.hhs.onc.crigtt.data.cache.impl;

import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.SmartFactoryBean;
import org.springframework.cache.ehcache.EhCacheCacheManager;

public abstract class AbstractCrigttCacheComponentFactoryBean<T, U> implements BeanNameAware, SmartFactoryBean<T> {
    protected Class<T> componentClass;
    protected String beanName;
    protected U config;
    protected String maxBytesLocalDisk;
    protected String maxBytesLocalHeap;
    protected String maxBytesLocalOffHeap;
    protected EhCacheCacheManager manager;

    protected AbstractCrigttCacheComponentFactoryBean(Class<T> componentClass) {
        this.componentClass = componentClass;
    }

    @Override
    public void setBeanName(String beanName) {
        this.beanName = beanName;
    }

    public U getConfiguration() {
        return this.config;
    }

    public void setConfiguration(U config) {
        this.config = config;
    }

    @Override
    public boolean isEagerInit() {
        return true;
    }

    public String getMaxBytesLocalDisk() {
        return this.maxBytesLocalDisk;
    }

    public void setMaxBytesLocalDisk(String maxBytesLocalDisk) {
        this.maxBytesLocalDisk = maxBytesLocalDisk;
    }

    public String getMaxBytesLocalHeap() {
        return this.maxBytesLocalHeap;
    }

    public void setMaxBytesLocalHeap(String maxBytesLocalHeap) {
        this.maxBytesLocalHeap = maxBytesLocalHeap;
    }

    public String getMaxBytesLocalOffHeap() {
        return this.maxBytesLocalOffHeap;
    }

    public void setMaxBytesLocalOffHeap(String maxBytesLocalOffHeap) {
        this.maxBytesLocalOffHeap = maxBytesLocalOffHeap;
    }

    @Override
    public Class<?> getObjectType() {
        return this.componentClass;
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
