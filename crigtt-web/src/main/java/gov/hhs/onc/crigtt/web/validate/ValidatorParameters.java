package gov.hhs.onc.crigtt.web.validate;

import gov.hhs.onc.crigtt.json.JsonConstant;

public final class ValidatorParameters {
    @JsonConstant
    public final static String FILE_NAME = "file";
    @JsonConstant
    public final static String FORMAT_NAME = "format";
    @JsonConstant
    public final static String TESTCASE_NAME = "testcase";
    @JsonConstant
    public final static String TIME_ZONE_NAME = "timeZone";

    private ValidatorParameters() {
    }
}
