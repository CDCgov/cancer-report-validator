package gov.hhs.onc.crigtt.data.cache.impl;

import org.ehcache.CacheManager;
import org.springframework.beans.factory.FactoryBean;

public abstract class AbstractCrigttCacheComponentFactoryBean<T, U> implements FactoryBean<T> {
    protected CacheManager cacheManager;
    protected String name;

    @Override
    public boolean isSingleton() {
        return true;
    }

    public CacheManager getCacheManager() {
        return this.cacheManager;
    }

    public void setCacheManager(CacheManager cacheManager) {
        this.cacheManager = cacheManager;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
