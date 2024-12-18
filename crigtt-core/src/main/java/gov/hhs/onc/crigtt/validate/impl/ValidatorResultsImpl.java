
package gov.hhs.onc.crigtt.validate.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlType;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.ValidatorEvent;
import gov.hhs.onc.crigtt.validate.ValidatorEventTotals;
import gov.hhs.onc.crigtt.validate.ValidatorResults;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Results", propOrder = {
    "status",
    "eventTotals",
    "events"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("validatorResults")
public class ValidatorResultsImpl implements ValidatorResults
{

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected boolean status;
    @XmlElement(required = true, type = ValidatorEventTotalsImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected ValidatorEventTotalsImpl eventTotals;
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    @XmlElementWrapper(required = true)
    @XmlElement(name = "event", namespace = "urn:gov.hhs.onc.crigtt:validate", type = ValidatorEventImpl.class)
    protected List<ValidatorEvent> events;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ValidatorResultsImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ValidatorResultsImpl(final boolean status, final ValidatorEventTotalsImpl eventTotals, final List<ValidatorEvent> events) {
        this.status = status;
        this.eventTotals = eventTotals;
        this.events = events;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean getStatus() {
        return status;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setStatus(boolean value) {
        this.status = value;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetStatus() {
        return true;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public ValidatorEventTotals getEventTotals() {
        return eventTotals;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void setEventTotals(ValidatorEventTotals value) {
        this.eventTotals = ((ValidatorEventTotalsImpl) value);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetEventTotals() {
        return (this.eventTotals!= null);
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetEvents() {
        return (this.events!= null);
    }

    public List<ValidatorEvent> getEvents() {
        if (events == null) {
            events = new ArrayList<ValidatorEvent>();
        }
        return events;
    }

    public void setEvents(List<ValidatorEvent> events) {
        this.events = events;
    }

}
