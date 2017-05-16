package com.jinyinwu.lender.config;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter4;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.List;


/**
 * spring mvc相关配置
 */
@Configuration
@EnableWebMvc
@ComponentScan({"com.jinyinwu.lender.controller", "com.jinyinwu.lender.api.v1"})
public class WebConfig extends WebMvcConfigurerAdapter {

    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Bean
    public FastJsonHttpMessageConverter4 jsonHttpMessageConverter() {
        FastJsonHttpMessageConverter4 converter = new FastJsonHttpMessageConverter4();
        FastJsonConfig jsonConfig = new FastJsonConfig();
        jsonConfig.setDateFormat("yyyy-MM-dd HH:mm:ss");
        //wangkun23 2017-3-9 修复BigDecimal如果是0.000000000 显示科学计数法问题
        jsonConfig.setSerializerFeatures(SerializerFeature.WriteBigDecimalAsPlain);
        converter.setFastJsonConfig(jsonConfig);
        return converter;
    }


    /**
     * REST 格式转换
     */
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(0, jsonHttpMessageConverter());
        super.configureMessageConverters(converters);
    }

    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    /**
     * spring mvc文件上传
     *
     * @return
     */
    @Bean
    public MultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(5 * 1024 * 1024);
        return multipartResolver;
    }

    //拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //LocaleChangeInterceptor localeChangeInterceptor = new LocaleChangeInterceptor();
        //localeChangeInterceptor.setParamName("lang");
        //registry.addInterceptor(localeChangeInterceptor);
    }
}