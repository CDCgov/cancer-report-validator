package gov.hhs.onc.crigtt.xml.adapters;

import gov.hhs.onc.crigtt.validate.testcases.CustomEvalExpression;
import gov.hhs.onc.crigtt.validate.testcases.impl.CustomEvalExpressionImpl;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;

/**
 * JAXB adapter for CustomEvalExpression interface to handle Jakarta EE interface binding.
 */
public class CustomEvalExpressionAdapter extends XmlAdapter<CustomEvalExpressionImpl, CustomEvalExpression> {
    
    @Override
    public CustomEvalExpression unmarshal(CustomEvalExpressionImpl v) throws Exception {
        return v;
    }
    
    @Override
    public CustomEvalExpressionImpl marshal(CustomEvalExpression v) throws Exception {
        if (v instanceof CustomEvalExpressionImpl) {
            return (CustomEvalExpressionImpl) v;
        }
        return null;
    }
}
