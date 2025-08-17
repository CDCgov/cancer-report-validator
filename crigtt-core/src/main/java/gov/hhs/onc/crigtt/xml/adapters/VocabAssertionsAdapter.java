package gov.hhs.onc.crigtt.xml.adapters;

import gov.hhs.onc.crigtt.validate.vocab.VocabAssertions;
import gov.hhs.onc.crigtt.validate.vocab.impl.VocabAssertionsImpl;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;

/**
 * JAXB adapter to handle VocabAssertions interface binding.
 */
public class VocabAssertionsAdapter extends XmlAdapter<VocabAssertionsImpl, VocabAssertions> {

    @Override
    public VocabAssertions unmarshal(VocabAssertionsImpl impl) throws Exception {
        return impl;
    }

    @Override
    public VocabAssertionsImpl marshal(VocabAssertions assertions) throws Exception {
        if (assertions instanceof VocabAssertionsImpl) {
            return (VocabAssertionsImpl) assertions;
        }
        throw new UnsupportedOperationException("Only VocabAssertionsImpl is supported for marshalling");
    }
}
