package com.sxwl.cn.company.Enum;

import lombok.Data;

/**
 * Created by Dairy on 2018/9/4
 */

public enum  ResultEnums {
    USER_NOT_EXIST(1,"用户不存在"),
    USER_HAS_EXIST(3,"用户已经存在"),
    COMPANY_INFO_EXIST(4,"公司信息已经存在"),
    OMPANY_INFO_ERROR(5,"公司信息没有存在"),
    ARTICLE_HAS_EXIST(6,"文章信息已经存在"),
    ARTICLE_NOT_EXIST(7,"文章信息没有存在"),
    PRODUCT_HAS_EXIST(8,"产品信息已经存在"),
    PRODUCT_NOT_EXIST(9,"产品信息没有存在"),
    USERFORM_HAS_ERROR(10,"用户表单信息有错误"),
    MESSAGE_HAS_ERROR(11,"信息有错误"),
    ARTICLE_ERROR_LENGTH(12,"文章长度小于20"),
    USER_ERROR(2,"用户信息错误");


    private Integer code;
    private String msg;

    ResultEnums(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setCode(Integer code) {
        this.code = code;
    }
}
