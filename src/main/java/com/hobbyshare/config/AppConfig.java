package com.hobbyshare.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@ComponentScan(
    basePackages = "com.hobbyShare" ,
    excludeFilters = {
    @Filter(type = FilterType.REGEX,pattern = "com.hobbyShare.web.*")
    }
)
@EnableWebMvc 
public class AppConfig {
}


