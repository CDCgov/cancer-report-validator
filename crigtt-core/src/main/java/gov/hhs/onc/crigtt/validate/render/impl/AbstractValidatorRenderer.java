package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public abstract class AbstractValidatorRenderer implements ValidatorRenderer {
    protected Map<String, Object> defaultOpts = new HashMap();
    protected ValidatorRenderType type;

    protected AbstractValidatorRenderer(ValidatorRenderType type) {
        this.type = type;
    }

    public byte[] render(ValidatorResponse resp) throws Exception {
        return this.render(resp, Collections.emptyMap());
    }

    public byte[] render(ValidatorResponse resp, Map<String, Object> opts) throws Exception {
        opts = new HashMap(opts);
        this.defaultOpts.forEach(opts::putIfAbsent);
        return this.renderInternal(resp, opts);
    }

    protected abstract byte[] renderInternal(ValidatorResponse resp, Map<String, Object> opts) throws Exception;

    public Map<String, Object> getDefaultOptions() {
        return this.defaultOpts;
    }

    public void setDefaultOptions(Map<String, Object> defaultOpts) {
        this.defaultOpts.clear();
        this.defaultOpts.putAll(defaultOpts);
    }

    public ValidatorRenderType getType() {
        return this.type;
    }
}
