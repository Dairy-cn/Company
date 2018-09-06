package com.sxwl.cn.company.Vo;

import lombok.Data;

/**
 * Created by Dairy on 2018/9/4
 */

@Data
public class UserVo {

    private Integer userId;

    private String userName;

    private String password;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
