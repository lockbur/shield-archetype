package com.jinyinwu.lender.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.File;
import java.util.Scanner;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import org.apache.commons.codec.binary.Base64;
import java.security.GeneralSecurityException;

/**
 * 1 对称加密工具，两次加密，首先是用DES加密，然后在用base64加密
 * 2 逆向反之
 * Created by wangkun23 on 2017/4/18.
 */
public class DESTextCipher {
    static final Logger logger = LoggerFactory.getLogger(DESTextCipher.class);

    /**
     * wangkun23
     * Exception  I don't think this will happen...
     *
     * @param value
     * @return
     * @throws Exception
     */
    public static String encrypt(String value) throws GeneralSecurityException {
        String salt = readSaltFile();

        Cipher encryptCipher = Cipher.getInstance("DES");
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
        SecretKey sk = keyFactory.generateSecret(new DESKeySpec(salt.getBytes()));
        encryptCipher.init(Cipher.ENCRYPT_MODE, sk);
        String result = new String(Base64.encodeBase64(encryptCipher.doFinal(value.getBytes())));
        return result;
    }

    /**
     * 解密规则：
     *
     * @param value
     * @return
     * @throws Exception
     */
    public static String decrypt(String value) throws GeneralSecurityException {
        String salt = readSaltFile();

        Cipher decryptCipher = Cipher.getInstance("DES");
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
        SecretKey sk = keyFactory.generateSecret(new DESKeySpec(salt.getBytes()));
        decryptCipher.init(Cipher.DECRYPT_MODE, sk);
        String result = new String(decryptCipher.doFinal(Base64.decodeBase64(value.getBytes())));
        return result;
    }

    /**
     * 如果windows 请放到跟idea安装和tomcat的安装所在同一个盘的目录下
     * 从/var/config/读取salt文件内容，没有则返回默认值.
     *
     * @return
     */
    private static String readSaltFile() {
        String salt = "SimpleRocks";
        File file = new File("/var/config/salt.donotchange");
        if (file.exists() && file.canRead()) {
            try (Scanner scanner = new Scanner(file)) {
                if (scanner.hasNext()) {
                    String content = scanner.nextLine().trim();
                    salt = new String(content.getBytes());
                }
            } catch (Exception ex) {
                logger.error("Error reading salt file !", ex);
            }
        }
        return salt;
    }
}
