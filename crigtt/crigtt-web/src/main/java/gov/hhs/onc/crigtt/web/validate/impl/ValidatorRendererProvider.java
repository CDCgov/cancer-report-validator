package gov.hhs.onc.crigtt.web.validate.impl;

import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderer;
import gov.hhs.onc.crigtt.validate.utils.ValidatorUtils;
import gov.hhs.onc.crigtt.web.validate.ValidatorHeaders;
import gov.hhs.onc.crigtt.web.validate.ValidatorParameters;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.time.ZoneOffset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Priority;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.ext.MessageBodyWriter;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.cxf.jaxrs.impl.UriInfoImpl;
import org.apache.cxf.jaxrs.model.ClassResourceInfo;
import org.apache.cxf.jaxrs.provider.AbstractConfigurableProvider;
import org.apache.cxf.jaxrs.utils.JAXRSUtils;
import org.apache.cxf.message.Exchange;
import org.springframework.beans.factory.annotation.Autowired;

@Priority(2)
public class ValidatorRendererProvider extends AbstractConfigurableProvider implements MessageBodyWriter<ValidatorResponse> {
    @Autowired
    private List<ValidatorRenderer> renderers;

    private Map<String, String> defaultQueryParams = new HashMap<>();
    private Map<MediaType, ValidatorRenderer> rendererContentTypes;

    @Override
    public void writeTo(ValidatorResponse resp, Class<?> type, Type genericType, Annotation[] annos, MediaType mediaType,
        MultivaluedMap<String, Object> headers, OutputStream entityStream) throws IOException, WebApplicationException {
        Exchange exchange = JAXRSUtils.getCurrentMessage().getExchange();
        ValidatorRenderer renderer =
            this.rendererContentTypes.keySet().stream().filter(mediaType::isCompatible).map(this.rendererContentTypes::get).findFirst().get();

        headers.putSingle(ValidatorHeaders.RESP_FILE_NAME_NAME,
            ValidatorUtils.buildResponseFileName(true, exchange.get(ValidatorSubmission.class), renderer.getType()));

        MultivaluedMap<String, String> queryParams = new UriInfoImpl(exchange.getInMessage()).getQueryParameters();
        Map<String, String> mergedQueryParams = new HashMap<>(this.defaultQueryParams);

        queryParams.keySet().stream().forEach(queryParamName -> mergedQueryParams.put(queryParamName, queryParams.getFirst(queryParamName)));

        Map<String, Object> renderOpts = new HashMap<>();

        if (mergedQueryParams.containsKey(ValidatorParameters.FORMAT_NAME)) {
            renderOpts.put(ValidatorRenderOptions.FORMAT_NAME, BooleanUtils.toBoolean(mergedQueryParams.get(ValidatorParameters.FORMAT_NAME)));
        }

        if (mergedQueryParams.containsKey(ValidatorParameters.TIME_ZONE_NAME)) {
            renderOpts.put(ValidatorRenderOptions.TIME_ZONE_NAME,
                TimeZone.getTimeZone(ZoneOffset.of(mergedQueryParams.get(ValidatorParameters.TIME_ZONE_NAME))));
        }

        try {
            entityStream.write(renderer.render(resp, renderOpts));
        } catch (Exception e) {
            throw new WebApplicationException(e, Status.INTERNAL_SERVER_ERROR);
        }
    }

    @Override
    public boolean isWriteable(Class<?> type, Type genericType, Annotation[] annos, MediaType mediaType) {
        return this.rendererContentTypes.keySet().stream().anyMatch(mediaType::isCompatible);
    }

    @Override
    public long getSize(ValidatorResponse resp, Class<?> type, Type genericType, Annotation[] annos, MediaType mediaType) {
        return -1;
    }

    @Override
    public void init(List<ClassResourceInfo> classResourceInfos) {
        this.setProduceMediaTypes((this.rendererContentTypes =
            CrigttStreamUtils.toMap(renderer -> MediaType.valueOf(renderer.getType().getContentType().toString()), Function.<ValidatorRenderer> identity(),
                this.renderers.stream())).keySet().stream().map(MediaType::toString).collect(Collectors.toList()));
    }

    public Map<String, String> getDefaultQueryParameters() {
        return this.defaultQueryParams;
    }

    public void setDefaultQueryParameters(Map<String, String> defaultQueryParams) {
        this.defaultQueryParams.clear();
        this.defaultQueryParams.putAll(defaultQueryParams);
    }
}
