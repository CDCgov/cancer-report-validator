package gov.hhs.onc.crigtt.validate.impl;

import net.sf.saxon.Configuration;
import net.sf.saxon.event.Receiver;
import net.sf.saxon.om.*;
import net.sf.saxon.pattern.NodeTest;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.tree.iter.AxisIterator;
import net.sf.saxon.tree.util.FastStringBuffer;
import net.sf.saxon.type.SchemaType;

/**
 * Created by sriniwas on 2/2/20.
 */
public class CustomEvalNodeInfo implements NodeInfo {

    private NodeInfo info;
    private String stringValue;

    public CustomEvalNodeInfo(NodeInfo info, String stringValue) {
        this.info = info;
        this.stringValue = stringValue;
    }

    @Override
    public int getNodeKind() {
        return info.getNodeKind();
    }

    @Override
    public boolean isSameNodeInfo(NodeInfo nodeInfo) {
        return info.isSameNodeInfo(nodeInfo);
    }

    @Override
    public String getSystemId() {
        return info.getSystemId();
    }

    @Override
    public String getBaseURI() {
        return info.getBaseURI();
    }

    @Override
    public int getLineNumber() {
        return info.getLineNumber();
    }

    @Override
    public int getColumnNumber() {
        return info.getColumnNumber();
    }

    @Override
    public int compareOrder(NodeInfo nodeInfo) {
        return info.compareOrder(nodeInfo);
    }

    @Override
    public int comparePosition(NodeInfo nodeInfo) {
        return info.compareOrder(nodeInfo);
    }

    @Override
    public String getStringValue() {
        return stringValue;
    }

    @Override
    public int getNameCode() {
        return info.getNameCode();
    }

    @Override
    public int getFingerprint() {
        return info.getFingerprint();
    }

    @Override
    public String getLocalPart() {
        return info.getLocalPart();
    }

    @Override
    public String getURI() {
        return info.getURI();
    }

    @Override
    public String getDisplayName() {
        return info.getDisplayName();
    }

    @Override
    public String getPrefix() {
        return info.getPrefix();
    }

    @Override
    public Configuration getConfiguration() {
        return info.getConfiguration();
    }

    @Override
    public NamePool getNamePool() {
        return info.getNamePool();
    }

    @Override
    public int getTypeAnnotation() {
        return info.getTypeAnnotation();
    }

    @Override
    public SchemaType getSchemaType() {
        return info.getSchemaType();
    }

    @Override
    public AtomicSequence atomize() throws XPathException {
        return info.atomize();
    }

    @Override
    public NodeInfo getParent() {
        return info.getParent();
    }

    @Override
    public AxisIterator iterateAxis(byte b) {
        return info.iterateAxis(b);
    }

    @Override
    public AxisIterator iterateAxis(byte b, NodeTest nodeTest) {
        return info.iterateAxis(b, nodeTest);
    }

    @Override
    public String getAttributeValue(String s, String s1) {
        return info.getAttributeValue(s, s1);
    }

    @Override
    public NodeInfo getRoot() {
        return info.getRoot();
    }

    @Override
    public DocumentInfo getDocumentRoot() {
        return info.getDocumentRoot();
    }

    @Override
    public boolean hasChildNodes() {
        return info.hasChildNodes();
    }

    @Override
    public void generateId(FastStringBuffer fastStringBuffer) {
        info.generateId(fastStringBuffer);
    }

    @Override
    public long getDocumentNumber() {
        return info.getDocumentNumber();
    }

    @Override
    public void copy(Receiver receiver, int i, int i1) throws XPathException {
        info.copy(receiver, i, i1);
    }

    @Override
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindings) {
        return info.getDeclaredNamespaces(namespaceBindings);
    }

    @Override
    public boolean isId() {
        return info.isId();
    }

    @Override
    public boolean isIdref() {
        return info.isIdref();
    }

    @Override
    public boolean isNilled() {
        return info.isNilled();
    }

    @Override
    public void setSystemId(String systemId) {
        info.setSystemId(systemId);
    }

    @Override
    public Item head() {
        return info.head();
    }

    @Override
    public CharSequence getStringValueCS() {
        return info.getStringValueCS();
    }

    @Override
    public SequenceIterator iterate() throws XPathException {
        return info.iterate();
    }
}
