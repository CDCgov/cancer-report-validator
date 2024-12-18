package gov.hhs.onc.crigtt.validate.render;

import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import java.util.Map;

public interface ValidatorRenderer {
    byte[] render(ValidatorResponse resp) throws Exception;

    byte[] render(ValidatorResponse resp, Map<String, Object> opts) throws Exception;

    Map<String, Object> getDefaultOptions();

    void setDefaultOptions(Map<String, Object> defaultOpts);

    ValidatorRenderType getType();
}