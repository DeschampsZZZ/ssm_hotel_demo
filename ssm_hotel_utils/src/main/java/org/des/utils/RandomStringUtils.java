package org.des.utils;

import java.util.Random;

/**
 * @Author: Des
 * @Description: 随机数
 * @Date: Created in 21:22 2020/10/21
 */
public class RandomStringUtils {
    
    /**
     * 根据需要生成指定长度的纯数字随机数,这个随机数的每一位都是从(0-9)这个产生的一位
     */
    public static String getNewRandomCode(int codeLen) {
        Random randomCode = new Random();
        String strCode = "";
        while (codeLen > 0) {
            int charCode = randomCode.nextInt(9);
           // System.out.println(charCode);
            strCode += charCode;
            codeLen--;
        }
        return strCode;
    }
    
}
