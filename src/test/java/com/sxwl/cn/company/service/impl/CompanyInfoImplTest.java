package com.sxwl.cn.company.service.impl;

import com.sxwl.cn.company.Vo.CompanyInfoV0;
import com.sxwl.cn.company.daomain.CompanyInfo;
import com.sxwl.cn.company.service.CompanyInfoService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * Created by Enzo Cotter on 2018/9/5.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CompanyInfoImplTest {
@Autowired
private CompanyInfoService companyInfoService;
    @Test
    public void insert() {
        CompanyInfoV0 companyInfoV0=new CompanyInfoV0();
companyInfoV0.setPhone("400+180844654654");
companyInfoV0.setEmail("2997266712@qq.com");
companyInfoV0.setLocation("四川省");
companyInfoV0.setCompanyinfoDesc("科技公司");
         companyInfoService.insert(companyInfoV0);
    }

    @Test
    public void delete() {

        CompanyInfoV0 companyInfoV0=new CompanyInfoV0();
        companyInfoV0.setPhone("400+180844654654");
        companyInfoService.delete(companyInfoV0);

    }

    @Test
    public void update() {
        CompanyInfoV0 companyInfoV0=new CompanyInfoV0();
        companyInfoV0.setPhone("400+180844654654");

        companyInfoV0.setEmail("dairy@gmail.com");
        companyInfoV0.setLocation("云南");
        companyInfoV0.setCompanyinfoDesc("科技公司");
        companyInfoService.update(companyInfoV0);



    }

    @Test
    public void select() {
        CompanyInfoV0 companyInfoV0=new CompanyInfoV0();
        companyInfoV0.setPhone("400+180844654654");
       CompanyInfo companyInfo= companyInfoService.select(companyInfoV0);

        System.out.println(companyInfo.getCompanyinfoDesc());
    }
}