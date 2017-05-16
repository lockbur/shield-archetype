package com.jinyinwu.lender.dao;

import com.jinyinwu.lender.model.Role;

import java.util.List;

public interface RoleMapper {

    /**
     * 保存
     *
     * @param entity
     */
    public void insert(Role entity);

    /**
     * 查询用户角色
     *
     * @param empId
     * @return
     */
    public List<Role> findRolesByEmpId(long empId);

    /**
     * 查询所有
     *
     * @return
     */
    public List<Role> findAll();


    /**
     * 主键查询
     *
     * @param id
     * @return
     */
    public Role findById(Long id);


    /**
     * 修改
     *
     * @param entity
     */
    public void update(Role entity);


}
