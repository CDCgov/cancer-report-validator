package gov.hhs.onc.crigtt.validate.impl.common;

import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import gov.hhs.onc.crigtt.validate.impl.ValidatorLocationImpl;
import gov.hhs.onc.crigtt.validate.testcases.utils.CrigttTestcaseUtils;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import net.sf.saxon.s9api.XdmItem;
import net.sf.saxon.s9api.XdmNode;
import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

public final class CommonValidatorTaskUtil {

    public static List<ValidatorEvent> call(String REGEX, String XPATH, List<XdmNode> xpathResults, List<String> expectedResults ) {
        List<ValidatorEvent> events = new ArrayList<>();
        for (XdmNode node : xpathResults) {
            //String value = node.getStringValue();
            node.forEach(item -> {
                String value = item.getStringValue();
                if (!value.matches(REGEX)){
                    ValidatorLocation loc = new ValidatorLocationImpl();
                    ValidatorEvent event = CrigttTestcaseUtils.setEventDetails(loc, expectedResults);
                    String indexedXPathExpression = CrigttXpathUtils.getIndexedXPathExpression(node.getUnderlyingNode());
                    CrigttTestcaseUtils.setLocationInfo(loc, node.getUnderlyingNode(), indexedXPathExpression + StringUtils.LF + XPATH);
                    event.setActualResult(value);
                    events.add(event);
                }

            });
        }
        return events;
    }

}
