package gov.hhs.onc.crigtt.validate.vocab;

public final class VocabXmlNames {
    public final static String NAME_SUFFIX = "Name";
    public final static String SET_SUFFIX = "Set";
    public final static String VERSION_SUFFIX = "Version";

    public final static String CODE_NODE_NAME = "code";

    public final static String SYSTEM_ELEM_NAME = "system";
    public final static String SYSTEMS_ELEM_NAME = SYSTEM_ELEM_NAME + "s";

    public final static String CODE_SYSTEM_ATTR_NAME = CODE_NODE_NAME + "System";
    public final static String CODE_SYSTEM_NAME_ATTR_NAME = CODE_SYSTEM_ATTR_NAME + NAME_SUFFIX;
    public final static String CODE_SYSTEM_VERSION_ATTR_NAME = CODE_SYSTEM_ATTR_NAME + VERSION_SUFFIX;
    public final static String DISPLAY_NAME_ATTR_NAME = "display" + NAME_SUFFIX;
    public final static String VALUE_ATTR_NAME = "value";
    public final static String VALUE_SET_ATTR_NAME = VALUE_ATTR_NAME + SET_SUFFIX;
    public final static String VALUE_SET_NAME_ATTR_NAME = VALUE_SET_ATTR_NAME + NAME_SUFFIX;
    public final static String VALUE_SET_OID_ATTR_NAME = VALUE_SET_ATTR_NAME + "Oid";
    public final static String VALUE_SET_VERSION_ATTR_NAME = VALUE_SET_ATTR_NAME + VERSION_SUFFIX;

    private VocabXmlNames() {
    }
}
