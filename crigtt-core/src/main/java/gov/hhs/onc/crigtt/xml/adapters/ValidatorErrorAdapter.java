package gov.hhs.onc.crigtt.xml.adapters;

import jakarta.xml.bind.annotation.adapters.XmlAdapter;
import gov.hhs.onc.crigtt.validate.ValidatorError;
import gov.hhs.onc.crigtt.validate.impl.ValidatorErrorImpl;

/**
 * JAXB adapter for ValidatorError interface to ValidatorErrorImpl concrete implementation.
 */
public class ValidatorErrorAdapter extends XmlAdapter<ValidatorErrorImpl, ValidatorError> {

    @Override
    public ValidatorError unmarshal(ValidatorErrorImpl impl) throws Exception {
        return impl;
    }

    @Override
    public ValidatorErrorImpl marshal(ValidatorError error) throws Exception {
        if (error == null) {
            return null;
        }
        return error instanceof ValidatorErrorImpl ? (ValidatorErrorImpl) error : null;
    }
}
