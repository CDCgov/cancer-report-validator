package gov.hhs.onc.crigtt.validate.vocab;

public final class VocabFields {
    public final static String CODE_SYSTEM_PREFIX = "codeSystem";
    public final static String VALUE_SET_PREFIX = "valueSet";

    public final static String ID_SUFFIX = "Id";
    public final static String NAME_SUFFIX = "Name";
    public final static String VERSION_SUFFIX = "Version";

    public final static String VALUE_SET_ID_NAME = VALUE_SET_PREFIX + ID_SUFFIX;
    public final static String VALUE_SET_NAME_NAME = VALUE_SET_PREFIX + NAME_SUFFIX;
    public final static String VALUE_SET_VERSION_NAME = VALUE_SET_PREFIX + VERSION_SUFFIX;
    public final static String CODE_SYSTEM_ID_NAME = CODE_SYSTEM_PREFIX + ID_SUFFIX;
    public final static String CODE_SYSTEM_NAME_NAME = CODE_SYSTEM_PREFIX + NAME_SUFFIX;
    public final static String CODE_SYSTEM_VERSION_NAME = CODE_SYSTEM_PREFIX + VERSION_SUFFIX;
    public final static String CODE_NAME = "code";
    public final static String DISPLAY_NAME_NAME = "display" + NAME_SUFFIX;
    public final static String TTY_NAME = "tty";

    private VocabFields() {
    }
}
