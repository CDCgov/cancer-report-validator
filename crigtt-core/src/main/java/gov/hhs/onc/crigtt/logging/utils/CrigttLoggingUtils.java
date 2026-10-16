package gov.hhs.onc.crigtt.logging.utils;

import ch.qos.logback.classic.LoggerContext;
import javax.annotation.Nullable;
import org.apache.commons.lang3.ObjectUtils;

public final class CrigttLoggingUtils {
    private CrigttLoggingUtils() {
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
