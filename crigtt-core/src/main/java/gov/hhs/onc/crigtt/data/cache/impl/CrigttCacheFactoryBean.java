package gov.hhs.onc.crigtt.data.cache.impl;

import org.ehcache.Cache;
import org.ehcache.CacheManager;
import org.ehcache.config.CacheConfiguration;
import org.ehcache.config.builders.CacheConfigurationBuilder;
import org.ehcache.config.builders.ResourcePoolsBuilder;
import org.springframework.beans.factory.FactoryBean;

public class CrigttCacheFactoryBean implements FactoryBean<CrigttCache> {
    private String name;
    private CacheManager cacheManager;
    private CacheConfiguration<Object, Object> configuration;

    @Override
    public CrigttCache getObject() throws Exception {
        CacheConfiguration<Object, Object> cacheConfig = this.configuration != null ? this.configuration
            : CacheConfigurationBuilder.newCacheConfigurationBuilder(Object.class, Object.class, ResourcePoolsBuilder.heap(10000))
                .build();

        Cache<Object, Object> cache = this.cacheManager.createCache(this.name, cacheConfig);
        return new CrigttCache(this.name, cache);
    }

    @Override
    public Class<?> getObjectType() {
        return CrigttCache.class;
    }

    @Override
    public boolean isSingleton() {
        return true;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCacheManager(CacheManager cacheManager) {
        this.cacheManager = cacheManager;
    }

    public void setConfiguration(CacheConfiguration<Object, Object> configuration) {
        this.configuration = configuration;
    }
}
