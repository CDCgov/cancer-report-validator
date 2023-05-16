package gov.hhs.onc.crigtt.context.impl;

import gov.hhs.onc.crigtt.context.CrigttContextComponent;

public abstract class AbstractCrigttContextComponent implements CrigttContextComponent {
    protected CrigttApplication app;

    protected AbstractCrigttContextComponent(CrigttApplication app) {
        this.app = app;
    }
}
