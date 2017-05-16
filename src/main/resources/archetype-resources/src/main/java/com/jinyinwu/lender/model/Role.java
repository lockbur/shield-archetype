package com.jinyinwu.lender.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by wangkun23 on 2016/12/2.
 */
@ToString
public class Role implements Serializable {

    @Getter
    @Setter
    private long id;

    @Getter
    @Setter
    private String name;//名称

    @Getter
    @Setter
    private String description;// 描述

    @Getter
    @Setter
    private String createdBy;//创建人

    @Getter
    @Setter
    private Date createdTime;

    @Getter
    @Setter
    private Date modifiedTime;

    /**
     * 权限
     */
    @Getter
    @Setter
    private List<String> authorities = new ArrayList<String>();
}
