//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate.render.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import gov.hhs.onc.crigtt.utils.CrigttOptionUtils;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.render.JsonValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import java.util.Map;
import javax.annotation.Resource;

public class JsonValidatorRendererImpl extends AbstractValidatorRenderer implements JsonValidatorRenderer {
    @Resource(
            name = "objMapperCrigtt"
    )
    private ObjectMapper objMapper;
    @Resource(
            name = "objMapperDisplay"
    )
    private ObjectMapper displayObjMapper;

    public JsonValidatorRendererImpl() {
        super(ValidatorRenderType.JSON);
    }

    protected byte[] renderInternal(ValidatorResponse resp, Map<String, Object> opts) throws Exception {
        return (CrigttOptionUtils.toBoolean(opts.get("format"), (Boolean)this.defaultOpts.get("format")) ? this.displayObjMapper : this.objMapper).writeValueAsBytes(resp);
    }
}
