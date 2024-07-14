
package gov.hhs.onc.crigtt.validate.impl;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;
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
