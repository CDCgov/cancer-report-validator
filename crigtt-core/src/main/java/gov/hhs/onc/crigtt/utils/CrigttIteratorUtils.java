package gov.hhs.onc.crigtt.utils;

import com.github.sebhoss.warnings.CompilerWarnings;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import javax.annotation.Nullable;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.PredicateUtils;
import org.apache.commons.collections4.iterators.FilterIterator;

public final class CrigttIteratorUtils {
    public final static int DEFAULT_ITERATOR_SPLITERATOR_FLAGS = Spliterator.CONCURRENT | Spliterator.ORDERED;

    private CrigttIteratorUtils() {
    }

    public static <T> Stream<T> stream(Iterator<T> iterator) {
        return stream(iterator, -1);
    }

    public static <T> Stream<T> stream(Iterator<T> iterator, long size) {
        return StreamSupport.stream(
            ((size >= 0) ? Spliterators.spliterator(iterator, size, (DEFAULT_ITERATOR_SPLITERATOR_FLAGS | Spliterator.SIZED)) : Spliterators
                .spliteratorUnknownSize(iterator, DEFAULT_ITERATOR_SPLITERATOR_FLAGS)), false);
    }

    @Nullable
    public static <T, U> U firstInstance(Iterator<T> iterator, Class<U> clazz) {
        T item;

        while (iterator.hasNext()) {
            if (((item = iterator.next()) != null) && clazz.isAssignableFrom(item.getClass())) {
                return clazz.cast(item);
            }
        }

        return null;
    }

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public static <T, U> FilterIterator<U> instances(Iterator<T> iterator, Class<U> clazz) {
        return ((FilterIterator<U>) IteratorUtils.filteredIterator(iterator, PredicateUtils.instanceofPredicate(clazz)));
    }
}
