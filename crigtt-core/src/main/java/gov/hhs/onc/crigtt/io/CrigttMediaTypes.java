package gov.hhs.onc.crigtt.io;

import org.springframework.http.MediaType;

public final class CrigttMediaTypes {
    public final static String DELIM = "/";

    public final static String APP_TYPE = "application";

    public final static String PDF_SUBTYPE = "pdf";

    public final static String APP_PDF_VALUE = APP_TYPE + DELIM + PDF_SUBTYPE;
    public final static MediaType APP_PDF = MediaType.parseMediaType(APP_PDF_VALUE);

    private CrigttMediaTypes() {
    }
}
