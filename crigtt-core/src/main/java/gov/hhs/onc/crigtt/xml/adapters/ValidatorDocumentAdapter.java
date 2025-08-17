package gov.hhs.onc.crigtt.xml.adapters;

import jakarta.xml.bind.annotation.adapters.XmlAdapter;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;

/**
 * JAXB adapter for ValidatorDocument interface to ValidatorDocumentImpl concrete implementation.
 */
public class ValidatorDocumentAdapter extends XmlAdapter<ValidatorDocumentImpl, ValidatorDocument> {

    @Override
    public ValidatorDocument unmarshal(ValidatorDocumentImpl impl) throws Exception {
        return impl;
    }

    @Override
    public ValidatorDocumentImpl marshal(ValidatorDocument document) throws Exception {
        if (document == null) {
            return null;
        }
        return document instanceof ValidatorDocumentImpl ? (ValidatorDocumentImpl) document : null;
    }
}
