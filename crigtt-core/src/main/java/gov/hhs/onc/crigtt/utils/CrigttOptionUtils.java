package gov.hhs.onc.crigtt.utils;

import javax.annotation.Nullable;
import org.apache.commons.lang3.BooleanUtils;

public final class CrigttOptionUtils {
    private CrigttOptionUtils() {
    }

    public static int toInteger(@Nullable Object value, int nullValue) {
        if (value == null) {
            return nullValue;
        } else if (value instanceof Integer) {
            return ((Integer) value);
        } else {
            return Integer.parseInt(value.toString());
        }
    }

    public static boolean toBoolean(@Nullable Object value, boolean nullValue) {
        if (value == null) {
            return nullValue;
        } else if (value instanceof Boolean) {
            return ((Boolean) value);
        } else {
            return BooleanUtils.toBooleanObject(value.toString().toLowerCase());
        }
    }
}
