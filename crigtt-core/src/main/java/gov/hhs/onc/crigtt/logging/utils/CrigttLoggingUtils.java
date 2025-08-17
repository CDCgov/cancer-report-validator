package gov.hhs.onc.crigtt.logging.utils;

import ch.qos.logback.classic.LoggerContext;
import java.io.IOException;
import jakarta.annotation.Nullable;
import org.apache.commons.lang3.ObjectUtils;

public final class CrigttLoggingUtils {
    private CrigttLoggingUtils() {
    }

    public static void include(LoggerContext context, String ... locs) throws IOException {
        // Gaffer configurator is no longer available in Logback 1.3+
        // Using Spring Boot default logging configuration instead
        // This method is kept for compatibility but does nothing
    }

    @Nullable
    public static String getProperty(LoggerContext context, String propName) {
        return getProperty(context, propName, null);
    }

    @Nullable
    public static String getProperty(LoggerContext context, String propName, @Nullable String defaultPropValue) {
        return ObjectUtils.defaultIfNull(context.getProperty(propName), defaultPropValue);
    }

    public static boolean containsProperty(LoggerContext context, String propName) {
        return (context.getProperty(propName) != null);
    }
}
