package gov.hhs.onc.crigtt.xml.utils;

import javax.annotation.Nullable;
import net.sf.saxon.om.Item;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.s9api.XdmAtomicValue;
import net.sf.saxon.s9api.XdmItem;
import net.sf.saxon.s9api.XdmNode;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.tree.util.Navigator;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public final class CrigttXpathUtils {
    public final static String CALL_DELIM = ",";
    public final static String EXPR_DELIM = "/";

    public final static String QUOTE = "'";

    public final static String ATTR_PREFIX = "@";
    public final static String CALL_PREFIX = "(";
    public final static String PREDICATE_PREFIX = "[";
    public final static String VAR_PREFIX = "$";

    public final static String CALL_SUFFIX = ")";
    public final static String PREDICATE_SUFFIX = "]";

    public final static String AND_OP = "and";
    public final static String OR_OP = "or";

    public final static String TEXT_NODE_SELECTION_NAME = "text";
    public final static String TEXT_NODE_SELECTION = TEXT_NODE_SELECTION_NAME + CALL_PREFIX + CALL_SUFFIX;

    public final static String CURRENT_NODE = ".";

    private CrigttXpathUtils() {
    }

    public static String buildAbsoluteExpression(Node node) {
        return buildAbsoluteExpression(true, node);
    }

    public static String buildAbsoluteExpression(boolean includeNs, Node node) {
        String nodeName = (includeNs ? node.getNodeName() : node.getLocalName()), nodeExpr = nodeName;
        boolean attrNode = (node.getNodeType() == Node.ATTRIBUTE_NODE);

        if (attrNode) {
            nodeExpr = ATTR_PREFIX + nodeExpr;
        }

        nodeExpr = EXPR_DELIM + nodeExpr;

        Node parentNode = node.getParentNode();

        if ((parentNode != null) && !(parentNode instanceof Document)) {
            if (!attrNode) {
                boolean matchedNode = false, matchedSiblingNode = false;
                int nodeIndex = 0;
                NodeList siblingNodes = parentNode.getChildNodes();
                Node siblingNode;

                for (int a = 0; a < siblingNodes.getLength(); a++) {
                    if ((siblingNode = siblingNodes.item(a)).isSameNode(node)) {
                        matchedNode = true;

                        nodeIndex++;
                    } else if ((includeNs ? siblingNode.getNodeName() : siblingNode.getLocalName()).equals(nodeName)) {
                        matchedSiblingNode = true;

                        if (!matchedNode) {
                            nodeIndex++;
                        }
                    }
                }

                if (matchedSiblingNode) {
                    nodeExpr += PREDICATE_PREFIX + nodeIndex + PREDICATE_SUFFIX;
                }
            }

            nodeExpr = buildAbsoluteExpression(includeNs, parentNode) + nodeExpr;
        }

        return nodeExpr;
    }

    public static String getIndexedXPathExpression(NodeInfo nodeInfo) {
        return Navigator.getPath(nodeInfo);
    }

    public static int getNumDelimiters(String baseXPathExpression, String delimiter) {
        int numDelims = 0;
        int startPos = 0;
        boolean endSearch = false;

        while (!endSearch) {
            int delimIndex = baseXPathExpression.indexOf(delimiter, startPos);

            if (delimIndex > -1) {
                numDelims++;
                startPos = delimIndex + 1;
            } else {
                endSearch = true;
            }
        }

        return numDelims;
    }

    public static String getXPathExpressionPrefix(String xPathExpression, int numPrefixDelims) {
        int numDelims = 0;
        int startPos = 0;
        boolean endSearch = false;
        String xPathExpressionPrefix = "";

        while (!endSearch) {
            int delimIndex = xPathExpression.indexOf(CrigttXpathUtils.EXPR_DELIM, startPos);

            if (delimIndex > -1 && numPrefixDelims + 1 > numDelims) {
                numDelims++;
                startPos = delimIndex + 1;
                xPathExpressionPrefix = xPathExpression.substring(0, delimIndex);
            } else {
                endSearch = true;
            }
        }

        return xPathExpressionPrefix;
    }

    @Nullable
    public static String getStringValue(@Nullable XdmValue rootValue) {
        return getStringValue(rootValue, 0);
    }

    @Nullable
    public static String getStringValue(@Nullable XdmValue rootValue, int valueIndex) {
        if (rootValue instanceof XdmNode) {
            return ((XdmNode) rootValue).getStringValue();
        }

        XdmAtomicValue value = getAtomicValue(rootValue, valueIndex);

        return ((value != null) ? value.getStringValue() : null);
    }

    @Nullable
    public static XdmAtomicValue getAtomicValue(@Nullable XdmValue rootValue) {
        return getAtomicValue(rootValue, 0);
    }

    @Nullable
    public static XdmAtomicValue getAtomicValue(@Nullable XdmValue rootValue, int valueIndex) {
        return getValue(rootValue, valueIndex, XdmAtomicValue.class);
    }

    @Nullable
    public static <T extends XdmValue> T getValue(@Nullable XdmValue rootValue, Class<T> valueClass) {
        return getValue(rootValue, 0, valueClass);
    }

    @Nullable
    public static <T extends XdmValue> T getValue(@Nullable XdmValue rootValue, int valueIndex, Class<T> valueClass) {
        return (hasValues(rootValue, (valueIndex + 1)) ? valueClass.cast(rootValue.itemAt(valueIndex)) : null);
    }

    public static boolean hasValue(@Nullable XdmValue rootValue) {
        return hasValues(rootValue, 1);
    }

    public static boolean hasValues(@Nullable XdmValue rootValue, int numValues) {
        return ((rootValue != null) && (rootValue.size() >= numValues));
    }

    @Nullable
    public static <T extends XdmItem> T wrapItem(Item item, Class<T> itemClass) {
        return ((item != null) ? itemClass.cast(XdmValue.wrap(item)) : null);
    }
}
