package com.jinyinwu.lender.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by wangkun23 on 2017/4/25.
 */
@Controller
@RequestMapping("/emp")
public class EmpController {

    final Logger logger = LoggerFactory.getLogger(getClass());


    @RequestMapping("/profile")
    public String profile(Model model) {
        Subject subject = SecurityUtils.getSubject();
        PrincipalCollection principalCollection = subject.getPrincipals();
        Object obj = principalCollection.getPrimaryPrincipal();
        Map<String, String> attributes = (Map<String, String>) subject.getPrincipals().asList().get(1);

        model.addAttribute("profile", attributes);
        return "settings/profile";
    }

    @RequestMapping("/logout")
    public String logout(Model model) {
        SecurityUtils.getSubject().logout();
        return "redirect:http://test.7mxing.com/cas/logout";
    }
}
