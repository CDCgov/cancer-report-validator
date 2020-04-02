package gov.hhs.onc.crigtt.context.impl;

import java.io.File;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.GenericApplicationContext;

public class CrigttApplication extends SpringApplication {
    public final static String BEAN_NAME = "app";

    private boolean autorun = true;
    private File home;
    private String name;

    public CrigttApplication(Object ... srcs) {
        super(srcs);
    }

    @Override
    protected void afterRefresh(ConfigurableApplicationContext context, String[] args) {
        if (this.autorun) {
            super.afterRefresh(context, args);
        }
    }

    @Override
    protected void postProcessApplicationContext(ConfigurableApplicationContext appContext) {
        super.postProcessApplicationContext(appContext);

        ((GenericApplicationContext) appContext).getBeanFactory().registerSingleton(BEAN_NAME, this);
    }

    public boolean getAutorun() {
        return this.autorun;
    }

    public void setAutorun(boolean autorun) {
        this.autorun = autorun;
    }

    public File getHome() {
        return this.home;
    }

    public void setHome(File home) {
        this.home = home;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
