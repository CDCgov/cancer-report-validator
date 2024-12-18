//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate;

import java.security.Provider;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.InitializingBean;

public interface ValidatorService extends BeanFactoryAware, InitializingBean {
    ValidatorReport validate(ValidatorSubmission submission) throws Exception;

    String getDigestAlgorithm();

    void setDigestAlgorithm(String digestAlg);

    Provider getDigestProvider();

    void setDigestProvider(Provider digestProv);

    String[] getTaskBeanNames();

    void setTaskBeanNames(String... taskBeanNames);
}
