package gov.hhs.onc.crigtt.test.impl;

import gov.hhs.onc.crigtt.context.impl.CrigttApplication;
import gov.hhs.onc.crigtt.context.impl.CrigttApplicationConfiguration;
import org.springframework.boot.test.SpringApplicationContextLoader;

public class CrigttApplicationContextLoader extends SpringApplicationContextLoader {
    @Override
    protected CrigttApplication getSpringApplication() {
        CrigttApplication app = CrigttApplicationConfiguration.buildApplication();
        app.setAutorun(false);

        return app;
    }
}
