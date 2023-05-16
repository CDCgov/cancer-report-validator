package gov.hhs.onc.crigtt.validate;

import java.util.List;
import javax.xml.transform.Source;

public interface ContextSpecificValidatorTask extends ValidatorTask {
    public List<Source> getTestcaseSources();

    public void setTestcaseSources(List<Source> testcaseSources);
}
