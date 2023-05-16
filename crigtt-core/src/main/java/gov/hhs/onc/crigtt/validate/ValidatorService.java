package gov.hhs.onc.crigtt.validate;

import java.security.Provider;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.InitializingBean;

public interface ValidatorService extends BeanFactoryAware, InitializingBean {
    public ValidatorReport validate(ValidatorSubmission submission) throws Exception;

    public String getDigestAlgorithm();

    public void setDigestAlgorithm(String digestAlg);

    public Provider getDigestProvider();

    public void setDigestProvider(Provider digestProv);

    public String[] getTaskBeanNames();

    public void setTaskBeanNames(String ... taskBeanNames);
}
