package gov.hhs.onc.crigtt.xml.adapters;

import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.impl.TestcaseImpl;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;

/**
 * JAXB adapter to handle Testcase interface binding.
 */
public class TestcaseAdapter extends XmlAdapter<TestcaseImpl, Testcase> {

    @Override
    public Testcase unmarshal(TestcaseImpl impl) throws Exception {
        return impl;
    }

    @Override
    public TestcaseImpl marshal(Testcase testcase) throws Exception {
        if (testcase instanceof TestcaseImpl) {
            return (TestcaseImpl) testcase;
        }
        throw new UnsupportedOperationException("Only TestcaseImpl is supported for marshalling");
    }
}
