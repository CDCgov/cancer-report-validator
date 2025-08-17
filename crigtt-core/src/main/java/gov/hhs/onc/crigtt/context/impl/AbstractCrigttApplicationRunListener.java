package gov.hhs.onc.crigtt.context.impl;

import java.time.Duration;
import java.util.List;
import java.util.function.Supplier;
import org.springframework.boot.ConfigurableBootstrapContext;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringApplicationRunListener;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.io.support.SpringFactoriesLoader;

public abstract class AbstractCrigttApplicationRunListener implements SpringApplicationRunListener {
    protected CrigttApplication app;
    protected String[] args;

    protected AbstractCrigttApplicationRunListener(SpringApplication app, String[] args) {
        // Handle both CrigttApplication and regular SpringApplication
        if (app instanceof CrigttApplication) {
            this.app = (CrigttApplication) app;
        } else {
            // Create a CrigttApplication wrapper when running in servlet container
            this.app = new CrigttApplication(app.getAllSources().toArray(new Class<?>[0]));
        }
        this.args = args;
    }

    @Override
    public void starting(ConfigurableBootstrapContext bootstrapContext) {
    }

    @Override
    public void environmentPrepared(ConfigurableBootstrapContext bootstrapContext, ConfigurableEnvironment environment) {
    }

    @Override
    public void contextPrepared(ConfigurableApplicationContext context) {
    }

    @Override
    public void contextLoaded(ConfigurableApplicationContext context) {
    }

    @Override
    public void started(ConfigurableApplicationContext context, Duration timeTaken) {
    }

    @Override
    public void ready(ConfigurableApplicationContext context, Duration timeTaken) {
    }

    @Override
    public void failed(ConfigurableApplicationContext context, Throwable exception) {
    }

    protected static <T> T buildComponent(Class<T> componentType, Supplier<T> defaultSupplier, CrigttApplication app) {
        List<T> components = SpringFactoriesLoader.forResourceLocation("META-INF/spring.factories")
                .load(componentType);

        if (components.isEmpty()) {
            return defaultSupplier.get();
        }

        return components.get(0);
    }
}