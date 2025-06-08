package gov.hhs.onc.crigtt.validate.impl;

import jakarta.annotation.Generated;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlSeeAlso;
import jakarta.xml.bind.annotation.XmlType;
import gov.hhs.onc.crigtt.validate.ValidatorResponse;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Response")
@XmlSeeAlso({
    ValidatorReportImpl.class,
    ValidatorErrorImpl.class
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:51:11-04:00", comments = "JAXB RI v2.2.11")
public abstract class AbstractValidatorResponse implements ValidatorResponse
{

    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public AbstractValidatorResponse() {
        super();
    }

}
