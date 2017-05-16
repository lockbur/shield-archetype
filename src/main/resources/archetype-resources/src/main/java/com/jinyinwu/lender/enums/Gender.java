package com.jinyinwu.lender.enums;

/**
 * 性别
 * Created by wangkun23 on 2017/3/17.
 */
public enum Gender {

    MALE("男"), FEMALE("女");

    private final String key;

    private Gender(String key) {
        this.key = key;
    }

    public String getKey() {
        return key;
    }
}
