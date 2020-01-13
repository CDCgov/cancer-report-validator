package gov.hhs.onc.crigtt.web.controller;

public final class CrigttModelAttributes {
    public final static String VALIDATOR_PREFIX = "validator";

    public final static String JSON_SUFFIX = "Json";

    public final static String FORMATTED_BUILD_TIMESTAMP_NAME = "formattedBuildTimestamp";
    public final static String BUILD_VERSION_NAME = "buildVersion";

    public final static String TESTCASES_NAME = "testcases";

    public final static String VALIDATOR_HEADERS_JSON_NAME = VALIDATOR_PREFIX + "Headers" + JSON_SUFFIX;
    public final static String VALIDATOR_LEVEL_JSON_NAME = VALIDATOR_PREFIX + "Level" + JSON_SUFFIX;
    public final static String VALIDATOR_PARAMS_JSON_NAME = VALIDATOR_PREFIX + "Parameters" + JSON_SUFFIX;
    public final static String VALIDATOR_RENDER_TYPE_JSON_NAME = VALIDATOR_PREFIX + "RenderType" + JSON_SUFFIX;

    private CrigttModelAttributes() {
    }
}
