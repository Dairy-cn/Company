package com.sxwl.cn.company.daomain;

public class CompanyInfo {
    private Integer companyinfoId;

    private String phone;

    private String email;

    private String location;

    private String companyinfoDesc;

    public Integer getCompanyinfoId() {
        return companyinfoId;
    }

    public void setCompanyinfoId(Integer companyinfoId) {
        this.companyinfoId = companyinfoId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getCompanyinfoDesc() {
        return companyinfoDesc;
    }

    public void setCompanyinfoDesc(String companyinfoDesc) {
        this.companyinfoDesc = companyinfoDesc == null ? null : companyinfoDesc.trim();
    }
}