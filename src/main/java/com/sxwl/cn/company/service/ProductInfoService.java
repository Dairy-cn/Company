package com.sxwl.cn.company.service;

import com.sxwl.cn.company.Vo.ProductInfoVo;
import com.sxwl.cn.company.daomain.ProductInfo;

/**
 * Created by Enzo Cotter on 2018/9/5.
 */
public interface ProductInfoService {

    //增删改查

    ProductInfo add(ProductInfoVo productInfoVo);

    void delete(ProductInfoVo productInfoVo);

    ProductInfo update(ProductInfoVo productInfoVo);

    ProductInfo find(String  productName);

}
