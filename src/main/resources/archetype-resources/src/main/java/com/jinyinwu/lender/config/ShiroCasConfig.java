package com.jinyinwu.lender.config;

import com.jinyinwu.lender.shiro.MyShiroFilterFactoryBean;
import org.apache.shiro.cas.CasFilter;
import org.apache.shiro.cas.CasRealm;
import org.apache.shiro.cas.CasSubjectFactory;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import javax.servlet.Filter;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Shiro集成CAS配置
 */
@Configuration
public class ShiroCasConfig {
	private static final String CAS_FILTER = "casFilter";


	@Bean(name = "myShiroCasRealm")
	public CasRealm casRealm(){
		CasRealm realm = new CasRealm();
		//realm.setCacheManager(ehCacheManager);
		realm.setCasServerUrlPrefix("http://test.7mxing.com/cas");
		realm.setCasService("http://localhost:8080/shiro-cas");
		return realm;
	}

	@Bean(name = "lifecycleBeanPostProcessor")
	public LifecycleBeanPostProcessor lifecycleBeanPostProcessor(){
		return new LifecycleBeanPostProcessor();
	}

	@Bean
	public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator(){
		DefaultAdvisorAutoProxyCreator creator = new DefaultAdvisorAutoProxyCreator();
		creator.setProxyTargetClass(true);
		return creator;
	}

	@Bean(name = "securityManager")
	public DefaultWebSecurityManager defaultWebSecurityManager(CasRealm realm){
		DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
		securityManager.setRealm(realm);
		//securityManager.setCacheManager(ehcacheManager());
		// 指定SubjectFactory
		securityManager.setSubjectFactory(new CasSubjectFactory());
		return securityManager;
	}

	@Bean
	public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(DefaultWebSecurityManager securityManager){
		AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
		advisor.setSecurityManager(securityManager);
		return advisor;
	}

	@Bean(name = "shiroFilter")
	public ShiroFilterFactoryBean shiroFilterFactoryBean(DefaultWebSecurityManager securityManager,CasFilter casFilter){
		ShiroFilterFactoryBean factoryBean = new MyShiroFilterFactoryBean();

		factoryBean.setSecurityManager(securityManager);
		factoryBean.setLoginUrl("http://test.7mxing.com/cas/login?service=http://localhost:8080/shiro-cas");
		factoryBean.setSuccessUrl("/dashboard");
		factoryBean.setUnauthorizedUrl("/403");

		// 添加casFilter到shiroFilter中
		Map<String, Filter> filterMap = new HashMap<String, Filter>(1);
		filterMap.put(CAS_FILTER, casFilter);
		factoryBean.setFilters(filterMap);

		Map<String, String> filterChainMap = new LinkedHashMap<String, String>();

		filterChainMap.put("/shiro-cas", CAS_FILTER);//shiro集成cas后，首先添加该规则
		filterChainMap.put("/logout", "anon");
		filterChainMap.put("/api/v1/codes/**", "anon");

		filterChainMap.put("/emp/**", "authc");
		filterChainMap.put("/user/**", "authc");
		filterChainMap.put("/user/edit/**", "authc,perms[user:edit]");
		filterChainMap.put("/role/**", "authc");
		filterChainMap.put("/**", "authc");
		factoryBean.setFilterChainDefinitionMap(filterChainMap);

		return factoryBean;
	}


	/**
	 * CAS过滤器
	 */
	@Bean
	public CasFilter casFilter(){
		CasFilter casFilter = new CasFilter();
		casFilter.setName(CAS_FILTER);
		casFilter.setEnabled(true);
		casFilter.setFailureUrl("/error.jsp");
		return casFilter;
	}

}
