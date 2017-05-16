package com.jinyinwu.lender.service;

import com.jinyinwu.lender.model.Role;

import java.util.List;
import java.util.Set;

/**
 * 角色管理
 * Created by wangkun23 on 2016/12/2.
 */
public interface RoleService {


    /**
     * 新增角色信息
     *
     * @param role
     */
    public void save(Role role);

    /**
     * 查询所有角色
     *
     * @return
     */
    public List<Role> findAll();


    /**
     * 根据主键查询
     *
     * @return
     */
    public Role findById(Long id);


    /**
     * 修改角色权限
     *
     * @param role
     */
    public void update(Role role);

}
