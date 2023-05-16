package gov.hhs.onc.crigtt.xml.utils;

import gov.hhs.onc.crigtt.utils.CrigttIteratorUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.collections4.iterators.NodeListIterator;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

public final class CrigttXmlUtils {
    private CrigttXmlUtils() {
    }

    public static List<String> extractTextContent(Node node) {
        return extractTextContent(new ArrayList<>(), node);
    }

    public static List<String> extractTextContent(List<String> textContent, Node node) {
        CrigttIteratorUtils.stream(new NodeListIterator(node)).forEach(childNode -> {
            if (childNode instanceof Text) {
                textContent.add(childNode.getNodeValue());
            } else if (childNode instanceof Element) {
                extractTextContent(textContent, childNode);
            }
        });

        return textContent;
    }
}
