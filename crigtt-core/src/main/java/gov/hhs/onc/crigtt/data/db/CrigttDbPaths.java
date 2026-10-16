package gov.hhs.onc.crigtt.data.db;

import com.orientechnologies.orient.client.remote.OEngineRemote;
import com.orientechnologies.orient.core.engine.local.OEngineLocalPaginated;

public final class CrigttDbPaths {
    public final static String DELIM = "/";
    public final static String SERVER_DELIM = ":";

    public final static String LOCAL_PAGINATED_PROTOCOL_PREFIX = OEngineLocalPaginated.NAME + SERVER_DELIM;
    public final static String REMOTE_PROTOCOL_PREFIX = OEngineRemote.NAME + SERVER_DELIM;

    private CrigttDbPaths() {
    }
}
