package com.hobbyshare.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@ComponentScan(basePackages = "com.hobbyshare",
    excludeFilters = {@Filter(type = FilterType.REGEX, pattern = "com.hobbyshare.web.*")})

@EnableWebMvc 
public class AppConfig {

}
