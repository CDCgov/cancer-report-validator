package gov.hhs.onc.crigtt.json.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.Module;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.Jackson2ObjectMapperFactoryBean;

public class CrigttObjectMapperFactoryBean extends Jackson2ObjectMapperFactoryBean {
    private class CrigttPrettyPrinter extends DefaultPrettyPrinter {
        private final static long serialVersionUID = 0L;

        public CrigttPrettyPrinter(String rootIndentStr) {
            super(rootIndentStr);
        }

        @Override
        public void writeObjectFieldValueSeparator(JsonGenerator jsonGen) throws IOException {
            jsonGen.writeRaw(FIELD_VALUE_DELIM);
        }

        @Override
        public CrigttPrettyPrinter createInstance() {
            return this;
        }
    }

    private final static SerializedString FIELD_VALUE_DELIM = new SerializedString(": ");

    private int indentSpaces;

    @Override
    public void afterPropertiesSet() {
        super.afterPropertiesSet();

        DefaultIndenter indenter = new DefaultIndenter(StringUtils.repeat(StringUtils.SPACE, this.indentSpaces), StringUtils.LF);

        CrigttPrettyPrinter prettyPrinter = new CrigttPrettyPrinter(indenter.getIndent());
        prettyPrinter.indentArraysWith(indenter);
        prettyPrinter.indentObjectsWith(indenter);

        this.getObject().setDefaultPrettyPrinter(prettyPrinter);
    }

    public void setFeatures(Map<Object, Boolean> features) {
        features.forEach(this::setFeature);
    }

    public void setFeature(Object feature, boolean featureValue) {
        if (featureValue) {
            this.setFeaturesToEnable(feature);
        } else {
            this.setFeaturesToDisable(feature);
        }
    }

    public int getIndentSpaces() {
        return this.indentSpaces;
    }

    public void setIndentSpaces(int indentSpaces) {
        this.indentSpaces = indentSpaces;
    }

    @Autowired
    @Override
    public void setModules(List<Module> modules) {
        super.setModules(modules);
    }
}
