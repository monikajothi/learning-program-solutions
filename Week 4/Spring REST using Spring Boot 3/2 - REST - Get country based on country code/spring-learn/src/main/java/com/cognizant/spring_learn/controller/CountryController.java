package com.cognizant.spring_learn.controller;

import com.cognizant.spring_learn.model.Country;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.*;

@RestController
public class CountryController {
    @GetMapping ("/countries/{code}")
    public Country getCountry(@PathVariable String code){
        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
        Country country = (Country) context.getBean(code.toLowerCase(), Country.class);
        return country;
    }
}
