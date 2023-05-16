package gov.hhs.onc.crigtt.utils;

import com.github.sebhoss.warnings.CompilerWarnings;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public final class CrigttStreamUtils {
    private CrigttStreamUtils() {
    }

    public static <T, U> Stream<U> instances(Stream<T> stream, Class<U> clazz) {
        return filterInstances(stream, clazz).map(clazz::cast);
    }

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public static <T, U> Optional<U> firstInstance(Stream<T> stream, Class<U> clazz) {
        return ((Optional<U>) filterInstances(stream, clazz).findFirst());
    }

    public static <T, U> Stream<T> filterInstances(Stream<T> stream, Class<U> clazz) {
        return stream.filter(clazz::isInstance);
    }

    public static <T, U, V extends Entry<T, U>> HashMap<T, U> toMap(Stream<V> stream) {
        return toMap(HashMap::new, stream);
    }

    public static <T, U, V> HashMap<T, U> toMap(Function<V, T> keyMapper, Function<V, U> valueMapper, Stream<V> stream) {
        return toMap(keyMapper, valueMapper, HashMap::new, stream);
    }

    @SuppressWarnings({ CompilerWarnings.RAWTYPES })
    public static <T, U, V extends Map<T, U>, W extends Entry<T, U>> V toMap(Supplier<V> mapSupplier, Stream<W> stream) {
        return toMap(Entry::getKey, Entry::getValue, mapSupplier, stream);
    }

    public static <T, U, V extends Map<T, U>, W> V toMap(Function<W, T> keyMapper, Function<W, U> valueMapper, Supplier<V> mapSupplier, Stream<W> stream) {
        return stream.collect(Collectors.toMap(keyMapper::apply, valueMapper::apply, (value1, value2) -> value2, mapSupplier));
    }
}
