package gov.hhs.onc.crigtt.logging.impl;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.pattern.color.ANSIConstants;
import ch.qos.logback.core.pattern.color.ForegroundCompositeConverterBase;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

public class PriorityColorCompositeConverter extends ForegroundCompositeConverterBase<ILoggingEvent> {
    private final static Map<Level, String> LVL_COLOR_CODE_MAP = Stream
        .of(new ImmutablePair<>(Level.TRACE, ANSIConstants.DEFAULT_FG), new ImmutablePair<>(Level.DEBUG, ANSIConstants.CYAN_FG),
            new ImmutablePair<>(Level.INFO, ANSIConstants.BLUE_FG), new ImmutablePair<>(Level.WARN, ANSIConstants.YELLOW_FG),
            new ImmutablePair<>(Level.ERROR, ANSIConstants.RED_FG))
        .collect(Collectors.toMap(Pair::getLeft, ((lvlColorCodePair) -> (ANSIConstants.BOLD + lvlColorCodePair.getRight()))));

    private boolean enabled;

    @Override
    public void start() {
        this.enabled = BooleanUtils.toBoolean(this.getContext().getProperty(CrigttProperties.LOGGING_CONSOLE_TTY_NAME));

        super.start();
    }

    @Override
    protected String transform(ILoggingEvent event, String msg) {
        msg = event.getLevel().toString();

        return (this.enabled ? super.transform(event, msg) : msg);
    }

    @Override
    protected String getForegroundColorCode(ILoggingEvent event) {
        return LVL_COLOR_CODE_MAP.get(event.getLevel());
    }
}
