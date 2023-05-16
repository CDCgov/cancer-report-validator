package gov.hhs.onc.crigtt.cli.validate;

import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.ExitCodeGenerator;

public interface CliValidatorService extends BeanFactoryAware, CommandLineRunner, ExitCodeGenerator {
    public String getOptionsBeanName();

    public void setOptionsBeanName(String optsBeanName);
}
