package com.hobbyshare.config;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement

@PropertySource("classpath:com/hobbyshare/conf/jdbc.properties")
public class DatabaseConfig {

  @Value("${jdbc.driver}")
  String jdbcDriver;

  @Value("${jdbc.url}")
  String jdbcUrl;

  @Value("${jdbc.username}")
  String jdbcUsername;

  @Value("${jdbc.password}")
  String jdbcPassword;

  @Bean
  public DataSource dataSource() {
    DriverManagerDataSource ds = new DriverManagerDataSource();
    ds.setDriverClassName(this.jdbcDriver);
    ds.setUrl(this.jdbcUrl);
    ds.setUsername(this.jdbcUsername);
    ds.setPassword(this.jdbcPassword);
    return ds;
  }

  @Bean
  public PlatformTransactionManager transctionManager(DataSource dataSource) {
    return new DataSourceTransactionManager(dataSource);
  }


}
