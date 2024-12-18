package gov.hhs.onc.crigtt.validate.render;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.http.MediaType;

public enum ValidatorRenderType {
    HTML(MediaType.TEXT_HTML, "html"),
    JSON(MediaType.APPLICATION_JSON, "json"),
    XML(MediaType.TEXT_XML, "xml");

    private final MediaType contentType;
    private final String ext;

    private ValidatorRenderType(MediaType contentType, String ext) {
        this.contentType = contentType;
        this.ext = ext;
    }

    @JsonProperty
    public MediaType getContentType() {
        return this.contentType;
    }

    @JsonProperty
    public String getExtension() {
        return this.ext;
    }
}
