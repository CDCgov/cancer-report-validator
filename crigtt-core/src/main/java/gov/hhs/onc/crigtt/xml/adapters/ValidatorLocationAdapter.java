package gov.hhs.onc.crigtt.xml.adapters;

import jakarta.xml.bind.annotation.adapters.XmlAdapter;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.impl.ValidatorLocationImpl;

/**
 * JAXB adapter for ValidatorLocation interface to ValidatorLocationImpl concrete implementation.
 */
public class ValidatorLocationAdapter extends XmlAdapter<ValidatorLocationImpl, ValidatorLocation> {

    @Override
    public ValidatorLocation unmarshal(ValidatorLocationImpl impl) throws Exception {
        return impl;
    }

    @Override
    public ValidatorLocationImpl marshal(ValidatorLocation location) throws Exception {
        if (location == null) {
            return null;
        }
        return location instanceof ValidatorLocationImpl ? (ValidatorLocationImpl) location : null;
    }
}
