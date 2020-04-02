package gov.hhs.onc.crigtt.web.jaxrs;

public final class ContentDispositionParameters {
    public final static String DATE_SUFFIX = "-date";

    public final static String CREATION_DATE = "creation" + DATE_SUFFIX;
    public final static String FILENAME = "filename";
    public final static String HANDLING = "handling";
    public final static String MOD_DATE = "modification" + DATE_SUFFIX;
    public final static String NAME = "name";
    public final static String READ_DATE = "read" + DATE_SUFFIX;
    public final static String SIZE = "size";
    public final static String VOICE = "voice";

    private ContentDispositionParameters() {
    }
}
