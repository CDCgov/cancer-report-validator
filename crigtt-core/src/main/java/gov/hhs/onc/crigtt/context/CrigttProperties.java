package gov.hhs.onc.crigtt.context;

public final class CrigttProperties {
    public final static String PREFIX = "crigtt.";
    public final static String APP_PREFIX = PREFIX + "app.";
    public final static String CATALINA_PREFIX = "catalina.";
    public final static String LOGGING_PREFIX = PREFIX + "logging.";
    public final static String LOGGING_CONSOLE_PREFIX = LOGGING_PREFIX + "console.";
    public final static String LOGGING_FILE_PREFIX = LOGGING_PREFIX + "file.";

    public final static String NAME_SUFFIX = "name";
    public final static String ENC_SUFFIX = "enc";
    public final static String ENC_PATTERN_SUFFIX = ENC_SUFFIX + ".pattern";

    public final static String APP_HOME_NAME = APP_PREFIX + "home";
    public final static String APP_NAME_NAME = APP_PREFIX + NAME_SUFFIX;

    public final static String CATALINA_BASE_NAME = CATALINA_PREFIX + "base";

    public final static String LOGGING_CONSOLE_ENC_PATTERN_NAME = LOGGING_CONSOLE_PREFIX + ENC_PATTERN_SUFFIX;
    public final static String LOGGING_CONSOLE_TARGET_NAME = LOGGING_CONSOLE_PREFIX + "target";
    public final static String LOGGING_CONSOLE_TTY_NAME = LOGGING_CONSOLE_PREFIX + "tty";

    public final static String LOGGING_FILE_DIR_NAME = LOGGING_FILE_PREFIX + "dir";
    public final static String LOGGING_FILE_ENC_PATTERN_NAME = LOGGING_FILE_PREFIX + ENC_PATTERN_SUFFIX;
    public final static String LOGGING_FILE_EXT_NAME = LOGGING_FILE_PREFIX + "ext";
    public final static String LOGGING_FILE_NAME_NAME = LOGGING_FILE_PREFIX + NAME_SUFFIX;
    public final static String LOGGING_FILE_SIZE_MAX_NAME = LOGGING_FILE_PREFIX + "size.max";

    private CrigttProperties() {
    }
}
