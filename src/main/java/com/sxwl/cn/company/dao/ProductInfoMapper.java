package com.sxwl.cn.company.dao;

import com.sxwl.cn.company.daomain.ProductInfo;

public interface ProductInfoMapper {
    int deleteByPrimaryKey(Integer productinfoId);

    int insert(ProductInfo record);

    int insertSelective(ProductInfo record);

    ProductInfo selectByPrimaryKey(Integer productinfoId);

    int updateByPrimaryKeySelective(ProductInfo record);

    int updateByPrimaryKeyWithBLOBs(ProductInfo record);

    int updateByPrimaryKey(ProductInfo record);
    ProductInfo selectByName(String productName);
}