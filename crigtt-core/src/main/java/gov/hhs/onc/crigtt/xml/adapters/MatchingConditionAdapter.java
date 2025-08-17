package gov.hhs.onc.crigtt.xml.adapters;

import gov.hhs.onc.crigtt.validate.testcases.MatchingCondition;
import gov.hhs.onc.crigtt.validate.testcases.impl.MatchingConditionImpl;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;

/**
 * JAXB adapter for MatchingCondition interface to handle Jakarta EE interface binding.
 */
public class MatchingConditionAdapter extends XmlAdapter<MatchingConditionImpl, MatchingCondition> {
    
    @Override
    public MatchingCondition unmarshal(MatchingConditionImpl v) throws Exception {
        return v;
    }
    
    @Override
    public MatchingConditionImpl marshal(MatchingCondition v) throws Exception {
        if (v instanceof MatchingConditionImpl) {
            return (MatchingConditionImpl) v;
        }
        return null;
    }
}
