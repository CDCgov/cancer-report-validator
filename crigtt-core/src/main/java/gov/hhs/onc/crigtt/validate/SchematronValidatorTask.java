package gov.hhs.onc.crigtt.validate;

import java.util.Map;

public interface SchematronValidatorTask extends ValidatorTask {
    public Map<String, ValidatorLevel> getPhaseLevels();

    public void setPhaseLevels(Map<String, ValidatorLevel> phaseLevels);

    public ValidatorSchematron getSchematron();

    public void setSchematron(ValidatorSchematron schematron);
}
