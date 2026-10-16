package gov.hhs.onc.crigtt.data.cache.impl;

import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.annotation.Nonnegative;
import javax.annotation.Nullable;
import net.sf.ehcache.Ehcache;
import net.sf.ehcache.search.Query;
import net.sf.ehcache.search.Results;
import net.sf.ehcache.search.expression.Criteria;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.cache.ehcache.EhCacheCache;

public class CrigttCache extends EhCacheCache {
    public CrigttCache(Ehcache cache) {
        super(cache);
    }

    public boolean containsKey(Object key) {
        return this.getNativeCache().isKeyInCache(key);
    }

    @Nullable
    public <T> T getValue(Class<T> valueClass, Criteria ... criteria) {
        List<T> values = this.getValues(valueClass, 1, criteria);

        return (!CollectionUtils.isEmpty(values) ? values.get(0) : null);
    }

    public <T> List<T> getValues(Class<T> valueClass, Criteria ... criteria) {
        return this.getValues(valueClass, -1, criteria);
    }

    public <T> List<T> getValues(Class<T> valueClass, int numMax, Criteria ... criteria) {
        Results results = this.buildQuery(numMax, criteria).includeValues().execute();

        return results.all().stream().map(result -> valueClass.cast(result.getValue())).collect(Collectors.toList());
    }

    public <T> List<T> getValues(Class<T> valueClass) {
        if (this.isEmpty()) {
            return Collections.emptyList();
        }

        Ehcache nativeCache = this.getNativeCache();

        return nativeCache.getAll(nativeCache.getKeys()).values().stream().map(elem -> valueClass.cast(elem.getObjectValue())).collect(Collectors.toList());
    }

    @Nullable
    public <T> T getKey(Class<T> keyClass, Criteria ... criteria) {
        List<T> keys = this.getValues(keyClass, 1, criteria);

        return (!CollectionUtils.isEmpty(keys) ? keys.get(0) : null);
    }

    public <T> List<T> getKeys(Class<T> keyClass, Criteria ... criteria) {
        return this.getKeys(keyClass, -1, criteria);
    }

    public <T> List<T> getKeys(Class<T> keyClass, int numMax, Criteria ... criteria) {
        Results results = this.buildQuery(numMax, criteria).includeKeys().execute();

        return results.all().stream().map(result -> keyClass.cast(result.getKey())).collect(Collectors.toList());
    }

    public <T> List<T> getKeys(Class<T> keyClass) {
        return CrigttStreamUtils.instances(((List<?>) this.getNativeCache().getKeys()).stream(), keyClass).collect(Collectors.toList());
    }

    public Query buildQuery(int numMax, Criteria ... criteria) {
        Query query = this.getNativeCache().createQuery().maxResults(numMax);

        Stream.of(criteria).forEach(query::addCriteria);

        return query;
    }

    public boolean isEmpty() {
        return (this.getSize() == 0);
    }

    @Nonnegative
    public int getSize() {
        return this.getNativeCache().getSize();
    }
}
