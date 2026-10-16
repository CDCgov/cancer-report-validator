package gov.hhs.onc.crigtt.cli.logging.impl;

import gov.hhs.onc.crigtt.context.impl.CrigttApplication;
import gov.hhs.onc.crigtt.logging.impl.AbstractCrigttLoggingInitializer;
import java.io.File;
import javax.annotation.Nullable;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE + 1)
public class CliLoggingInitializer extends AbstractCrigttLoggingInitializer {
    private final static String LOG_DIR_PATH = "logs";

    public CliLoggingInitializer(CrigttApplication app) {
        super(app);
    }

    @Nullable
    @Override
    protected String buildLogDirectoryPath() {
        String logDirPath = super.buildLogDirectoryPath();

        return ((logDirPath != null) ? logDirPath : new File(this.app.getHome(), LOG_DIR_PATH).getPath());
    }
}
