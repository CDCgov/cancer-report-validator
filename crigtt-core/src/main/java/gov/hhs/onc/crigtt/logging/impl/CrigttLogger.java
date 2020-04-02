package gov.hhs.onc.crigtt.logging.impl;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.spi.LoggingEvent;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.xml.transform.stream.StreamResult;
import net.sf.saxon.lib.Logger;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
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

    private final static Set<String> STACK_SKIP_CLASS_NAMES = new HashSet<>(ClassUtils.convertClassesToClassNames(Arrays.asList(Logger.class,
        CrigttLogger.class)));

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
        LoggingEvent event = new LoggingEvent(ch.qos.logback.classic.Logger.FQCN, LOGGER, level, msg, cause, null);

        StackTraceElement[] stackFrames = new Throwable().getStackTrace();

        for (int a = 1; a < stackFrames.length; a++) {
            if (!STACK_SKIP_CLASS_NAMES.contains(stackFrames[a].getClassName())) {
                stackFrames = ArrayUtils.subarray(stackFrames, a, stackFrames.length);

                break;
            }
        }

        event.setCallerData(stackFrames);

        LOGGER.callAppenders(event);
    }
}
