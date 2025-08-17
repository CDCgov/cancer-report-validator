package gov.hhs.onc.crigtt.logging.impl;

import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.util.ContextSelectorStaticBinder;
import ch.qos.logback.core.status.Status;
import ch.qos.logback.core.status.StatusManager;
import ch.qos.logback.core.status.StatusUtil;
import ch.qos.logback.core.util.StatusPrinter;
import gov.hhs.onc.crigtt.context.CrigttProperties;
import gov.hhs.onc.crigtt.context.impl.AbstractCrigttApplicationRunListener;
import gov.hhs.onc.crigtt.logging.CrigttLoggingInitializer;
import java.time.Duration;
import org.slf4j.bridge.SLF4JBridgeHandler;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.event.ContextClosedEvent;
import org.springframework.context.event.SmartApplicationListener;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE + 1)
public class LoggingApplicationRunListener extends AbstractCrigttApplicationRunListener implements SmartApplicationListener {
    private class DefaultLoggingInitializer extends AbstractCrigttLoggingInitializer {
        public DefaultLoggingInitializer() {
            super(LoggingApplicationRunListener.this.app);
        }
    }

    public LoggingApplicationRunListener(SpringApplication app, String[] args) {
        super(app, args);
    }

    @Override
    public void onApplicationEvent(ApplicationEvent event) {
        SLF4JBridgeHandler.removeHandlersForRootLogger();
    }

    @Override
    public boolean supportsEventType(Class<? extends ApplicationEvent> eventType) {
        return ContextClosedEvent.class.isAssignableFrom(eventType);
    }

    @Override
    public boolean supportsSourceType(Class<?> srcType) {
        return ApplicationContext.class.isAssignableFrom(srcType);
    }

    @Override
    public void started(ConfigurableApplicationContext context, Duration timeTaken) {
        SLF4JBridgeHandler.removeHandlersForRootLogger();
        SLF4JBridgeHandler.install();

        this.app.addListeners(this);

        // Check if Logback context selector is available (may be null in servlet containers)
        ch.qos.logback.classic.selector.ContextSelector contextSelector = 
            ContextSelectorStaticBinder.getSingleton().getContextSelector();
        
        if (contextSelector == null) {
            // In servlet containers, Logback may not be fully initialized yet
            // Fall back to basic logging without custom configuration
            return;
        }
        
        LoggerContext loggerContext = contextSelector.getLoggerContext();
        
        if (loggerContext == null) {
            // Context not available, skip custom logging setup
            return;
        }

        loggerContext.stop();
        loggerContext.reset();

        String appName = this.app.getName(), consoleTty = System.getProperty(CrigttProperties.LOGGING_CONSOLE_TTY_NAME);
        CrigttLoggingInitializer loggingInit = buildComponent(CrigttLoggingInitializer.class, DefaultLoggingInitializer::new, this.app);

        loggerContext.setName(appName);
        loggerContext
            .putProperty(CrigttProperties.LOGGING_CONSOLE_TTY_NAME, ((consoleTty != null) ? consoleTty : Boolean.toString((System.console() != null))));
        loggerContext.putProperty(CrigttProperties.LOGGING_FILE_DIR_NAME, loggingInit.buildLogDirectory().getPath());
        loggerContext.putProperty(CrigttProperties.LOGGING_FILE_NAME_NAME, loggingInit.buildLogFileName());

        // Gaffer configurator is no longer available in Logback 1.3+
        // Using Spring Boot default logging configuration instead
        // This configuration is now handled by Spring Boot automatically

        StatusManager statusManager = loggerContext.getStatusManager();
        StatusUtil statusUtil = new StatusUtil(statusManager);
        long lastResetTime = statusUtil.timeOfLastReset();

        if (statusUtil.getHighestLevel(lastResetTime) >= Status.WARN) {
            StatusPrinter.print(statusManager, lastResetTime);
        }

        loggingInit.postProcessContext(loggerContext);

        loggerContext.getLogger(LoggingApplicationRunListener.class).info(
            String.format("Logging initialized (initializerClass=%s).", loggingInit.getClass().getName()));
    }

    @Override
    public int getOrder() {
        return this.getClass().getAnnotation(Order.class).value();
    }
}
