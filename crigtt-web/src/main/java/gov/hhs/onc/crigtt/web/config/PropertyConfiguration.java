package gov.hhs.onc.crigtt.web.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.Ordered;
import org.springframework.core.io.ClassPathResource;

@Configuration
public class PropertyConfiguration {

    @Bean
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
        PropertySourcesPlaceholderConfigurer configurer = new PropertySourcesPlaceholderConfigurer();
        configurer.setIgnoreUnresolvablePlaceholders(true);
        configurer.setIgnoreResourceNotFound(true);
        configurer.setOrder(Ordered.HIGHEST_PRECEDENCE);
        
        // Load all property files that match the pattern
        configurer.setLocations(
            new ClassPathResource("META-INF/crigtt/crigtt.properties"),
            new ClassPathResource("META-INF/crigtt/crigtt-messages.properties"),
            new ClassPathResource("META-INF/crigtt/crigtt-web.properties"),
            new ClassPathResource("META-INF/crigtt/crigtt-web-messages.properties")
        );
        configurer.setFileEncoding("UTF-8");
        return configurer;
    }
}
