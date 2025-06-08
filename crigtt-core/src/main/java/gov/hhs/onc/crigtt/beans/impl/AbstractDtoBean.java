package gov.hhs.onc.crigtt.beans.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import gov.hhs.onc.crigtt.beans.DtoBean;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlType;

@JsonTypeInfo(use = Id.NAME)
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "AbstractDtoBean")
public abstract class AbstractDtoBean implements DtoBean {
    private static final long serialVersionUID = 0L;
}
