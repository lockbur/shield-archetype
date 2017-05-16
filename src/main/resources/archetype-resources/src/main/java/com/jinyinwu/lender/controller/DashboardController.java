package com.jinyinwu.lender.controller;

import com.jinyinwu.lender.security.CasPrincipal;
import com.jinyinwu.lender.service.EmpService;
import com.jinyinwu.lender.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Map;

/**
 * 管理后台首页
 * Created by wangkun23 on 2017/3/23.
 */
@Controller
public class DashboardController {
    final Logger logger = LoggerFactory.getLogger(getClass());


    @Resource
    UserService userService;

    @Resource
    EmpService empService;

    @RequestMapping("/dashboard")
    public String index(Model model) {

        CasPrincipal current = empService.getCurrent();
        logger.info("current {}", current);

        return "index";
    }


}
