package com.jinyinwu.lender.security;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * 身份信息
 * <p>
 * Created by wangkun on 2017/04/14.
 */
@ToString
public class CasPrincipal implements Serializable {

    @Getter
    @Setter
    private String username;

    @Getter
    @Setter
    private String name;//姓名

    @Getter
    @Setter
    private String mobile;

    @Getter
    @Setter
    private String userid;//uid

    @Getter
    @Setter
    private String email;//邮箱


    public CasPrincipal(String username, String userid, String mobile, String name, String email) {
        this.username = username;
        this.userid = userid;
        this.mobile = mobile;
        this.name = name;
        this.email = email;
    }

}
