package com.Login.utils;

import org.springframework.security.core.token.Sha512DigestUtils;

import java.nio.charset.StandardCharsets;

/**
 * Utill for CryptPassword(SHA512)
 */
public class CryptUtil {

    public static String md5(String password)
    {
        if (password != null && !password.isEmpty())
        {
            return Sha512DigestUtils.shaHex(password.getBytes());
        }
        else
        {
            return new String("");
        }
    }
}
