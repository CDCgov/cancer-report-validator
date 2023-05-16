package gov.hhs.onc.crigtt.cli.validate.impl;

import gov.hhs.onc.crigtt.cli.test.impl.AbstractCrigttCliIntegrationTests;
import gov.hhs.onc.crigtt.cli.validate.CliValidatorService;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.io.utils.CrigttResourceUtils;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import javax.annotation.Resource;
import org.apache.commons.lang3.ArrayUtils;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.cli.validate.all", "crigtt.test.it.cli.validate.validator.all", "crigtt.test.it.cli.validate.validator.service" })
public class CliValidatorServiceIntegrationTests extends AbstractCrigttCliIntegrationTests {
    @Resource(name = "cliValidatorServiceCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private CliValidatorService service;

    @Test(dependsOnMethods = { "testRunBadOption" })
    public void testRunRender() throws Exception {
        for (ResourceSource testInputDocSrc : this.testInputDocSrcs) {
            String[] baseArgs = ArrayUtils.toArray("-i", CrigttResourceUtils.extractPath(testInputDocSrc.getResource()), "-d", this.testOutDir.getPath(), "-t");

            for (ValidatorRenderType renderType : ValidatorRenderType.values()) {
                this.service.run(ArrayUtils.add(baseArgs, renderType.name()));

                Assert.assertEquals(this.service.getExitCode(), 1, "Invalid CLI validator service exit code.");
            }
        }
    }

    @Test(dependsOnMethods = { "testRunUsage" })
    public void testRunBadOption() throws Exception {
        this.service.run("-q");

        Assert.assertEquals(this.service.getExitCode(), 1, "Invalid CLI validator service exit code.");
    }

    @Test
    public void testRunUsage() throws Exception {
        this.service.run(ArrayUtils.EMPTY_STRING_ARRAY);

        Assert.assertEquals(this.service.getExitCode(), 0, "Invalid CLI validator service exit code.");
    }

    @BeforeClass(groups = { "crigtt.test.it.cli.validate.all" }, dependsOnMethods = { "initializeDocuments", "initializeTestcases" })
    @Override
    public void initializeFileSystem() throws Exception {
        super.initializeFileSystem();
    }

    @BeforeClass(groups = { "crigtt.test.it.cli.validate.all" })
    @Override
    public void initializeDocuments() throws Exception {
        super.initializeDocuments();
    }

    @BeforeClass(groups = { "crigtt.test.it.cli.validate.all" })
    @Override
    protected void initializeTestcases() {
        super.initializeTestcases();
    }
}
