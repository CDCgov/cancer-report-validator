package gov.hhs.onc.crigtt.beans.impl;

import gov.hhs.onc.crigtt.beans.NamedBean;
import javax.annotation.Nullable;

public abstract class AbstractNamedBean extends AbstractIdentifiedBean implements NamedBean {
    protected String name;

    @Override
    public boolean isSetName() {
        return (this.name != null);
    }

    @Nullable
    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(@Nullable String name) {
        this.name = name;
    }
}
