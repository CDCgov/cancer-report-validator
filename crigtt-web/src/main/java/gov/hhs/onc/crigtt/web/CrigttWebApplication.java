package gov.hhs.onc.crigtt.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.cache.CacheAutoConfiguration;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication(exclude = {
    CacheAutoConfiguration.class
})
@ServletComponentScan
@EnableCaching
@EnableWebMvc
@ComponentScan(basePackages = {
    "gov.hhs.onc.crigtt.web.controller",
    "gov.hhs.onc.crigtt.web.config"
})
@PropertySource("classpath:META-INF/crigtt/crigtt-web.properties")
@ImportResource({
    "classpath:META-INF/crigtt/spring/spring-crigtt.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-config.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-data-cache.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-data-db.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-json.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-transform.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-validate.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-validate-render.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-validate-vocab.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-validate-vocab-dynamic.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-validate-vocab-static.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-xml.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-web.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-web-servlet.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-web-filter.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-web-listener.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-web-mvc.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-web-ws.xml",
    "classpath:META-INF/crigtt/spring/spring-crigtt-web-validate.xml"
})
public class CrigttWebApplication {
    public static void main(String[] args) {
        SpringApplication.run(CrigttWebApplication.class, args);
    }
}
