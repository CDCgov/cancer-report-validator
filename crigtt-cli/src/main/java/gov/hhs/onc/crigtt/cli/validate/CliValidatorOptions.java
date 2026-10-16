package gov.hhs.onc.crigtt.cli.validate;

import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import java.io.File;
import javax.annotation.Nullable;
import org.springframework.core.io.Resource;
import org.springframework.core.io.WritableResource;

public interface CliValidatorOptions {
    public boolean getFormat();

    public void setFormat(boolean format);

    public boolean getHelp();

    public void setHelp(boolean help);

    public Resource getInputFile();

    public void setInputFile(Resource inFile);

    @Nullable
    public String getInputFileName();

    public void setInputFileName(@Nullable String inFileName);

    public File getOutputDirectory();

    public void setOutputDirectory(File outDir);

    @Nullable
    public WritableResource getOutputFile();

    public void setOutputFile(@Nullable WritableResource outFile);

    public ValidatorRenderType getType();

    public void setType(ValidatorRenderType type);

    public String getTestcaseId();

    public void setTestcaseId(String testcaseId);
}
