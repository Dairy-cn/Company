package com.sxwl.cn.company.service;

import com.sxwl.cn.company.Vo.ArticleVO;
import com.sxwl.cn.company.daomain.Article;

/**
 * Created by Dairy on 2018/9/5
 */


public interface ArticleService {

    //增删改查
    Article add(ArticleVO articleVO);

    void delete(ArticleVO articleVO);

    Article update(ArticleVO articleVO);

    Article findByName(String title);



}
