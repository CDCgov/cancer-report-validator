package gov.hhs.onc.crigtt.xml.adapters;

import jakarta.xml.bind.annotation.adapters.XmlAdapter;
import gov.hhs.onc.crigtt.validate.ValidatorResults;
import gov.hhs.onc.crigtt.validate.impl.ValidatorResultsImpl;

/**
 * JAXB adapter for ValidatorResults interface to ValidatorResultsImpl concrete implementation.
 */
public class ValidatorResultsAdapter extends XmlAdapter<ValidatorResultsImpl, ValidatorResults> {

    @Override
    public ValidatorResults unmarshal(ValidatorResultsImpl impl) throws Exception {
        return impl;
    }

    @Override
    public ValidatorResultsImpl marshal(ValidatorResults results) throws Exception {
        if (results == null) {
            return null;
        }
        return results instanceof ValidatorResultsImpl ? (ValidatorResultsImpl) results : null;
    }
}
