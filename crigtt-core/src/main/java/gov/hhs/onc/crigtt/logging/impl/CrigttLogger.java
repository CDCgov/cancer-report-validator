package gov.hhs.onc.crigtt.logging.impl;

import ch.qos.logback.classic.Level;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jakarta.annotation.Nullable;
import javax.xml.transform.stream.StreamResult;
import net.sf.saxon.lib.Logger;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component("loggerCrigtt")
public class CrigttLogger extends Logger {
    private class CrigttLoggerWriter extends StringWriter {
        @Override
        public void close() throws IOException {
            super.close();

            CrigttLogger.this.info(this.getBuffer().toString());
        }
    }

    private final static Map<Integer, Level> SEVERITY_LEVELS = Stream.of(new ImmutablePair<>(INFO, Level.INFO), new ImmutablePair<>(WARNING, Level.WARN),
        new ImmutablePair<>(ERROR, Level.ERROR), new ImmutablePair<>(DISASTER, Level.ERROR)).collect(Collectors.toMap(Entry::getKey, Entry::getValue));

    private final static ch.qos.logback.classic.Logger LOGGER = ((ch.qos.logback.classic.Logger) LoggerFactory.getLogger(CrigttLogger.class));

    @Override
    public void disaster(@Nullable String msg) {
        this.disaster(msg, null);
    }

    public void disaster(@Nullable String msg, @Nullable Throwable cause) {
        this.error(msg, cause);
    }

    @Override
    public void error(@Nullable String msg) {
        this.error(msg, null);
    }

    public void error(@Nullable String msg, @Nullable Throwable cause) {
        this.log(Level.ERROR, msg, cause);
    }

    @Override
    public void warning(@Nullable String msg) {
        this.warning(msg, null);
    }

    public void warning(@Nullable String msg, @Nullable Throwable cause) {
        this.log(Level.WARN, msg, cause);
    }

    @Override
    public void info(@Nullable String msg) {
        this.info(msg, null);
    }

    public void info(@Nullable String msg, @Nullable Throwable cause) {
        this.log(Level.INFO, msg, cause);
    }

    public void debug(@Nullable String msg) {
        this.debug(msg, null);
    }

    public void debug(@Nullable String msg, @Nullable Throwable cause) {
        this.log(Level.DEBUG, msg, cause);
    }

    public void trace(@Nullable String msg) {
        this.trace(msg, null);
    }

    public void trace(@Nullable String msg, @Nullable Throwable cause) {
        this.log(Level.TRACE, msg, cause);
    }

    @Override
    public StreamResult asStreamResult() {
        return new StreamResult(new CrigttLoggerWriter());
    }

    @Override
    public void println(String msg, int severity) {
        this.log(SEVERITY_LEVELS.get(severity), msg, null);
    }

    public void log(Level level, @Nullable String msg, @Nullable Throwable cause) {
        // Use standard SLF4J logger for compatibility with Logback 1.4+
        switch (level.levelInt) {
            case Level.ERROR_INT:
                if (cause != null) {
                    LOGGER.error(msg, cause);
                } else {
                    LOGGER.error(msg);
                }
                break;
            case Level.WARN_INT:
                if (cause != null) {
                    LOGGER.warn(msg, cause);
                } else {
                    LOGGER.warn(msg);
                }
                break;
            case Level.INFO_INT:
                if (cause != null) {
                    LOGGER.info(msg, cause);
                } else {
                    LOGGER.info(msg);
                }
                break;
            case Level.DEBUG_INT:
                if (cause != null) {
                    LOGGER.debug(msg, cause);
                } else {
                    LOGGER.debug(msg);
                }
                break;
            case Level.TRACE_INT:
                if (cause != null) {
                    LOGGER.trace(msg, cause);
                } else {
                    LOGGER.trace(msg);
                }
                break;
            default:
                if (cause != null) {
                    LOGGER.info(msg, cause);
                } else {
                    LOGGER.info(msg);
                }
                break;
        }
    }
}
