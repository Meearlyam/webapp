package com.selfeducation.webapp;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WebappApplicationController {

    @CrossOrigin(origins = {"http://localhost:3000"})
    @GetMapping(value = "/sayHello")
    public String sayHello(@RequestParam(value = "name", defaultValue = "world") String name)  {
        return "Hello " + name;
    }
}
