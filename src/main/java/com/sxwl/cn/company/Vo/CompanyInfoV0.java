package com.sxwl.cn.company.Vo;

import lombok.Data;

/**
 * Created by Dairy on 2018/9/5
 */

@Data
public class CompanyInfoV0 {


    private String phone;

    private String email;


    private String location;

    private String companyinfoDesc;
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCompanyinfoDesc() {
        return companyinfoDesc;
    }

    public void setCompanyinfoDesc(String companyinfoDesc) {
        this.companyinfoDesc = companyinfoDesc;
    }

}
