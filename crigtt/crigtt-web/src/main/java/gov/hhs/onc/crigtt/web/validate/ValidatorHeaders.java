package gov.hhs.onc.crigtt.web.validate;

import gov.hhs.onc.crigtt.json.JsonConstant;

public final class ValidatorHeaders {
    public final static String PREFIX = "X-Crigtt-";

    @JsonConstant
    public final static String RESP_FILE_NAME_NAME = PREFIX + "Response-File-Name";

    private ValidatorHeaders() {
    }
}
