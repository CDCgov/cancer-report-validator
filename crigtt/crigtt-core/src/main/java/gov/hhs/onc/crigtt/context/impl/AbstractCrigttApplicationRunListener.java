package gov.hhs.onc.crigtt.context.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.function.Supplier;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.reflect.ConstructorUtils;
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
    public void finished(ConfigurableApplicationContext appContext, Throwable exception) {
    }

    @Override
    public void contextLoaded(ConfigurableApplicationContext appContext) {
    }

    @Override
    public void contextPrepared(ConfigurableApplicationContext appContext) {
    }

    @Override
    public void environmentPrepared(ConfigurableEnvironment env) {
    }

    @Override
    public void started() {
    }

    protected static <T> T buildComponent(Class<T> componentClass, Supplier<T> defaultSupplier, Object ... args) {
        List<String> componentClassNames = SpringFactoriesLoader.loadFactoryNames(componentClass, AbstractCrigttApplicationRunListener.class.getClassLoader());

        if (componentClassNames.isEmpty()) {
            return defaultSupplier.get();
        }

        List<Class<?>> componentClasses = ClassUtils.convertClassNamesToClasses(componentClassNames);

        componentClasses.sort(AnnotationAwareOrderComparator.INSTANCE);

        Class<?> primaryComponentClass = componentClasses.get(0);

        try {
            return componentClass.cast(ConstructorUtils.invokeConstructor(primaryComponentClass, args));
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException | NoSuchMethodException e) {
            throw new ApplicationContextException(String.format("Unable to instantiate component (class=%s).", primaryComponentClass.getName()), e);
        }
    }
}
