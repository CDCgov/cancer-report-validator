package gov.hhs.onc.crigtt.cli.validate.impl;

import com.beust.jcommander.JCommander;
import com.beust.jcommander.ParameterException;
import com.beust.jcommander.Parameterized;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.cli.context.CliExitStatus;
import gov.hhs.onc.crigtt.cli.validate.CliValidatorException;
import gov.hhs.onc.crigtt.cli.validate.CliValidatorOptions;
import gov.hhs.onc.crigtt.cli.validate.CliValidatorService;
import gov.hhs.onc.crigtt.context.impl.CrigttApplication;
import gov.hhs.onc.crigtt.io.ResourceSourceResolver;
import gov.hhs.onc.crigtt.io.impl.ResourceSource;
import gov.hhs.onc.crigtt.io.impl.StandardInputResource;
import gov.hhs.onc.crigtt.io.impl.StandardOutputResource;
import gov.hhs.onc.crigtt.io.utils.CrigttResourceUtils;
import gov.hhs.onc.crigtt.validate.ValidatorDocument;
import gov.hhs.onc.crigtt.validate.ValidatorReport;
import gov.hhs.onc.crigtt.validate.ValidatorService;
import gov.hhs.onc.crigtt.validate.ValidatorSubmission;
import gov.hhs.onc.crigtt.validate.impl.ValidatorDocumentImpl;
import gov.hhs.onc.crigtt.validate.impl.ValidatorSubmissionImpl;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderOptions;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderer;
import gov.hhs.onc.crigtt.validate.utils.ValidatorUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.List;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.WritableResource;
import org.springframework.core.io.support.ResourcePatternUtils;
import org.springframework.util.ResourceUtils;

public class CliValidatorServiceImpl implements CliValidatorService {
    @SuppressWarnings({ CompilerWarnings.RAWTYPES })
    private class CliCommander extends JCommander {
        @Override
        public Object convertValue(Parameterized parameterized, Class targetType, String src) {
            if (!Resource.class.isAssignableFrom(targetType)) {
                return super.convertValue(parameterized, targetType, src);
            }

            boolean out = WritableResource.class.isAssignableFrom(targetType);

            if (src.equals(STD_STREAM_ARG)) {
                return (out ? new StandardOutputResource() : new StandardInputResource());
            }

            if (!ResourcePatternUtils.isUrl(src) && !StringUtils.startsWithAny(src, ResourceUtils.FILE_URL_PREFIX, ResourceUtils.JAR_URL_PREFIX)) {
                src = ResourceUtils.FILE_URL_PREFIX + src;
            }

            try {
                ResourceSource resourceSrc = CliValidatorServiceImpl.this.resourceSrcResolver.resolve(src);

                if (resourceSrc == null) {
                    throw new CliValidatorException(String.format("Unable to resolve resource: path=%s", src));
                }

                return resourceSrc.getResource();
            } catch (IOException e) {
                throw new CliValidatorException(String.format("Unable to parse resource command line option (names=[%s], value=%s).",
                    StringUtils.join(parameterized.getWrappedParameter().names(), ", "), src), e);
            }
        }
    }

    private final static String STD_STREAM_ARG = "-";

    private final static Logger LOGGER = LoggerFactory.getLogger(CliValidatorServiceImpl.class);

    @Autowired
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private CrigttApplication app;

    @javax.annotation.Resource(name = "resourceSrcResolverImpl")
    private ResourceSourceResolver resourceSrcResolver;

    @javax.annotation.Resource(name = "validatorServiceImpl")
    private ValidatorService service;

    @Autowired
    private List<ValidatorRenderer> renderers;

    private BeanFactory beanFactory;
    private String optsBeanName;
    private CliExitStatus exitStatus = CliExitStatus.SUCCESS;

    @Override
    public void run(String ... args) {
        try {
            this.runInternal(args);
        } catch (CliValidatorException e) {
            LOGGER.error(e.getMessage(), e.getCause());

            this.exitStatus = e.getExitStatus();
        }
    }

