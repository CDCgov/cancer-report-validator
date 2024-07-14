//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate;

import java.util.List;
import javax.xml.transform.Source;

public interface ContextSpecificValidatorTask extends ValidatorTask {
    List<Source> getTestcaseSources();

    void setTestcaseSources(List<Source> testcaseSources);
}
