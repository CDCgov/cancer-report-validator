package gov.hhs.onc.crigtt.data.cache.impl;

import net.sf.ehcache.CacheException;
import net.sf.ehcache.Ehcache;
import net.sf.ehcache.Element;
import net.sf.ehcache.event.CacheEventListenerAdapter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component("cacheListener")
public class CrigttCacheListener extends CacheEventListenerAdapter {
    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttCacheListener.class);

    @Override
    public void notifyElementEvicted(Ehcache cache, Element elem) {
        LOGGER.trace(String.format("Cache (name=%s, size=%d) element (key=%s) evicted.", cache.getName(), cache.getSize(), elem.getObjectKey()));
    }

    @Override
    public void notifyElementExpired(Ehcache cache, Element elem) {
        LOGGER.trace(String.format("Cache (name=%s, size=%d) element (key=%s) expired.", cache.getName(), cache.getSize(), elem.getObjectKey()));
    }

    @Override
    public void notifyElementPut(Ehcache cache, Element elem) throws CacheException {
        LOGGER.trace(String.format("Cache (name=%s, size=%d) element (key=%s) put.", cache.getName(), cache.getSize(), elem.getObjectKey()));
    }
}
