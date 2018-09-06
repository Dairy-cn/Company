package com.sxwl.cn.company.service.impl;

import com.sxwl.cn.company.CompanyException.CompanyException;
import com.sxwl.cn.company.Enum.ResultEnums;
import com.sxwl.cn.company.Vo.ProductInfoVo;
import com.sxwl.cn.company.dao.ProductInfoMapper;
import com.sxwl.cn.company.daomain.ProductInfo;
import com.sxwl.cn.company.service.ProductInfoService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Dairy on 2018/9/5
 */

@Service
public class ProductInfoServiceImpl implements ProductInfoService {

    @Autowired
    private ProductInfoMapper productInfoMapper;

    @Override
    public ProductInfo add(ProductInfoVo productInfoVo) {

        ProductInfo productInfo = new ProductInfo();
        BeanUtils.copyProperties(productInfoVo, productInfo);
        ProductInfo productInfoResult=productInfoMapper.selectByName(productInfoVo.getProductinfoName());
        if (productInfoResult != null) {

            throw new CompanyException(ResultEnums.COMPANY_INFO_EXIST.getCode());


        }


        productInfoMapper.insert(productInfo);


        return productInfo;
    }

    @Override
    public void delete(ProductInfoVo productInfoVo) {

        ProductInfo productInfo = productInfoMapper.selectByName(productInfoVo.getProductinfoName());
      ;
        if (productInfo == null) {

            throw new CompanyException(ResultEnums.PRODUCT_NOT_EXIST.getCode());


        }


        productInfoMapper.deleteByPrimaryKey(productInfo.getProductinfoId());


    }

    @Override
    public ProductInfo update(ProductInfoVo productInfoVo) {

        ProductInfo productInfo = productInfoMapper.selectByPrimaryKey(productInfoVo.getProductinfoId());
        if (productInfo == null) {

            throw new CompanyException(ResultEnums.PRODUCT_NOT_EXIST.getCode());


        }
        BeanUtils.copyProperties(productInfoVo, productInfo);

        productInfoMapper.updateByPrimaryKey(productInfo);


        return productInfo;
    }

    @Override
    public ProductInfo find(String productName) {

        ProductInfo productInfo = productInfoMapper.selectByName(productName);
        if (productInfo == null) {

            throw new CompanyException(ResultEnums.PRODUCT_NOT_EXIST.getCode());


        }


        return productInfo;
    }
}
