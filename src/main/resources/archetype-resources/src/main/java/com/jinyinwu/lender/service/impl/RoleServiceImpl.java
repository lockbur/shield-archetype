package com.jinyinwu.lender.service.impl;

import com.jinyinwu.lender.dao.RoleMapper;
import com.jinyinwu.lender.model.Role;
import com.jinyinwu.lender.service.RoleService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by wangkun23 on 2016/12/2.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleMapper roleMapper;

    @Override
    public void save(Role role) {
        roleMapper.insert(role);
    }


    @Override
    public List<Role> findAll() {
        List<Role> list = roleMapper.findAll();
        return list;
    }

    @Override
    public void update(Role role) {
        Assert.notNull(role);
        Role po = new Role();
        BeanUtils.copyProperties(role, po);
        roleMapper.update(po);
    }
}
