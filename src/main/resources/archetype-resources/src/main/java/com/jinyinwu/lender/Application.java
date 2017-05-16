package com.jinyinwu.lender;

import com.jinyinwu.lender.config.AppConfig;
import com.jinyinwu.lender.config.DataSourceConfig;
import com.jinyinwu.lender.config.ShiroCasConfig;
import com.jinyinwu.lender.config.WebConfig;
import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.*;

/**
 * java config spring mvc mybatis No web.xml
 * Created by wangkun23 on 2017/3/28.
 */
public class Application extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[]{AppConfig.class, WebConfig.class, DataSourceConfig.class, ShiroCasConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class<?>[]{WebConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }


    @Override
    protected Filter[] getServletFilters() {
        //配置shiro
        DelegatingFilterProxy delegatingFilterProxy = new DelegatingFilterProxy("shiroFilter");
        delegatingFilterProxy.setTargetFilterLifecycle(true);
        return new Filter[]{delegatingFilterProxy};
    }
}
