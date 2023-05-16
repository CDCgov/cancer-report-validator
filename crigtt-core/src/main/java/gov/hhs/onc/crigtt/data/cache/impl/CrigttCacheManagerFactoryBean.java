package gov.hhs.onc.crigtt.data.cache.impl;

import java.util.Optional;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.config.Configuration;
import net.sf.ehcache.config.SizeOfPolicyConfiguration;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.cache.ehcache.EhCacheCacheManager;

public class CrigttCacheManagerFactoryBean extends AbstractCrigttCacheComponentFactoryBean<EhCacheCacheManager, Configuration> implements DisposableBean {
    public CrigttCacheManagerFactoryBean() {
        super(EhCacheCacheManager.class);
    }

    @Override
    public void destroy() throws Exception {
        this.manager.getCacheManager().shutdown();
    }

    @Override
    public EhCacheCacheManager getObject() throws Exception {
        if (this.config.getName() == null) {
            this.config.setName(this.beanName);
        }

        this.config.addSizeOfPolicy(new SizeOfPolicyConfiguration().maxDepth(Integer.MAX_VALUE));

        Optional.ofNullable(this.maxBytesLocalDisk).ifPresent(this.config::setMaxBytesLocalDisk);
        Optional.ofNullable(this.maxBytesLocalHeap).ifPresent(this.config::setMaxBytesLocalHeap);
        Optional.ofNullable(this.maxBytesLocalOffHeap).ifPresent(this.config::setMaxBytesLocalOffHeap);

        return (this.manager = new EhCacheCacheManager(new CacheManager(this.config)));
    }
}
