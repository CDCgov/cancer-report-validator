package gov.hhs.onc.crigtt.context.impl;

import java.lang.reflect.InvocationTargetException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;
import org.apache.commons.lang3.reflect.ConstructorUtils;
import org.springframework.boot.ConfigurableBootstrapContext;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringApplicationRunListener;
import org.springframework.context.ApplicationContextException;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.annotation.AnnotationAwareOrderComparator;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.io.support.SpringFactoriesLoader;

public abstract class AbstractCrigttApplicationRunListener implements SpringApplicationRunListener {
    protected CrigttApplication app;
    protected String[] args;

    protected AbstractCrigttApplicationRunListener(SpringApplication app, String[] args) {
        this.app = ((CrigttApplication) app);
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

    @SuppressWarnings("unchecked")
    protected static <T> T buildComponent(Class<T> componentClass, Supplier<T> defaultSupplier, Object ... args) {
        var factories = SpringFactoriesLoader
            .forResourceLocation("META-INF/spring.factories", AbstractCrigttApplicationRunListener.class.getClassLoader())
            .load(componentClass);
            
        List<T> components = new ArrayList<>(factories);
        
        if (components.isEmpty()) {
            return defaultSupplier.get();
        }

        components.sort(AnnotationAwareOrderComparator.INSTANCE);
        T component = components.get(0);

        if (args.length == 0) {
            return component;
        }

        try {
            return componentClass.cast(ConstructorUtils.invokeConstructor(component.getClass(), args));
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException | NoSuchMethodException e) {
            throw new ApplicationContextException(String.format("Unable to instantiate component (class=%s).", component.getClass().getName()), e);
        }
    }
}
