package gov.hhs.onc.crigtt.validate;

import java.util.List;
import java.util.concurrent.Callable;
import org.springframework.beans.factory.InitializingBean;

public interface ValidatorTask extends Callable<List<ValidatorEvent>>, InitializingBean {
}
