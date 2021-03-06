package com.jinyinwu.lender.config;

import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.VelocityException;
import org.springframework.context.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.velocity.VelocityEngineFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.Properties;

/**
 * 公有的一些配置信息，邮件和短信等
 * Created by wangkun23 on 2017/3/23.
 */
@Configuration
@PropertySource("classpath:application.properties")
@ComponentScan(basePackages = "com.jinyinwu.lender.service",
        includeFilters = {@ComponentScan.Filter(type = FilterType.ANNOTATION, value = {ControllerAdvice.class, Controller.class, RestController.class})})
public class AppConfig {
    /**
     * velocity的模板引擎
     *
     * @return
     * @throws VelocityException
     * @throws IOException
     */
    @Bean
    public VelocityEngine getVelocityEngine() throws VelocityException, IOException {
        VelocityEngineFactory factory = new VelocityEngineFactory();

        Properties props = new Properties();
        props.put("resourceLoaderPath", "classpath:templates");
        props.put("configLocation", "classpath:velocity.properties");

        factory.setVelocityProperties(props);

        return factory.createVelocityEngine();
    }
}
