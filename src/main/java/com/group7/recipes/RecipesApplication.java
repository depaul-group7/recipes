package com.group7.recipes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.boot.CommandLineRunner;
import org.springframework.beans.factory.annotation.Value;
import lombok.extern.log4j.Log4j2;

@Log4j2
@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class RecipesApplication {
	@Value("${environment}")
	private String env;

	public static void main(String[] args) {
		SpringApplication.run(RecipesApplication.class, args);
	}

	@Bean
	public CommandLineRunner showLogLevel() {
		return (args) -> {
			log.info(env);
			log.debug("Debug");
			log.info("Info");
			log.warn("Warning");
			log.error("Error");
		};
	}
}
