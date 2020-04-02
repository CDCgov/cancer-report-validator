package gov.hhs.onc.crigtt.validate.vocab;

public final class VocabAttributes {
    public final static String CODE_PREFIX = "code";

    public final static String ID_SUFFIX = "Id";
    public final static String VERSION_SUFFIX = "Version";

    public final static String NULL_FLAVOR_NAME = "nullFlavor";
    public final static String CODE_ID_NAME = CODE_PREFIX + ID_SUFFIX;
    public final static String CODE_SYSTEM_ID_NAME = CODE_PREFIX + "System" + ID_SUFFIX;
    public final static String CODE_SYSTEM_VERSION_NAME = CODE_PREFIX + "System" + VERSION_SUFFIX;
    public final static String GROUPING_VALUE_SET_ID_NAME = "groupingValueSet" + ID_SUFFIX;
    public final static String GROUPING_VALUE_SET_VERSION_NAME = "groupingValueSet" + VERSION_SUFFIX;
    public final static String VALUE_SET_ID_NAME = "valueSet" + ID_SUFFIX;
    public final static String VALUE_SET_VERSION_NAME = "valueSet" + VERSION_SUFFIX;

    private VocabAttributes() {
    }
}
