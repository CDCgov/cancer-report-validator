package gov.hhs.onc.crigtt.utils;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.CharUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.text.StrBuilder;

public final class CrigttFileUtils {
    private CrigttFileUtils() {
    }

    public static String buildSafeFileName(String fileName) {
        char[] fileNameChars = FilenameUtils.getName(fileName).toCharArray();
        StrBuilder fileNameBuilder = new StrBuilder(fileNameChars.length);
        char fileNameChar;

        for (int a = 0; a < fileNameChars.length; a++) {
            if (!CharUtils.isAscii((fileNameChar = fileNameChars[a]))) {
                continue;
            }

            if (Character.isWhitespace(fileNameChar)) {
                while (((a + 1) < fileNameChars.length) && Character.isWhitespace(fileNameChars[(a + 1)])) {
                    a++;
                }

                if (!fileNameBuilder.isEmpty() && ((a + 2) < fileNameChars.length)) {
                    fileNameBuilder.append(StringUtils.SPACE);
                }
            } else if (Character.isLetterOrDigit(fileNameChar) || (fileNameChar == CrigttStringUtils.HYPHEN_CHAR)
                || (fileNameChar == CrigttStringUtils.PERIOD_CHAR) || (fileNameChar == CrigttStringUtils.UNDERSCORE_CHAR)) {
                fileNameBuilder.append(fileNameChar);
            }
        }

        return fileNameBuilder.build();
    }
}
