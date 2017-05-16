package com.jinyinwu.lender.controller;

import com.jinyinwu.lender.model.Role;
import com.jinyinwu.lender.service.RoleService;
import com.jinyinwu.lender.service.UserFamilyLinkService;
import com.jinyinwu.lender.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wangkun23 on 2017/4/24.
 */
@Controller
@RequestMapping("/role")
public class RoleController {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Resource
    private RoleService roleService;

    @RequestMapping("/list")
    public String list(Model model) {
        List<Role> roles = roleService.findAll();
        model.addAttribute("list", roles);
        return "role/list";
    }
}