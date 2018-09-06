package com.sxwl.cn.company.service.impl;

import com.sxwl.cn.company.CompanyException.CompanyException;
import com.sxwl.cn.company.Enum.ResultEnums;
import com.sxwl.cn.company.Vo.CompanyInfoV0;
import com.sxwl.cn.company.dao.CompanyInfoMapper;
import com.sxwl.cn.company.daomain.CompanyInfo;
import com.sxwl.cn.company.service.CompanyInfoService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Dairy on 2018/9/5
 */

@Service
public class CompanyInfoImpl  implements CompanyInfoService {
    @Autowired
    private CompanyInfoMapper companyInfoMapper;
    @Override
    public void insert(CompanyInfoV0 companyInfoV0) {

        CompanyInfo companyInfo=new CompanyInfo();
      if(companyInfoMapper.selectAll().size()!=0){
          throw new CompanyException(ResultEnums.COMPANY_INFO_EXIST.getCode());
      }
        BeanUtils.copyProperties(companyInfoV0,companyInfo);
        int result =companyInfoMapper.insert(companyInfo);

    }

    @Override
    public Boolean delete(CompanyInfoV0 companyInfoV0) {

        CompanyInfo companyInfo=new CompanyInfo();
        companyInfo=companyInfoMapper.selectByPhone(companyInfoV0.getPhone());
        if(companyInfo==null){

            throw new CompanyException(ResultEnums.OMPANY_INFO_ERROR.getCode());

        }
        companyInfoMapper.deleteByPrimaryKey(companyInfo.getCompanyinfoId());



        return true;
    }

    @Override
    public CompanyInfo update(CompanyInfoV0 companyInfoV0) {
        CompanyInfo companyInfo=companyInfoMapper.selectByPhone(companyInfoV0.getPhone());
        if(companyInfo==null){

            throw new CompanyException(ResultEnums.OMPANY_INFO_ERROR.getCode());

        }
        BeanUtils.copyProperties(companyInfoV0,companyInfo);
           companyInfo.setCompanyinfoId(companyInfoMapper.selectByPhone(companyInfoV0.getPhone()).getCompanyinfoId());
        companyInfoMapper.updateByPrimaryKey(companyInfo);




        return companyInfo;
    }

    @Override
    public CompanyInfo select(CompanyInfoV0 companyInfoV0) {

        CompanyInfo companyInfo=companyInfoMapper.selectByPhone(companyInfoV0.getPhone());



        return companyInfo;
    }
}
