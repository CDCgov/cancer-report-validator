package gov.hhs.onc.crigtt.cli.validate;

import gov.hhs.onc.crigtt.cli.context.CliExitStatus;
import javax.annotation.Nullable;

public class CliValidatorException extends RuntimeException {
    private final static long serialVersionUID = 0L;

    private CliExitStatus exitStatus;

    public CliValidatorException(String msg) {
        this(msg, CliExitStatus.ERROR);
    }

    public CliValidatorException(String msg, CliExitStatus exitStatus) {
        this(msg, null, exitStatus);
    }

    public CliValidatorException(String msg, @Nullable Throwable cause) {
        this(msg, cause, CliExitStatus.ERROR);
    }

    public CliValidatorException(String msg, @Nullable Throwable cause, CliExitStatus exitStatus) {
        super(msg, cause);

        this.exitStatus = exitStatus;
    }

    public CliExitStatus getExitStatus() {
        return this.exitStatus;
    }
}
