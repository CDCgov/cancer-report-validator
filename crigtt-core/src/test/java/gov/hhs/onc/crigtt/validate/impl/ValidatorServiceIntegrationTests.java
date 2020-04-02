package gov.hhs.onc.crigtt.validate.impl;

import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.test.impl.AbstractCrigttIntegrationTests;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.render.HtmlValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.JsonValidatorRenderer;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.render.XmlValidatorRenderer;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import java.util.Collections;
import java.util.Map;
import javax.annotation.Resource;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.validate.all", "crigtt.test.it.validate.validator.all", "crigtt.test.it.validate.validator.service" })
public class ValidatorServiceIntegrationTests extends AbstractCrigttIntegrationTests {
    private final static Map<String, Object> RENDER_OPTS = Collections.singletonMap(ValidatorRenderOptions.FORMAT_NAME, true);

    @Resource(name = "validatorRendererJsonImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private JsonValidatorRenderer jsonRenderer;

    @Resource(name = "validatorRendererXmlImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private XmlValidatorRenderer xmlRenderer;

    @Resource(name = "validatorRendererHtmlImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private HtmlValidatorRenderer htmlRenderer;

    @Resource(name = "validatorServiceImpl")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ValidatorService service;

    @Test
    public void testValidate() throws Exception {
        for (ResourceSource testInputDocSrc : this.testInputDocSrcs) {
            ValidatorSubmission testSubmission = new ValidatorSubmissionImpl();

            ValidatorDocument testDoc = new ValidatorDocumentImpl();
            testDoc.setContent(testInputDocSrc.getBytes());
            testDoc.setFileName(testInputDocSrc.getResource().getFilename());
            testSubmission.setDocument(testDoc);

            for(Testcase testcase : this.testcases) {
                testSubmission.setTestcaseId(testcase.getId());

                ValidatorReport testReport = this.service.validate(testSubmission);

                this.writeResponse(true, testSubmission, ValidatorRenderType.JSON, this.jsonRenderer.render(testReport, RENDER_OPTS));
                this.writeResponse(true, testSubmission, ValidatorRenderType.XML, this.xmlRenderer.render(testReport, RENDER_OPTS));
                this.writeResponse(true, testSubmission, ValidatorRenderType.HTML, this.htmlRenderer.render(testReport, RENDER_OPTS));
            }
        }
    }

    @BeforeClass(groups = { "crigtt.test.it.validate.all" }, dependsOnMethods = { "initializeDocuments", "initializeTestcases" })
    @Override
    public void initializeFileSystem() throws Exception {
        super.initializeFileSystem();
    }

    @BeforeClass(groups = { "crigtt.test.it.validate.all" })
    @Override
    public void initializeDocuments() throws Exception {
        super.initializeDocuments();
    }

    @BeforeClass(groups = { "crigtt.test.it.validate.all" })
    @Override
    protected void initializeTestcases() {
        super.initializeTestcases();
    }
}
