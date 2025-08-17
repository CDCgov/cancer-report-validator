package gov.hhs.onc.crigtt.xml.adapters;

import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.validate.testcases.impl.SubExpressionSetImpl;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;

/**
 * JAXB adapter to handle SubExpressionSet interface binding.
 */
public class SubExpressionSetAdapter extends XmlAdapter<SubExpressionSetImpl, SubExpressionSet> {

    @Override
    public SubExpressionSet unmarshal(SubExpressionSetImpl impl) throws Exception {
        return impl;
    }

    @Override
    public SubExpressionSetImpl marshal(SubExpressionSet subExpressionSet) throws Exception {
        if (subExpressionSet instanceof SubExpressionSetImpl) {
            return (SubExpressionSetImpl) subExpressionSet;
        }
        throw new UnsupportedOperationException("Only SubExpressionSetImpl is supported for marshalling");
    }
}
