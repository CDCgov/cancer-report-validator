package gov.hhs.onc.crigtt.xml.impl;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Nullable;
import javax.xml.stream.Location;
import javax.xml.transform.SourceLocator;
import net.sf.saxon.event.LocationProvider;
import net.sf.saxon.expr.parser.ExpressionLocation;
import net.sf.saxon.om.NodeInfo;
import org.xml.sax.SAXParseException;

public class CrigttLocation extends ExpressionLocation implements Location {
    private int charOffset;
    private String publicId;

    public CrigttLocation() {
        this(null, -1, -1);
    }

    public CrigttLocation(Location loc) {
        this(loc.getPublicId(), loc.getSystemId(), loc.getLineNumber(), loc.getColumnNumber(), loc.getCharacterOffset());
    }

    public CrigttLocation(SourceLocator srcLoc) {
        this(srcLoc.getPublicId(), srcLoc.getSystemId(), srcLoc.getLineNumber(), srcLoc.getColumnNumber());
    }

    public CrigttLocation(SAXParseException cause) {
        this(cause.getPublicId(), cause.getSystemId(), cause.getLineNumber(), cause.getColumnNumber());
    }

    public CrigttLocation(NodeInfo nodeInfo) {
        this(nodeInfo.getSystemId(), nodeInfo.getLineNumber(), nodeInfo.getColumnNumber());
    }

    public CrigttLocation(LocationProvider locProv, int locId) {
        this(locProv.getSystemId(locId), locProv.getLineNumber(locId), locProv.getColumnNumber(locId));
    }

    public CrigttLocation(String sysId, int lineNum, int colNum) {
        this(null, sysId, lineNum, colNum);
    }

    public CrigttLocation(@Nullable String publicId, String sysId, int lineNum, int colNum) {
        this(publicId, sysId, lineNum, colNum, -1);
    }

    public CrigttLocation(@Nullable String publicId, String sysId, int lineNum, int colNum, int charOffset) {
        super(sysId, lineNum, colNum);

        this.charOffset = charOffset;
        this.publicId = publicId;
    }

    @Override
    public int getCharacterOffset() {
        return this.charOffset;
    }

    public void setCharacterOffset(int charOffset) {
        this.charOffset = charOffset;
    }

    @JsonProperty
    @Override
    public int getColumnNumber() {
        return super.getColumnNumber();
    }

    @JsonProperty
    @Override
    public int getLineNumber() {
        return super.getLineNumber();
    }

    @Override
    public String getPublicId() {
        return this.publicId;
    }

    public void setPublicId(String publicId) {
        this.publicId = publicId;
    }
}
