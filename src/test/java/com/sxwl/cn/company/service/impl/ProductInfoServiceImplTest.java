package com.sxwl.cn.company.service.impl;

import com.github.pagehelper.PageInfo;
import com.sxwl.cn.company.Vo.ProductInfoVo;
import com.sxwl.cn.company.daomain.ProductInfo;
import com.sxwl.cn.company.service.ProductInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Arrays;

import static org.junit.Assert.*;

/**
 * Created by Enzo Cotter on 2018/9/5.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ProductInfoServiceImplTest {
    @Autowired
    private ProductInfoService productInfoService;

    @Test
    public void add() {
        ProductInfoVo productInfoVo=new ProductInfoVo();
        productInfoVo.setProductinfoName("台式电脑");
        productInfoVo.setProductinfoDesc("很好的台式电脑");
        productInfoVo.setImg("http://img3.imgtn.bdimg.com/it/u=867954300,18161415&fm=26&gp=0.jpg");

        productInfoService.add(productInfoVo);


    }

    @Test
    public void delete() {
        ProductInfoVo productInfoVo=new ProductInfoVo();
        productInfoVo.setProductinfoName("台式电脑");


        productInfoService.delete(productInfoVo);


    }

    @Test
    public void update() {

        ProductInfoVo productInfoVo=new ProductInfoVo();
        productInfoVo.setProductinfoId(1);
        productInfoVo.setProductinfoName("笔记本");
        productInfoVo.setProductinfoDesc("台式电脑！");

        productInfoService.update(productInfoVo);

    }

    @Test
    public void find() {

        String name="笔记本";
        ProductInfo productInfo=productInfoService.find(name);

        System.out.println(productInfo.getProductinfoDesc());



    }

    @Test
    public void findList(){

        PageInfo<ProductInfo> productInfoPageInfo=productInfoService.findList(1,2);
        System.out.println(productInfoPageInfo.getNextPage());


    }
}