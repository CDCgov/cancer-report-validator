package gov.hhs.onc.crigtt.test.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.utils.CrigttTestcaseUtils;
import gov.hhs.onc.crigtt.validate.utils.ValidatorUtils;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.io.File;
import java.util.List;
import javax.annotation.Resource;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.testng.Assert;
import org.testng.annotations.Test;

@Test(groups = { "crigtt.test.it.all" })
public abstract class AbstractCrigttIntegrationTests extends AbstractCrigttTests {
    protected final static String TEST_INPUT_DOC_SRCS_BEAN_NAME = "listTestInputDocSrcs";

    @Value("${crigtt.test.output.dir.path}")
    protected FileSystemResource testOutDirResource;

    @Resource(name = "jaxbMarshallerValidate")
    @SuppressWarnings("SpringJavaAutowiringInspection")
    private CrigttJaxbMarshaller validateJaxbMarshaller;

    protected ResourceSource[] testInputDocSrcs;
    protected File testOutDir;
    protected List<Testcase> testcases;

    protected void writeResponse(boolean testStatus, ValidatorSubmission testSubmission, ValidatorRenderType testRenderType, byte[] testRespContent)
        throws Exception {
        this.writeResponse(ValidatorUtils.buildResponseFileName(testStatus, testSubmission, testRenderType), testRespContent);
    }

    protected void writeResponse(String testRespFileName, byte[] testRespContent) throws Exception {
        FileUtils.writeByteArrayToFile(new File(this.testOutDir, testRespFileName), testRespContent);
    }

    protected void initializeFileSystem() throws Exception {
        if (!(this.testOutDir = testOutDirResource.getFile()).exists()) {
            Assert.assertTrue(this.testOutDir.mkdir(), String.format("Unable to create test output directory (path=%s).", this.testOutDir.getPath()));
        }
    }

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    protected void initializeDocuments() throws Exception {
        this.testInputDocSrcs = this.applicationContext.getBean(TEST_INPUT_DOC_SRCS_BEAN_NAME, ResourceSource[].class);
    }

    protected void initializeTestcases() {
        this.testcases = CrigttTestcaseUtils.buildTestcases(this.applicationContext, this.validateJaxbMarshaller);
    }
}
