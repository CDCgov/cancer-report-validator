package gov.hhs.onc.crigtt.xml;

public final class CrigttXmlNs {
    public final static String CORE_PREFIX = "crigtt";
    public final static String HL7_CDA_PREFIX = "cda";
    public final static String HL7_SDTC_PREFIX = "sdtc";
    public final static String SCHEMATRON_PREFIX = "sch";
    public final static String SCHEMATRON_SVRL_PREFIX = "svrl";
    public final static String VALIDATE_PREFIX = "crigtt-validate";
    public final static String VALIDATE_TESTCASES_PREFIX = VALIDATE_PREFIX + "-testcases";
    public final static String VALIDATE_VOCAB_PREFIX = VALIDATE_PREFIX + "-vocab";
    public final static String W3C_XML_SCHEMA_INSTANCE_PREFIX = "xsi";

    public final static String CORE_URI = "urn:gov.hhs.onc.crigtt";
    public final static String HL7_CDA_URI = "urn:hl7-org:v3";
    public final static String HL7_SDTC_URI = "urn:hl7-org:sdtc";
    public final static String SCHEMATRON_URI = "http://purl.oclc.org/dsdl/schematron";
    public final static String SCHEMATRON_SVRL_URI = "http://purl.oclc.org/dsdl/svrl";
    public final static String VALIDATE_URI = CORE_URI + ":validate";
    public final static String VALIDATE_TESTCASES_URI = VALIDATE_URI + "-testcases";
    public final static String VALIDATE_VOCAB_URI = VALIDATE_URI + "-vocab";
    public final static String VALIDATE_VOCAB_STATIC_DOC_URI = "http://www.lantanagroup.com/voc";

    private CrigttXmlNs() {
    }
}