    private void runInternal(String ... args) throws CliValidatorException {
        CliValidatorOptions opts = this.beanFactory.getBean(this.optsBeanName, CliValidatorOptions.class);

        CliCommander commander = new CliCommander();
        commander.setProgramName(this.app.getName());
        commander.addObject(opts);

        if (args.length == 0) {
            this.displayUsage(commander);

            return;
        }

        try {
            commander.parse(args);
        } catch (ParameterException e) {
            throw new CliValidatorException(String.format("Invalid command line option(s): %s", e.getMessage()));
        }

        if (opts.getHelp()) {
            this.displayUsage(commander);

            return;
        }

        Resource inFile = opts.getInputFile();
        String inFilePath = CrigttResourceUtils.extractPath(inFile), inFileName;

        if (!inFile.exists()) {
            throw new CliValidatorException(String.format("Input file does not exist: path=%s", inFilePath));
        } else if (inFile instanceof StandardInputResource) {
            inFileName = inFile.getDescription();
        } else if (inFile instanceof FileSystemResource) {
            try {
                File inFileObj = inFile.getFile();

                if (!inFileObj.isFile()) {
                    throw new CliValidatorException(String.format("Input file is not a file: path=%s", inFilePath));
                }

                inFileName = inFileObj.getName();
            } catch (IOException e) {
                throw new CliValidatorException(String.format("Unable to get input file object: name=%s, desc=%s", inFile.getFilename(),
                    inFile.getDescription()));
            }
        } else {
            inFileName = FilenameUtils.getName(inFilePath);
        }

        ValidatorSubmission submission = new ValidatorSubmissionImpl();

        ValidatorDocument doc = new ValidatorDocumentImpl();
        doc.setFileName(ObjectUtils.defaultIfNull(opts.getInputFileName(), inFileName));
        submission.setDocument(doc);
        submission.setTestcaseId(opts.getTestcaseId());

        ValidatorReport report;

        try (InputStream inFileStream = inFile.getInputStream()) {
            doc.setContent(IOUtils.toByteArray(inFileStream));
        } catch (IOException e) {
            throw new CliValidatorException(String.format("Unable to read input file: path=%s", inFilePath), e);
        }

        try {
            report = this.service.validate(submission);
        } catch (Exception e) {
            throw new CliValidatorException(String.format("Unable to validate input file: path=%s", inFilePath), e);
        }

        ValidatorRenderType type = opts.getType();
        File outDir = opts.getOutputDirectory(), outFileObj;
        WritableResource outFile = opts.getOutputFile();

        if (outFile == null) {
            outFile = new FileSystemResource(new File(outDir, ValidatorUtils.buildResponseFileName(true, submission, type)));
        }

        if (outFile instanceof FileSystemResource) {
            try {
                outFileObj = outFile.getFile();
            } catch (IOException e) {
                throw new CliValidatorException(String.format("Unable to get input file object: name=%s, desc=%s", inFile.getFilename(),
                    inFile.getDescription()));
            }

            if (!outFileObj.isAbsolute()) {
                outFile = new FileSystemResource((outFileObj = new File(outDir, outFileObj.getPath())));
            }

            if (!(outDir = outFileObj.getParentFile()).exists()) {
                if (!outDir.mkdirs()) {
                    throw new CliValidatorException(String.format("Unable to create output directory: path=%s", outDir.getPath()));
                }
            } else if (!outDir.isDirectory()) {
                throw new CliValidatorException(String.format("Output directory is not a directory: path=%s", outDir.getPath()));
            }
        }

        String outFilePath = ((outFile instanceof StandardOutputResource) ? STD_STREAM_ARG : CrigttResourceUtils.extractPath(outFile));

        try (OutputStream outFileStream = outFile.getOutputStream()) {
            IOUtils.write(
                this.renderers.stream().filter(renderer -> (renderer.getType() == type)).findFirst().get()
                    .render(report, Collections.singletonMap(ValidatorRenderOptions.FORMAT_NAME, opts.getFormat())), outFileStream);
        } catch (Exception e) {
            throw new CliValidatorException(String.format("Unable to render (type=%s) report to output file: path=%s", type.name(), outFilePath), e);
        }
    }

    private void displayUsage(JCommander commander) {
        StringBuilder usageBuilder = new StringBuilder();

        commander.usage(usageBuilder);

        LOGGER.info(usageBuilder.toString());
    }

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        this.beanFactory = beanFactory;
    }

    @Override
    public int getExitCode() {
        return this.exitStatus.getCode();
    }

    @Override
    public String getOptionsBeanName() {
        return this.optsBeanName;
    }

    @Override
    public void setOptionsBeanName(String optsBeanName) {
        this.optsBeanName = optsBeanName;
    }
}
