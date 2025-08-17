package gov.hhs.onc.crigtt.xml.adapters;

import gov.hhs.onc.crigtt.validate.testcases.ExpectedResults;
import gov.hhs.onc.crigtt.validate.testcases.impl.ExpectedResultsImpl;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;

/**
 * JAXB adapter for ExpectedResults interface to handle Jakarta EE interface binding.
 */
public class ExpectedResultsAdapter extends XmlAdapter<ExpectedResultsImpl, ExpectedResults> {
    
    @Override
    public ExpectedResults unmarshal(ExpectedResultsImpl v) throws Exception {
        return v;
    }
    
    @Override
    public ExpectedResultsImpl marshal(ExpectedResults v) throws Exception {
        if (v instanceof ExpectedResultsImpl) {
            return (ExpectedResultsImpl) v;
        }
        return null;
    }
}
