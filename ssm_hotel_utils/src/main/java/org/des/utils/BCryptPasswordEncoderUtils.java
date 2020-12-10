package org.des.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * @Author: Des
 * @Description: 加密
 * @Date: Created in 9:29 2020/10/22
 */
public class BCryptPasswordEncoderUtils {
    
    private static BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
    
    public static String encodePassword(String password) {
        return bCryptPasswordEncoder.encode(password);
    }
    
    public static void main(String[] args) {
        String password = "123";
        String pwd = encodePassword(password);
        // System.out.print(pwd.length());
        System.out.println(pwd);
        // $2a$10$ppOuBQy6syQyEnh//xcUne61HPUv73hQUesmzzyZRii4X0K/peh9O
    }
    
}
