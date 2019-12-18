package com.hobbyshare.config;

import org.apache.ibatis.logging.log4j2.Log4j2Impl;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


import org.springframework.context.annotation.FilterType;

@SpringBootConfiguration
@ComponentScan(
    basePackages = "com.hobbyShare" ,
    excludeFilters = {
    @Filter(type = FilterType.REGEX,pattern = "com.hobbyShare.web.*")
    }
)
@EnableWebMvc 
@EnableAutoConfiguration
public class AppConfig {
}


