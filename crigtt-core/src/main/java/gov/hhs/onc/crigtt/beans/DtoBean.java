package gov.hhs.onc.crigtt.beans;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import java.io.Serializable;

@JsonTypeInfo(use = Id.NAME)
public interface DtoBean extends Serializable {
}
