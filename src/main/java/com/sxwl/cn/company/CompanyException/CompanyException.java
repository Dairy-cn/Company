package com.sxwl.cn.company.CompanyException;

/**
 * Created by Dairy on 2018/9/4
 */


public class CompanyException extends RuntimeException{
 private Integer code;

    public CompanyException(int code,String message) {
        super(message);
        this.code = code;
    }

    public CompanyException(Integer code) {
        this.code = code;
    }
}
