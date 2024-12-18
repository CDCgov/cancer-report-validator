package gov.hhs.onc.crigtt.validate;

import java.util.List;

public interface HasCommonValidators {
    List<ValidatorTask> getCommonValidators();
    void setCommonValidators(List<ValidatorTask> commonValidators);
}
