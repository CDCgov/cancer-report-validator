package gov.hhs.onc.crigtt.web.controller.impl;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/test")
    public String test() {
        return "Hello World! Controller is working.";
    }
    
    @GetMapping("/health")
    public String health() {
        return "Application is running!";
    }
}
