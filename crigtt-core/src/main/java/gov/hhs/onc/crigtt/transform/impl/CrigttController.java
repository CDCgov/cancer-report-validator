package gov.hhs.onc.crigtt.transform.impl;

import gov.hhs.onc.crigtt.config.impl.CrigttConfiguration;
import java.util.HashMap;
import java.util.Map;
import net.sf.saxon.Controller;
import net.sf.saxon.expr.instruct.Executable;

public class CrigttController extends Controller {
    private Map<Object, Object> contextData = new HashMap<>();

    public CrigttController(CrigttConfiguration config) {
        super(config);
    }

    public CrigttController(CrigttConfiguration config, Executable exec) {
        super(config, exec);
    }

    @Override
    public CrigttConfiguration getConfiguration() {
        return ((CrigttConfiguration) super.getConfiguration());
    }

    public Map<Object, Object> getContextData() {
        return this.contextData;
    }
}
