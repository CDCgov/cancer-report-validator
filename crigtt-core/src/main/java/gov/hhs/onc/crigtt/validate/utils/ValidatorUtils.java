package gov.hhs.onc.crigtt.validate.utils;

import gov.hhs.onc.crigtt.utils.CrigttDateUtils;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import org.apache.commons.io.FilenameUtils;

public final class ValidatorUtils {
    private final static String ERROR_FILE_NAME_FORMAT = "%s_error_%s.%s";
    private final static String REPORT_FILE_NAME_FORMAT = "%s_report_%s.%s";

    private ValidatorUtils() {
    }

    public static String buildResponseFileName(boolean status, ValidatorSubmission submission, ValidatorRenderType renderType) {
        return buildResponseFileName(status, FilenameUtils.getBaseName(submission.getDocument().getFileName()), submission.getSubmittedTimestamp(), renderType);
    }

    public static String buildResponseFileName(boolean status, String docFileBaseName, long submittedTimestamp, ValidatorRenderType renderType) {
        return String.format((status ? REPORT_FILE_NAME_FORMAT : ERROR_FILE_NAME_FORMAT), docFileBaseName,
            CrigttDateUtils.CONDENSED_FORMAT.format(submittedTimestamp), renderType.getExtension());
    }
}
