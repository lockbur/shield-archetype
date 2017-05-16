package com.jinyinwu.lender.test.mapper;

import com.jinyinwu.lender.dao.RoleMapper;
import com.jinyinwu.lender.model.Role;
import com.jinyinwu.lender.test.TestBase;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wangkun23 on 2016/12/2.
 */
public class RoleMapperTest extends TestBase {
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());
    @Resource
    private RoleMapper roleMapper;

    @Test
    public void insert() {
        Role role = new Role();
        role.setName("超级管理员11");
        role.setDescription("描述");
        role.setCreatedBy("admin");
        roleMapper.insert(role);
    }

    @Test
    public void findRolesByEmpId() {
        List<Role> list = roleMapper.findRolesByEmpId(1);
        LOGGER.info("### {}", list.size());
    }
}
