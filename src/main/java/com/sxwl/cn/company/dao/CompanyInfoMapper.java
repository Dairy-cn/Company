package com.sxwl.cn.company.dao;

import com.github.pagehelper.Page;
import com.sxwl.cn.company.daomain.CompanyInfo;

import java.util.List;

public interface CompanyInfoMapper {
    int deleteByPrimaryKey(Integer companyinfoId);

    int insert(CompanyInfo record);

    int insertSelective(CompanyInfo record);

    CompanyInfo selectByPrimaryKey(Integer companyinfoId);

    int updateByPrimaryKeySelective(CompanyInfo record);

    int updateByPrimaryKey(CompanyInfo record);
    List<CompanyInfo> selectAll();

    CompanyInfo selectByPhone(String phone);

}