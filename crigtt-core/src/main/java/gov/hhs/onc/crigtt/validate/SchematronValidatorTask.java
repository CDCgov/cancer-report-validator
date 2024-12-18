//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate;

import java.util.Map;

public interface SchematronValidatorTask extends ValidatorTask {
    Map<String, ValidatorLevel> getPhaseLevels();

    void setPhaseLevels(Map<String, ValidatorLevel> phaseLevels);

    ValidatorSchematron getSchematron();

    void setSchematron(ValidatorSchematron schematron);
}
