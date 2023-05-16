package gov.hhs.onc.crigtt.logging.utils;

import ch.qos.logback.classic.ClassicConstants;
import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.gaffer.GafferConfigurator;
import java.io.IOException;
import javax.annotation.Nullable;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.text.StrBuilder;
import org.springframework.util.ResourceUtils;

public final class CrigttLoggingUtils {
    private CrigttLoggingUtils() {
    }

    public static void include(LoggerContext context, String ... locs) throws IOException {
        StrBuilder contentBuilder = new StrBuilder();
        contentBuilder.setNewLineText(StringUtils.LF);

        for (String loc : locs) {
            contentBuilder.append(IOUtils.toString(ResourceUtils.getURL((ResourceUtils.CLASSPATH_URL_PREFIX + loc))));

            contentBuilder.appendNewLine();
        }

        ((GafferConfigurator) context.getObject(ClassicConstants.GAFFER_CONFIGURATOR_FQCN)).run(contentBuilder.build());
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
