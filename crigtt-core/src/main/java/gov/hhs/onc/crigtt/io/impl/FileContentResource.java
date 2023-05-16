package gov.hhs.onc.crigtt.io.impl;

import javax.annotation.Nullable;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.core.io.ByteArrayResource;

public class FileContentResource extends ByteArrayResource {
    private String fileName;

    public FileContentResource(byte[] fileContent) {
        this(fileContent, null);
    }

    public FileContentResource(byte[] fileContent, @Nullable String fileName) {
        super(fileContent);

        this.fileName = fileName;
    }

    @Override
    public String getDescription() {
        return ObjectUtils.defaultIfNull(fileName, ObjectUtils.identityToString(this));
    }

    @Nullable
    @Override
    public String getFilename() {
        return this.fileName;
    }
}
