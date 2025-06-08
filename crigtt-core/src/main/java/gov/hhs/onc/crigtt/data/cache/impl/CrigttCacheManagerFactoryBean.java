package gov.hhs.onc.crigtt.data.cache.impl;

import org.ehcache.CacheManager;
import org.ehcache.config.builders.CacheManagerBuilder;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.FactoryBean;

public class CrigttCacheManagerFactoryBean implements FactoryBean<CacheManager>, DisposableBean {
    private CacheManager cacheManager;

    @Override
    public CacheManager getObject() throws Exception {
        if (this.cacheManager == null) {
            this.cacheManager = CacheManagerBuilder.newCacheManagerBuilder().build(true);
        }
        return this.cacheManager;
    }

    @Override
    public Class<?> getObjectType() {
        return CacheManager.class;
    }

    @Override
    public boolean isSingleton() {
        return true;
    }

    @Override
    public void destroy() throws Exception {
        if (this.cacheManager != null) {
            this.cacheManager.close();
        }
    }
}
