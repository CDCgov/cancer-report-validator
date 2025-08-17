package gov.hhs.onc.crigtt.xml.adapters;

import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.impl.VocabAssertionImpl;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;

/**
 * JAXB adapter to handle VocabAssertion interface binding.
 * Converts between the interface and concrete implementation for XML marshalling/unmarshalling.
 */
public class VocabAssertionAdapter extends XmlAdapter<VocabAssertionImpl, VocabAssertion> {

    @Override
    public VocabAssertion unmarshal(VocabAssertionImpl impl) throws Exception {
        return impl;
    }

    @Override
    public VocabAssertionImpl marshal(VocabAssertion assertion) throws Exception {
        if (assertion instanceof VocabAssertionImpl) {
            return (VocabAssertionImpl) assertion;
        }
        
        // If it's a different implementation, create a new VocabAssertionImpl
        // and copy properties (you'd need to implement this based on your model)
        throw new UnsupportedOperationException("Only VocabAssertionImpl is supported for marshalling");
    }
}
