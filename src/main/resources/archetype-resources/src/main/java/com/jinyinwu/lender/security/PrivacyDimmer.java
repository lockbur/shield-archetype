package com.jinyinwu.lender.security;

import org.apache.commons.lang3.StringUtils;

/**
 * 数据隐私显示 手机号，身份证号和银行卡号等
 * @author wangkun23
 */
public class PrivacyDimmer {

    public static <T> T dim(T obj) {
//        if (obj instanceof User) {
//            return (T) user;
//        }
//        if (obj instanceof BankAccount) {
//            BankAccount account = (BankAccount) obj;
//            account.setAccount(mask(account.getAccount(), 4, 8));
//        }
        return obj;
    }

    /**
     * 139****0504
     *
     * @param content
     * @return
     */
    private static String mask(String content, int offset, int length) {
        if (StringUtils.isEmpty(content)) {
            return "";
        }
        assert content.length() >= offset + length;
        char[] chars = content.toCharArray();
        for (int i = offset; i < offset + length; i++) {
            chars[i] = '*';
        }
        return new String(chars);
    }

    private static String maskEmail(String email) {
        if (StringUtils.isEmpty(email)) {
            return "";
        }
        int offset = 0;
        int length = email.indexOf('@');
        if (length > 2) {
            offset = 2;
            length -= offset;
        }
        return mask(email, offset, length);
    }

    private static String maskName(String name) {
        if (StringUtils.isEmpty(name)) {
            return "";
        }
        return mask(name, name.length() - 1, 1);
    }

    public static String maskLoginName(String loginName) {
        if (loginName.length() < 2) {
            return "*";
        }
        return mask(loginName, 1, loginName.length() > 2 ? loginName.length() - 2 : 1);
    }
}
