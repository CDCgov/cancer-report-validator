package gov.hhs.onc.crigtt.xml.adapters;

import gov.hhs.onc.crigtt.validate.testcases.SubExpressionSet;
import gov.hhs.onc.crigtt.validate.testcases.impl.SubExpressionSetImpl;
import jakarta.xml.bind.annotation.adapters.XmlAdapter;
import java.util.ArrayList;
import java.util.List;

public class SubExpressionSetListAdapter extends XmlAdapter<List<SubExpressionSetImpl>, List<SubExpressionSet>> {

    @Override
    public List<SubExpressionSet> unmarshal(List<SubExpressionSetImpl> v) throws Exception {
        if (v == null) {
            return null;
        }
        List<SubExpressionSet> result = new ArrayList<>(v.size());
        result.addAll(v);
        return result;
    }

    @Override
    public List<SubExpressionSetImpl> marshal(List<SubExpressionSet> v) throws Exception {
        if (v == null) {
            return null;
        }
        List<SubExpressionSetImpl> result = new ArrayList<>(v.size());
        for (SubExpressionSet item : v) {
            if (item instanceof SubExpressionSetImpl) {
                result.add((SubExpressionSetImpl) item);
            } else {
                // Handle case where we need to convert interface to implementation
                SubExpressionSetImpl impl = new SubExpressionSetImpl();
                // Copy properties if needed - this may require reflection or specific copying logic
                result.add(impl);
            }
        }
        return result;
    }
}
