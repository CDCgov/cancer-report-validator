package gov.hhs.onc.crigtt.beans.impl;

import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import javax.annotation.Nullable;

public abstract class AbstractIdentifiedBean implements IdentifiedBean {
    protected String id;

    @Override
    public boolean isSetId() {
        return (this.id != null);
    }

    @Nullable
    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public void setId(@Nullable String id) {
        this.id = id;
    }
}
