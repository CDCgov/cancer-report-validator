package gov.hhs.onc.crigtt.utils;

import java.util.List;
import java.util.stream.IntStream;
import org.apache.commons.lang3.StringUtils;

public final class CrigttStringUtils {
    public final static char DBL_QUOTE_CHAR = '"';
    public final static String DBL_QUOTE = "\"";

    public final static char HYPHEN_CHAR = '-';
    public final static String HYPHEN = "-";

    public final static char PERIOD_CHAR = '.';
    public final static String PERIOD = ".";

    public final static char TAB_CHAR = '\t';
    public final static String TAB = "\t";

    public final static char UNDERSCORE_CHAR = '_';
    public final static String UNDERSCORE = "_";

    private CrigttStringUtils() {
    }

    public static String joinCamelCase(List<String> strParts) {
        IntStream.range(0, strParts.size()).forEach(strPartIndex -> {
            String strPart = strParts.get(strPartIndex).toLowerCase();

            if (strPartIndex > 0) {
                strPart = StringUtils.capitalize(strPart);
            }

            strParts.set(strPartIndex, strPart);
        });

        return StringUtils.join(strParts, StringUtils.EMPTY);
    }

    public static String unquote(String str) {
        return StringUtils.stripEnd(StringUtils.stripStart(str, DBL_QUOTE), DBL_QUOTE);
    }
}
