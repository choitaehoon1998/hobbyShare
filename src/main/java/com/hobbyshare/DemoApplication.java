package com.hobbyshare;

import com.hobbyshare.config.AppConfig;
import com.hobbyshare.config.AppWebApplicationInitializer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
