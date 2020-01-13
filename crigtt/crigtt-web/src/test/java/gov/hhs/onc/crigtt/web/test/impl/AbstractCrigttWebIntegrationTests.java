package gov.hhs.onc.crigtt.web.test.impl;

import gov.hhs.onc.crigtt.context.impl.CrigttApplicationConfiguration;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttIntegrationTests;
import org.springframework.test.context.ContextConfiguration;
import org.testng.annotations.Test;

@ContextConfiguration(classes = { CrigttApplicationConfiguration.class }, loader = CrigttWebApplicationContextLoader.class)
@Test(groups = { "crigtt.test.web.all", "crigtt.test.it.web.all" })
public abstract class AbstractCrigttWebIntegrationTests extends AbstractCrigttIntegrationTests {
}
