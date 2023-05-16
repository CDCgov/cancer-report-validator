package gov.hhs.onc.crigtt.test.impl;

import gov.hhs.onc.crigtt.context.impl.CrigttApplicationConfiguration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

@ContextConfiguration(classes = { CrigttApplicationConfiguration.class }, loader = CrigttApplicationContextLoader.class)
@Test(groups = { "crigtt.test.all" })
@TestExecutionListeners(listeners = { DependencyInjectionTestExecutionListener.class, DirtiesContextTestExecutionListener.class }, inheritListeners = false)
public abstract class AbstractCrigttTests extends AbstractTestNGSpringContextTests {
}
