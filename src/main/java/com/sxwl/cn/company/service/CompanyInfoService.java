package com.sxwl.cn.company.service;

import com.sxwl.cn.company.Vo.CompanyInfoV0;
import com.sxwl.cn.company.daomain.CompanyInfo;

/**
 * Created by Enzo Cotter on 2018/9/5.
 */
public interface CompanyInfoService {

    void insert(CompanyInfoV0 companyInfoV0);

    Boolean delete(CompanyInfoV0 companyInfoV0);

    CompanyInfo update(CompanyInfoV0 companyInfoV0);
    CompanyInfo select(CompanyInfoV0 companyInfoV0);


}
