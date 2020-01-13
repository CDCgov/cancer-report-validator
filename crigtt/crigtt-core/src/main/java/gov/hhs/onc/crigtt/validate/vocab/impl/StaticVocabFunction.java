package gov.hhs.onc.crigtt.validate.vocab.impl;

import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.QName;
import org.springframework.stereotype.Component;

@Component("extFuncValidateVocabStatic")
public class StaticVocabFunction extends AbstractVocabFunction {
    public final static StructuredQName NAME = new QName(CrigttXmlNs.VALIDATE_VOCAB_PREFIX, CrigttXmlNs.VALIDATE_VOCAB_URI, "static-vocab")
        .getStructuredQName();

    public StaticVocabFunction() {
        super(NAME);
    }
}
