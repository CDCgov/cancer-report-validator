package gov.hhs.onc.crigtt.cli.validate.impl;

import com.beust.jcommander.Parameter;
import gov.hhs.onc.crigtt.cli.validate.CliValidatorOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import java.io.File;
import javax.annotation.Nullable;
import org.springframework.core.io.Resource;
import org.springframework.core.io.WritableResource;

public class CliValidatorOptionsImpl implements CliValidatorOptions {
    private boolean format;
    private boolean help;
    private Resource inFile;
    private String inFileName;
    private File outDir;
    private WritableResource outFile;
    private ValidatorRenderType type;
    private String testcaseId;

    @Override
    public boolean getFormat() {
        return this.format;
    }

    @Override
    @Parameter(names = { "-f", "--format" }, description = "Flag for whether to format the output.")
    public void setFormat(boolean format) {
        this.format = format;
    }

    @Override
    public boolean getHelp() {
        return this.help;
    }

    @Override
    @Parameter(names = { "-h", "--help" }, help = true, description = "Display help.")
    public void setHelp(boolean help) {
        this.help = help;
    }

    @Override
    public Resource getInputFile() {
        return this.inFile;
    }

    @Override
    @Parameter(names = { "-i", "--in-file" }, required = true, arity = 1, description = "Input file or \"-\" for standard input.")
    public void setInputFile(Resource inFile) {
        this.inFile = inFile;
    }

    @Nullable
    @Override
    public String getInputFileName() {
        return this.inFileName;
    }

    @Override
    @Parameter(names = { "-n", "--in-file-name" }, arity = 1, description = "Input file name.")
    public void setInputFileName(@Nullable String inFileName) {
        this.inFileName = inFileName;
    }

    @Override
    public File getOutputDirectory() {
        return this.outDir;
    }

    @Override
    @Parameter(names = { "-d", "--out-dir" }, arity = 1, description = "Output directory.")
    public void setOutputDirectory(File outDir) {
        this.outDir = outDir;
    }

    @Nullable
    @Override
    public WritableResource getOutputFile() {
        return this.outFile;
    }

    @Override
    @Parameter(names = { "-o", "--out-file" }, arity = 1, description = "Output file or \"-\" for standard output.")
    public void setOutputFile(@Nullable WritableResource outFile) {
        this.outFile = outFile;
    }

    @Override
    public ValidatorRenderType getType() {
        return this.type;
    }

    @Override
    @Parameter(names = { "-t", "--type" }, required = true, arity = 1, description = "Output render type.")
    public void setType(ValidatorRenderType type) {
        this.type = type;
    }

    @Override
    public String getTestcaseId() {
        return this.testcaseId;
    }

    @Override
    @Parameter(names = { "-c", "--testcase" }, arity = 1,
        description =
            "Test case for running conformance against test data. Possible values: [testcase0, testcase1a, testcase1b, testcase2, testcase3, testcase4]")
    public void setTestcaseId(String testcaseId) {
        this.testcaseId = testcaseId;
    }
}
