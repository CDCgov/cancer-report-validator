package gov.hhs.onc.crigtt.validate.render.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import gov.hhs.onc.crigtt.utils.CrigttOptionUtils;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.render.JsonValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import java.util.Map;
import javax.annotation.Resource;

public class JsonValidatorRendererImpl extends AbstractValidatorRenderer implements JsonValidatorRenderer {
    @Resource(name = "objMapperCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper objMapper;

    @Resource(name = "objMapperDisplay")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper displayObjMapper;

    public JsonValidatorRendererImpl() {
        super(ValidatorRenderType.JSON);
    }

    @Override
    protected byte[] renderInternal(ValidatorResponse resp, Map<String, Object> opts) throws Exception {
        return (CrigttOptionUtils.toBoolean(opts.get(ValidatorRenderOptions.FORMAT_NAME), ((Boolean) this.defaultOpts.get(ValidatorRenderOptions.FORMAT_NAME)))
            ? this.displayObjMapper : this.objMapper).writeValueAsBytes(resp);
    }
}
