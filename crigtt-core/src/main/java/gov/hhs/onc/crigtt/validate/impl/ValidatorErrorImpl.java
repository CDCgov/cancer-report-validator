package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorError;
import gov.hhs.onc.crigtt.validate.ValidatorLocation;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;
import java.util.ArrayList;
import java.util.List;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "validatorError")
@XmlRootElement(name = "error")
public class ValidatorErrorImpl extends AbstractValidatorResponse implements ValidatorError {
    @XmlAttribute(name = "message", required = true)
    private String message;

    @XmlElement(name = "location", required = true)
    private ValidatorLocation location;

    @XmlElement(name = "stackTrace")
    private List<String> stackTrace;

    @XmlElement(name = "error")
    private List<ValidatorError> errors;

    @Override
    public String getMessage() {
        return this.message;
    }

    @Override
    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public boolean isSetMessage() {
        return this.message != null;
    }

    @Override
    public ValidatorLocation getLocation() {
        return this.location;
    }

    @Override
    public void setLocation(ValidatorLocation location) {
        this.location = location;
    }

    @Override
    public List<String> getStackTrace() {
        if (stackTrace == null) {
            stackTrace = new ArrayList<>();
        }
        return stackTrace;
    }

    @Override
    public boolean isSetStackTrace() {
        return this.stackTrace != null && !this.stackTrace.isEmpty();
    }

    @Override
    public void unsetStackTrace() {
        this.stackTrace = null;
    }

    @Override
    public void setStackTrace(List<String> values) {
        this.stackTrace = values;
    }

    @Override
    public List<ValidatorError> getErrors() {
        if (errors == null) {
            errors = new ArrayList<>();
        }
        return errors;
    }

    @Override
    public void setErrors(List<ValidatorError> errors) {
        this.errors = errors;
    }
}
