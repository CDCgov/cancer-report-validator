package gov.hhs.onc.crigtt.transform;

public final class CrigttContextDataNames {
    public final static String PREFIX = "crigtt.context.data.";
    public final static String VALIDATE_PREFIX = PREFIX + "validate.";
    public final static String VALIDATE_VOCAB_PREFIX = VALIDATE_PREFIX + "vocab.";

    public final static String VALIDATE_RENDER_OPTS_NAME = VALIDATE_PREFIX + "render.opts";
    public final static String VALIDATE_SCHEMATRON_NAME = VALIDATE_PREFIX + "schematron";

    public final static String VALIDATE_VOCAB_CODE_NAME = VALIDATE_VOCAB_PREFIX + "code";
    public final static String VALIDATE_VOCAB_CODES_EXPECTED_NAME = VALIDATE_VOCAB_CODE_NAME + "s.expected";
    public final static String VALIDATE_VOCAB_MESSAGES_NAME = VALIDATE_VOCAB_PREFIX + "messages";
    public final static String VALIDATE_VOCAB_VOCAB_SET_NAME = VALIDATE_VOCAB_PREFIX + "vocab.set";
    public final static String VALIDATE_VOCAB_VOCAB_SETS_EXPECTED_NAME = VALIDATE_VOCAB_VOCAB_SET_NAME + "s.expected";

    private CrigttContextDataNames() {
    }
}
