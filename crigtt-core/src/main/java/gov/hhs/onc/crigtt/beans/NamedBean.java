package gov.hhs.onc.crigtt.beans;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.annotation.Nullable;

public interface NamedBean extends IdentifiedBean {
    public boolean isSetName();

    @JsonProperty
    @Nullable
    public String getName();

    public void setName(@Nullable String name);
}
