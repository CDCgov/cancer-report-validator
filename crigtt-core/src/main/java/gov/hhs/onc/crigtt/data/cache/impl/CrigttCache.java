package gov.hhs.onc.crigtt.data.cache.impl;

import java.util.concurrent.Callable;
import jakarta.annotation.Nullable;
import org.ehcache.Cache;
import org.springframework.cache.support.AbstractValueAdaptingCache;
import org.springframework.cache.support.SimpleValueWrapper;

public class CrigttCache extends AbstractValueAdaptingCache {
    private final String name;
    private final Cache<Object, Object> nativeCache;

    public CrigttCache(String name, Cache<Object, Object> nativeCache) {
        super(true);
        this.name = name;
        this.nativeCache = nativeCache;
    }

    @Override
    protected Object lookup(Object key) {
        return this.nativeCache.get(key);
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public Cache<Object, Object> getNativeCache() {
        return this.nativeCache;
    }

    @SuppressWarnings("unchecked")
    @Override
    public <T> T get(Object key, Class<T> type) {
        Object value = lookup(key);
        if (value != null && type != null && !type.isInstance(value)) {
            throw new IllegalStateException("Cached value is not of required type [" + type.getName() + "]: " + value);
        }
        return (T) value;
    }

    @Override
    public void put(Object key, @Nullable Object value) {
        this.nativeCache.put(key, value);
    }

    @Override
    public ValueWrapper putIfAbsent(Object key, @Nullable Object value) {
        Object existing = this.nativeCache.get(key);
        if (existing == null) {
            this.nativeCache.put(key, value);
            return null;
        }
        return new SimpleValueWrapper(existing);
    }

    @Override
    public void evict(Object key) {
        this.nativeCache.remove(key);
    }

    @Override
    public void clear() {
        this.nativeCache.clear();
    }

    @SuppressWarnings("unchecked")
    @Override
    public <T> T get(Object key, Callable<T> valueLoader) {
        Object value = lookup(key);
        if (value != null) {
            return (T) value;
        }

        try {
            T newValue = valueLoader.call();
            put(key, newValue);
            return newValue;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
}
