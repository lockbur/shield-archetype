package com.jinyinwu.lender.service;

import com.jinyinwu.lender.security.CasPrincipal;

/**
 * 登录员工信息
 * Created by wangkun23 on 2017/4/25.
 */
public interface EmpService {

    /**
     * 判断管理员是否登录
     *
     * @return 管理员是否登录
     */
    public boolean isAuthenticated();

    /**
     * 获取当前登录管理员
     *
     * @return 当前登录管理员, 若不存在则返回null
     */
    public CasPrincipal getCurrent();

    /**
     * 当前登录的管理员信息
     *
     * @return
     */
    public String getCurrentPrincipal();

}
