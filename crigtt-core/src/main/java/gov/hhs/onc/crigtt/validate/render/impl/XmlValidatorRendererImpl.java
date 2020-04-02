package gov.hhs.onc.crigtt.validate.render.impl;

import gov.hhs.onc.crigtt.io.impl.ByteArraySource;
import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import gov.hhs.onc.crigtt.utils.CrigttOptionUtils;
import gov.hhs.onc.crigtt.validate.ObjectFactory;
import gov.hhs.onc.crigtt.validate.ValidatorError;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.render.XmlValidatorRenderer;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.util.Map;
import javax.annotation.Resource;

public class XmlValidatorRendererImpl extends AbstractValidatorRenderer implements XmlValidatorRenderer {
    @Resource(name = "objFactoryValidate")
    private ObjectFactory objFactory;

    @Resource(name = "jaxbMarshallerValidate")
    private CrigttJaxbMarshaller jaxbMarshaller;

    @Resource(name = "serializerXml")
    private CrigttSerializer serializer;

    @Resource(name = "serializerXmlDisplay")
    private CrigttSerializer displaySerializer;

    public XmlValidatorRendererImpl() {
        super(ValidatorRenderType.XML);
    }

    @Override
    protected byte[] renderInternal(ValidatorResponse resp, Map<String, Object> opts) throws Exception {
        return (CrigttOptionUtils.toBoolean(opts.get(ValidatorRenderOptions.FORMAT_NAME), ((Boolean) this.defaultOpts.get(ValidatorRenderOptions.FORMAT_NAME)))
            ? this.displaySerializer : this.serializer).serializeToBytes(new ByteArraySource(this.jaxbMarshaller.marshal((resp instanceof ValidatorReport)
            ? this.objFactory.createReport(((ValidatorReport) resp)) : this.objFactory.createError(((ValidatorError) resp)))));
    }
}
