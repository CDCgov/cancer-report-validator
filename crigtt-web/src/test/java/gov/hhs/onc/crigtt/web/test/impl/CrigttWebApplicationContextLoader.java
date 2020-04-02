package gov.hhs.onc.crigtt.web.test.impl;

import gov.hhs.onc.crigtt.context.impl.CrigttApplication;
import gov.hhs.onc.crigtt.test.impl.CrigttApplicationContextLoader;
import gov.hhs.onc.crigtt.web.context.impl.CrigttWebApplicationContext;

public class CrigttWebApplicationContextLoader extends CrigttApplicationContextLoader {
    @Override
    protected CrigttApplication getSpringApplication() {
        CrigttApplication app = super.getSpringApplication();
        app.setApplicationContextClass(CrigttWebApplicationContext.class);
        app.setWebEnvironment(true);

        return app;
    }
}
