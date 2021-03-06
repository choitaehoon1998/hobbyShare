package com.hobbyshare.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.util.UrlPathHelper;

@ComponentScan("com.hobbyshare.web")
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

  // multipart 처리
  @Bean
  public MultipartResolver multipartResolver() {
    CommonsMultipartResolver mr = new CommonsMultipartResolver();

    mr.setMaxUploadSize(1000000000);
    mr.setMaxInMemorySize(2000000000);
    mr.setMaxUploadSizePerFile(500000000);
    return mr;
  }

  // 기본 ViewResolver 대체할 때
  @Bean
  public ViewResolver viewResolver() {
    InternalResourceViewResolver vr = new InternalResourceViewResolver("/WEB-INF/jsp/", ".jsp");
    return vr;
  }

  @Override
  public void configurePathMatch(PathMatchConfigurer configurer) {
    UrlPathHelper helper = new UrlPathHelper();
    helper.setRemoveSemicolonContent(false);
    configurer.setUrlPathHelper(helper);
  }
  
  @Bean
  public ViewResolver tilesViewResolver() {
    UrlBasedViewResolver vr = new UrlBasedViewResolver();

    // Tiles 설정에 따라 템플릿을 실행하는 뷰 처리기 등록.
    // => TilesConfigurer 객체를 찾아 설정 정보를 얻는다.
    vr.setViewClass(TilesView.class);

    vr.setOrder(1); // 기존 뷰리졸버 보다 Tiles를 먼저 적용하기
    return vr;
  }
		
  // Tiles 설정 정보를 다루는 객체
  @Bean
  public TilesConfigurer tilesConfigurer() {
    TilesConfigurer configurer = new TilesConfigurer();
    configurer.setDefinitions("/WEB-INF/defs/tiles.xml");
    return configurer;
  }

}
