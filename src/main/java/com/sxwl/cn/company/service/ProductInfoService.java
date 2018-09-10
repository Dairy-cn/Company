package com.sxwl.cn.company.service;

import com.github.pagehelper.PageInfo;
import com.sxwl.cn.company.Vo.ProductInfoVo;
import com.sxwl.cn.company.daomain.ProductInfo;

import java.util.List;

/**
 * Created by Enzo Cotter on 2018/9/5.
 */
public interface ProductInfoService {

    //增删改查

    ProductInfo add(ProductInfoVo productInfoVo);

    void delete(ProductInfoVo productInfoVo);

    ProductInfo update(ProductInfoVo productInfoVo);

    ProductInfo find(String  productName);
    ProductInfo findByid(Integer  id);

    PageInfo<ProductInfo> findList(Integer page, Integer size);
    List<ProductInfo> findAll();


}
