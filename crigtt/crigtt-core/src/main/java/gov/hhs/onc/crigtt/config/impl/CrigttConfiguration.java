package gov.hhs.onc.crigtt.config.impl;

import com.ctc.wstx.sax.WstxSAXParser;
import gov.hhs.onc.crigtt.xml.impl.CrigttSaxParserFactory;
import java.util.Map;
import java.util.Properties;
import javax.annotation.Nullable;
import javax.annotation.Resource;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerFactoryConfigurationError;
import net.sf.saxon.Configuration;
import net.sf.saxon.lib.FeatureKeys;
import net.sf.saxon.lib.ParseOptions;
import net.sf.saxon.lib.StandardURIResolver;
import net.sf.saxon.trans.LicenseException;
import net.sf.saxon.trans.XPathException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.InitializingBean;
import org.xml.sax.ErrorHandler;

public class CrigttConfiguration extends Configuration implements InitializingBean {
    private static class CrigttUriResolver extends StandardURIResolver {
        public CrigttUriResolver(CrigttConfiguration config) {
            super(config);
        }

        @Nullable
        @Override
        public Source resolve(String sysId, @Nullable String baseUri) throws XPathException {
            return ((sysId.isEmpty() && !StringUtils.isEmpty(baseUri)) ? super.resolve(baseUri, null) : super.resolve(sysId, baseUri));
        }
    }

    @Resource(name = "saxParserFactoryCrigtt")
    private CrigttSaxParserFactory saxParserFactory;

    @Override
    public WstxSAXParser makeParser(@Nullable String className) throws TransformerFactoryConfigurationError {
        return this.saxParserFactory.newSAXParser();
    }

    @Override
    public CrigttPipelineConfiguration makePipelineConfiguration() {
        CrigttPipelineConfiguration pipelineConfig = new CrigttPipelineConfiguration(this);
        pipelineConfig.setErrorListener(this.getErrorListener());
        pipelineConfig.setParseOptions(new ParseOptions(this.getParseOptions()));
        pipelineConfig.setURIResolver(this.getURIResolver());

        return pipelineConfig;
    }

    public int getInteger(Properties props, String propName, int defaultIfNull) {
        return this.getInteger(propName, props.getProperty(propName), defaultIfNull);
    }

    public int getInteger(String propName, @Nullable Object propValue, int defaultIfNull) {
        if (propValue == null) {
            return defaultIfNull;
        } else if (propValue instanceof Integer) {
            return ((Integer) propValue);
        } else if (propValue instanceof String) {
            return Integer.parseInt(((String) propValue));
        } else {
            throw new IllegalArgumentException(String.format("Property (name=%s) value (class=%s) must be an integer.", propName, propValue.getClass()
                .getName()));
        }
    }

    public boolean getBoolean(Properties props, String propName) {
        return this.getBoolean(propName, props.getProperty(propName));
    }

    public boolean getBoolean(Properties props, String propName, boolean defaultIfNull) {
        return this.getBoolean(propName, props.getProperty(propName), defaultIfNull);
    }

    public boolean getBoolean(String propName, @Nullable Object propValue) {
        return this.getBoolean(propName, propValue, false);
    }

    public boolean getBoolean(String propName, @Nullable Object propValue, boolean defaultIfNull) {
        return ((propValue != null) ? super.requireBoolean(propName, propValue) : defaultIfNull);
    }

    @Override
    public void checkLicensedFeature(int featureId, String featureName) throws LicenseException {
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        this.setSourceParserClass(StringUtils.EMPTY);
        this.setStyleParserClass(StringUtils.EMPTY);
        this.setURIResolver(new CrigttUriResolver(this));
    }

    public void setConfigurationProperties(Map<String, ?> configProps) {
        configProps.forEach(this::setConfigurationProperty);
    }

    public ErrorHandler getErrorHandler() {
        return this.getParseOptions().getErrorHandler();
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.getParseOptions().setErrorHandler(errorHandler);
    }

    public boolean isSchemaAware() {
        return this.getDefaultXsltCompilerInfo().isSchemaAware();
    }

    public void setSchemaAware(boolean schemaAware) {
        this.getDefaultXsltCompilerInfo().setSchemaAware(schemaAware);
    }

    public void setXsltVersion(String xsltVersion) {
        this.setConfigurationProperty(FeatureKeys.XSLT_VERSION, xsltVersion);
    }
}
