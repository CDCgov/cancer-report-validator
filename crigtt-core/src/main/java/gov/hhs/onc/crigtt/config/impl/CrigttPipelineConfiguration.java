package gov.hhs.onc.crigtt.config.impl;

import gov.hhs.onc.crigtt.xml.impl.CrigttLocation;
import net.sf.saxon.event.PipelineConfiguration;

public class CrigttPipelineConfiguration extends PipelineConfiguration {
    public CrigttPipelineConfiguration(CrigttConfiguration config) {
        super(config);
    }

    @Override
    public CrigttLocation getSourceLocation(int locId) {
        return new CrigttLocation(this.getLocationProvider(), locId);
    }

    @Override
    public CrigttConfiguration getConfiguration() {
        return ((CrigttConfiguration) super.getConfiguration());
    }
}
