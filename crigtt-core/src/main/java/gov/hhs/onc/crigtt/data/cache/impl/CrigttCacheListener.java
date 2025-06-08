package gov.hhs.onc.crigtt.data.cache.impl;

import org.ehcache.event.CacheEvent;
import org.ehcache.event.CacheEventListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component("cacheListener")
public class CrigttCacheListener implements CacheEventListener<Object, Object> {
    private final static Logger LOGGER = LoggerFactory.getLogger(CrigttCacheListener.class);

    @Override
    public void onEvent(CacheEvent<? extends Object, ? extends Object> event) {
        switch (event.getType()) {
            case EVICTED:
                LOGGER.trace("Cache element with key '{}' was evicted", event.getKey());
                break;
            case EXPIRED:
                LOGGER.trace("Cache element with key '{}' has expired", event.getKey());
                break;
            case CREATED:
            case UPDATED:
                LOGGER.trace("Cache element with key '{}' was {} with value '{}'", 
                    event.getKey(), 
                    event.getType().name().toLowerCase(), 
                    event.getNewValue());
                break;
            case REMOVED:
                LOGGER.trace("Cache element with key '{}' was removed", event.getKey());
                break;
        }
    }
}
