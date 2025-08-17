package gov.hhs.onc.crigtt.data.db;

// Import classes commented out temporarily to avoid compatibility issues
// import com.orientechnologies.orient.client.remote.OEngineRemote;
// import com.orientechnologies.orient.core.engine.local.OEngineLocalPaginated;

public final class CrigttDbPaths {
    public final static String DELIM = "/";
    public final static String SERVER_DELIM = ":";

    // OrientDB 3.x compatible protocol prefixes - using hardcoded strings for compatibility
    public final static String LOCAL_PAGINATED_PROTOCOL_PREFIX = "plocal" + SERVER_DELIM;
    public final static String REMOTE_PROTOCOL_PREFIX = "remote" + SERVER_DELIM;

    private CrigttDbPaths() {
    }
}
