package gov.hhs.onc.crigtt.validate.render;

import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import java.util.Map;

public interface ValidatorRenderer {
    public byte[] render(ValidatorResponse resp) throws Exception;

    public byte[] render(ValidatorResponse resp, Map<String, Object> opts) throws Exception;

    public Map<String, Object> getDefaultOptions();

    public void setDefaultOptions(Map<String, Object> defaultOpts);

    public ValidatorRenderType getType();
}
