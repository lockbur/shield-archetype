package com.jinyinwu.lender.service.impl;

import com.jinyinwu.lender.security.CasPrincipal;
import com.jinyinwu.lender.service.EmpService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * 员工登录新管理
 * Created by wangkun23 on 2017/4/25.
 */
@Service
public class EmpServiceImpl implements EmpService {

    @Override
    public boolean isAuthenticated() {
        Subject subject = SecurityUtils.getSubject();
        if (subject.getPrincipal() != null) {
            return subject.isAuthenticated();
        }
        return false;
    }

    @Override
    public CasPrincipal getCurrent() {
        Subject subject = SecurityUtils.getSubject();
        if (subject.getPrincipal() != null) {
            String principal = (String) subject.getPrincipal();

            Map<String, String> attributes = (Map<String, String>) subject.getPrincipals().asList().get(1);

            String username = attributes.get("username");
            String uid = attributes.get("userid");
            String email = attributes.get("email");
            String mobile = attributes.get("mobile");
            String name = "王坤";

            return new CasPrincipal(username, uid, mobile, name, email);
        }
        return null;
    }

    /**
     * 当前登录的管理员信息
     *
     * @return
     */
    public String getCurrentPrincipal() {
        Subject subject = SecurityUtils.getSubject();
        if (subject.getPrincipal() != null) {
            String principal = (String) subject.getPrincipal();
            return principal;
        }
        return "13661014724";
    }
}
