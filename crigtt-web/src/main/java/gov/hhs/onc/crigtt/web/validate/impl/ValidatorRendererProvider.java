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
import jakarta.annotation.Priority;
import jakarta.ws.rs.WebApplicationException;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.MultivaluedMap;
import jakarta.ws.rs.core.Response.Status;
import jakarta.ws.rs.ext.MessageBodyWriter;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.cxf.jaxrs.impl.UriInfoImpl;
import org.apache.cxf.jaxrs.model.ClassResourceInfo;
import org.apache.cxf.jaxrs.provider.AbstractConfigurableProvider;
import org.apache.cxf.jaxrs.utils.JAXRSUtils;
import org.apache.cxf.message.Exchange;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

@Priority(2)
public class ValidatorRendererProvider extends AbstractConfigurableProvider implements MessageBodyWriter<ValidatorResponse> {
    private static final Logger LOGGER = LoggerFactory.getLogger(ValidatorRendererProvider.class);
    @Autowired
    private List<ValidatorRenderer> renderers;

    private Map<String, String> defaultQueryParams = new HashMap<>();
    private Map<MediaType, ValidatorRenderer> rendererContentTypes;

    @Override
    public void writeTo(ValidatorResponse resp, Class<?> type, Type genericType, Annotation[] annos, MediaType mediaType,
        MultivaluedMap<String, Object> headers, OutputStream entityStream) throws IOException, WebApplicationException {
        LOGGER.info("writeTo called - mediaType: {}, renderers: {}, rendererContentTypes: {}", 
            mediaType, renderers != null ? renderers.size() : "null", 
            rendererContentTypes != null ? rendererContentTypes.size() : "null");
        
        Exchange exchange = JAXRSUtils.getCurrentMessage().getExchange();
        
        if (this.rendererContentTypes == null || this.rendererContentTypes.isEmpty()) {
            LOGGER.error("No renderers configured! renderers list: {}", renderers);
            throw new WebApplicationException("No renderers configured", Status.INTERNAL_SERVER_ERROR);
        }
        
        LOGGER.debug("Available content types: {}", rendererContentTypes.keySet());
        
        ValidatorRenderer renderer = this.rendererContentTypes.keySet().stream()
            .filter(mediaType::isCompatible)
            .map(this.rendererContentTypes::get)
            .findFirst()
            .orElseThrow(() -> {
                LOGGER.error("No compatible renderer found for media type: {}", mediaType);
                return new WebApplicationException("No compatible renderer found for media type: " + mediaType, Status.INTERNAL_SERVER_ERROR);
            });

        LOGGER.info("Using renderer: {} for media type: {}", renderer.getClass().getSimpleName(), mediaType);

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
            byte[] rendered = renderer.render(resp, renderOpts);
            LOGGER.info("Successfully rendered response, size: {} bytes", rendered.length);
            entityStream.write(rendered);
            LOGGER.info("Successfully wrote response to output stream");
        } catch (Exception e) {
            LOGGER.error("Error rendering response", e);
            throw new WebApplicationException(e, Status.INTERNAL_SERVER_ERROR);
        }
    }

    @Override
    public boolean isWriteable(Class<?> type, Type genericType, Annotation[] annos, MediaType mediaType) {
        boolean writable = this.rendererContentTypes != null && this.rendererContentTypes.keySet().stream().anyMatch(mediaType::isCompatible);
        LOGGER.debug("isWriteable called for type: {}, mediaType: {}, result: {}", type.getSimpleName(), mediaType, writable);
        return writable;
    }

    @Override
    public long getSize(ValidatorResponse resp, Class<?> type, Type genericType, Annotation[] annos, MediaType mediaType) {
        return -1;
    }

    @Override
    public void init(List<ClassResourceInfo> classResourceInfos) {
        LOGGER.info("Initializing ValidatorRendererProvider - renderers: {}", renderers != null ? renderers.size() : "null");
        
        if (this.renderers == null || this.renderers.isEmpty()) {
            LOGGER.error("No renderers configured for ValidatorRendererProvider!");
            throw new IllegalStateException("No renderers configured for ValidatorRendererProvider");
        }
        
        this.setProduceMediaTypes((this.rendererContentTypes =
            CrigttStreamUtils.toMap(renderer -> MediaType.valueOf(renderer.getType().getContentType().toString()), Function.<ValidatorRenderer> identity(),
                this.renderers.stream())).keySet().stream().map(MediaType::toString).collect(Collectors.toList()));
        
        LOGGER.info("ValidatorRendererProvider initialized with {} renderers, content types: {}", 
            rendererContentTypes.size(), rendererContentTypes.keySet());
    }

    public Map<String, String> getDefaultQueryParameters() {
        return this.defaultQueryParams;
    }

    public void setDefaultQueryParameters(Map<String, String> defaultQueryParams) {
        this.defaultQueryParams.clear();
        this.defaultQueryParams.putAll(defaultQueryParams);
    }

    public List<ValidatorRenderer> getRenderers() {
        return this.renderers;
    }

    public void setRenderers(List<ValidatorRenderer> renderers) {
        this.renderers = renderers;
    }
}
