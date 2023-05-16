package gov.hhs.onc.crigtt.web.controller.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.json.utils.CrigttJsonUtils;
import gov.hhs.onc.crigtt.utils.CrigttDateUtils;
import gov.hhs.onc.crigtt.validate.ValidatorLevel;
import gov.hhs.onc.crigtt.validate.render.ValidatorRenderType;
import gov.hhs.onc.crigtt.validate.testcases.Testcase;
import gov.hhs.onc.crigtt.validate.testcases.utils.CrigttTestcaseUtils;
import gov.hhs.onc.crigtt.web.controller.CrigttModelAttributes;
import gov.hhs.onc.crigtt.web.validate.ValidatorHeaders;
import gov.hhs.onc.crigtt.web.validate.ValidatorParameters;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

@Controller("controllerHome")
public class HomeController implements ApplicationContextAware, InitializingBean {
    private final static String HOME_VIEW_NAME = "home";

    @Value("${crigtt.build.timestamp}")
    private long buildTimestamp;

    @Value("${crigtt.build.version}")
    private String buildVersion;

    @Resource(name = "timeZoneDefault")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private TimeZone defaultTimeZone;

    @Resource(name = "objMapperCrigtt")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private ObjectMapper objMapper;

    @Resource(name = "jaxbMarshallerValidate")
    private CrigttJaxbMarshaller validateJaxbMarshaller;

    private AbstractApplicationContext appContext;

    private String validatorHeadersJson;
    private String validatorLevelJson;
    private String validatorParamsJson;
    private String validatorRenderTypeJson;
    private List<Testcase> validatorTestcases;

    @RequestMapping(value = { "/", "/home" }, method = { RequestMethod.GET })
    public ModelAndView displayHome(HttpServletRequest servletReq) throws Exception {
        return new ModelAndView(HOME_VIEW_NAME, Collections.singletonMap(
            CrigttModelAttributes.FORMATTED_BUILD_TIMESTAMP_NAME,
            CrigttDateUtils.format(CrigttDateUtils.DISPLAY_FORMAT, this.buildTimestamp,
                ObjectUtils.defaultIfNull(RequestContextUtils.getTimeZone(servletReq), this.defaultTimeZone))));
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.RAWTYPES })
    public void afterPropertiesSet() throws Exception {
        this.validatorHeadersJson = CrigttJsonUtils.serializeConstants(this.objMapper, ValidatorHeaders.class);
        this.validatorLevelJson = CrigttJsonUtils.serializeEnum(this.objMapper, ValidatorLevel.class);
        this.validatorParamsJson = CrigttJsonUtils.serializeConstants(this.objMapper, ValidatorParameters.class);
        this.validatorRenderTypeJson = CrigttJsonUtils.serializeEnum(this.objMapper, ValidatorRenderType.class);
        this.validatorTestcases = CrigttTestcaseUtils.buildTestcases(this.appContext, this.validateJaxbMarshaller);
    }

    @ModelAttribute(value = CrigttModelAttributes.BUILD_VERSION_NAME)
    private String getBuildVersion() {
        return this.buildVersion;
    }

    @ModelAttribute(value = CrigttModelAttributes.TESTCASES_NAME)
    private List<Testcase> getTestcases() {
        return this.validatorTestcases;
    }

    @ModelAttribute(value = CrigttModelAttributes.VALIDATOR_HEADERS_JSON_NAME)
    public String getValidatorHeadersJson() {
        return this.validatorHeadersJson;
    }

    @ModelAttribute(value = CrigttModelAttributes.VALIDATOR_LEVEL_JSON_NAME)
    public String getValidatorLevelJson() {
        return this.validatorLevelJson;
    }

    @ModelAttribute(value = CrigttModelAttributes.VALIDATOR_PARAMS_JSON_NAME)
    public String getValidatorParametersJson() {
        return this.validatorParamsJson;
    }

    @ModelAttribute(value = CrigttModelAttributes.VALIDATOR_RENDER_TYPE_JSON_NAME)
    public String getValidatorRenderTypeJson() {
        return this.validatorRenderTypeJson;
    }

    @Override
    public void setApplicationContext(ApplicationContext appContext) throws BeansException {
        this.appContext = (AbstractApplicationContext) appContext;
    }
}
