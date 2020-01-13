package gov.hhs.onc.crigtt.context.impl;

import java.io.IOException;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.UUID;
import javax.annotation.Nullable;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.support.AbstractMessageSource;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.core.env.PropertiesPropertySource;
import org.springframework.core.env.PropertySources;
import org.springframework.core.env.PropertySourcesPropertyResolver;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderSupport;

public class PropertySourcesMessageSource extends AbstractMessageSource implements InitializingBean {
    private static class PropertySourcesLoader extends PropertiesLoaderSupport {
        public PropertySources load() throws IOException {
            MutablePropertySources propSources = new MutablePropertySources();
            propSources.addFirst(new PropertiesPropertySource(UUID.randomUUID().toString(), this.mergeProperties()));

            return propSources;
        }
    }

    private PropertySourcesLoader propSourcesLoader = new PropertySourcesLoader();
    private PropertySourcesPropertyResolver propSourcesPropResolver;

    @Override
    public void afterPropertiesSet() throws Exception {
        this.propSourcesPropResolver = new PropertySourcesPropertyResolver(this.propSourcesLoader.load());
    }

    @Override
    protected String getMessageInternal(String code, Object[] args, Locale locale) {
        return super.getMessageInternal(code, args, locale);
    }

    @Nullable
    @Override
    protected MessageFormat resolveCode(String code, Locale locale) {
        String msg = this.propSourcesPropResolver.resolveRequiredPlaceholders(this.propSourcesPropResolver.getRequiredProperty(code));

        return ((msg != null) ? this.createMessageFormat(msg, Locale.ROOT) : null);
    }

    public void setFileEncoding(String enc) {
        this.propSourcesLoader.setFileEncoding(enc);
    }

    public void setLocations(Resource ... locResources) {
        this.propSourcesLoader.setLocations(locResources);
    }
}
