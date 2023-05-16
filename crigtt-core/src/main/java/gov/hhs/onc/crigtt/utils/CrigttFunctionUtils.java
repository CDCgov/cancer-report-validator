package gov.hhs.onc.crigtt.utils;

import com.github.sebhoss.warnings.CompilerWarnings;
import java.util.function.Consumer;
import java.util.function.Supplier;
import javax.annotation.Nullable;

public final class CrigttFunctionUtils {
    private CrigttFunctionUtils() {
    }

    @Nullable
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public static <T> T consume(Supplier<T> supplier, Consumer<T> ... consumers) {
        return consume(supplier, null, consumers);
    }

    @Nullable
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public static <T> T consume(Supplier<T> supplier, @Nullable Supplier<T> nullSupplier, Consumer<T> ... consumers) {
        T obj = (((obj = supplier.get()) != null) ? obj : ((nullSupplier != null) ? nullSupplier.get() : null));

        if (consumers.length > 0) {
            Consumer<T> consumer = consumers[0];

            for (int a = 1; a < consumers.length; a++) {
                consumer = consumer.andThen(consumers[a]);
            }

            consumer.accept(obj);
        }

        return obj;
    }
}
