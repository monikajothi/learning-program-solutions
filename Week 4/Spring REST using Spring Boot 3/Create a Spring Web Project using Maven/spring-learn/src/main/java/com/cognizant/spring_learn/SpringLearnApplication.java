package com.cognizant.spring_learn;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class SpringLearnApplication {

	public static void main(String[] args) {

		ConfigurableApplicationContext applicationContext= (ConfigurableApplicationContext) SpringApplication.run(SpringLearnApplication.class, args);
		System.out.println("Spring Web Project created..");
	}

}
