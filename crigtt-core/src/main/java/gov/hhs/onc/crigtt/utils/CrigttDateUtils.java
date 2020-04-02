package gov.hhs.onc.crigtt.utils;

import java.util.TimeZone;
import javax.annotation.Nullable;
import org.apache.commons.lang3.time.FastDateFormat;

public final class CrigttDateUtils {
    public final static String CONDENSED_FORMAT_PATTERN = "yyyy-MM-dd_HHmmss_Z";
    public final static FastDateFormat CONDENSED_FORMAT = FastDateFormat.getInstance(CONDENSED_FORMAT_PATTERN);

    public final static String DISPLAY_FORMAT_PATTERN = "yyyy-MM-dd HH:mm:ss Z";
    public final static FastDateFormat DISPLAY_FORMAT = FastDateFormat.getInstance(DISPLAY_FORMAT_PATTERN);

    private CrigttDateUtils() {
    }

    public static String format(FastDateFormat dateFormat, long timestamp, @Nullable TimeZone timeZone) {
        return (((timeZone != null) && !dateFormat.getTimeZone().equals(timeZone)) ? FastDateFormat.getInstance(dateFormat.getPattern(), timeZone) : dateFormat)
            .format(timestamp);
    }
}
