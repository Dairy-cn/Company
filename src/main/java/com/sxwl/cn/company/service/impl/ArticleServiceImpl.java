package com.sxwl.cn.company.service.impl;

import com.sxwl.cn.company.CompanyException.CompanyException;
import com.sxwl.cn.company.Enum.ResultEnums;
import com.sxwl.cn.company.Vo.ArticleVO;
import com.sxwl.cn.company.dao.ArticleMapper;
import com.sxwl.cn.company.daomain.Article;
import com.sxwl.cn.company.service.ArticleService;


import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * Created by Dairy on 2018/9/5
 */

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    @Transactional
    public Article add(ArticleVO articleVO) {



        Article  article=new Article();


        BeanUtils.copyProperties(articleVO,article);
//        article.setArticleTitle(articleVO.getArticleTitle());
        if( articleMapper.selectByName(articleVO.getArticleTitle())!=null){

            throw new CompanyException(ResultEnums.ARTICLE_HAS_EXIST.getCode());

        }


        article.setCreateTime(new Date());

        articleMapper.insert(article);


        return  article;


    }

    @Override
    public void delete(ArticleVO articleVO) {

      Article article=  articleMapper.selectByPrimaryKey(articleVO.getArticleId());
   if(article==null){


       throw new CompanyException(ResultEnums.ARTICLE_NOT_EXIST.getCode());
   }

       articleMapper.deleteByPrimaryKey(article.getArticleId());


    }

    @Override
    public Article update(ArticleVO articleVO) {

        Article article=  articleMapper.selectByPrimaryKey(articleVO.getArticleId());
        if(article==null){


            throw new CompanyException(ResultEnums.ARTICLE_NOT_EXIST.getCode());
        }
     BeanUtils.copyProperties(articleVO,article);
        articleMapper.updateByPrimaryKey(article);






        return article;
    }

    @Override
    public Article findByName(String title) {

        Article article=  articleMapper.selectByName(title);

        if(article==null){

            throw new  CompanyException(ResultEnums.OMPANY_INFO_ERROR.getCode());

        }




        return article;
    }
}
