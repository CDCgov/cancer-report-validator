package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.CrigttContextDataNames;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltExecutable;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltTransformer;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.render.XmlTransformValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.XmlValidatorRenderer;
import java.util.Map;
import javax.annotation.Resource;
import net.sf.saxon.s9api.Destination;

public abstract class AbstractXmlTransformValidatorRenderer extends AbstractValidatorRenderer implements XmlTransformValidatorRenderer {
    @Resource(name = "validatorRendererXmlImpl")
    protected XmlValidatorRenderer xmlRenderer;

    protected CrigttXsltExecutable xsltExec;

    protected AbstractXmlTransformValidatorRenderer(ValidatorRenderType type) {
        super(type);
    }

    protected <T extends Destination> T renderInternal(ValidatorResponse resp, Map<String, Object> opts, T dest) throws Exception {
        CrigttXsltTransformer xsltTransformer = this.xsltExec.load();
        xsltTransformer.setSource(new ByteArraySource(this.xmlRenderer.render(resp)));

        xsltTransformer.getUnderlyingController().getContextData().put(CrigttContextDataNames.VALIDATE_RENDER_OPTS_NAME, opts);

        xsltTransformer.setDestination(dest);

        xsltTransformer.transform();

        return dest;
    }

    @Override
    public CrigttXsltExecutable getXsltExecutable() {
        return this.xsltExec;
    }

    @Override
    public void setXsltExecutable(CrigttXsltExecutable xsltExec) {
        this.xsltExec = xsltExec;
    }
}
