package com.sxwl.cn.company.service.impl;

import com.sxwl.cn.company.Vo.ArticleVO;
import com.sxwl.cn.company.dao.ArticleMapper;
import com.sxwl.cn.company.daomain.Article;
import com.sxwl.cn.company.service.ArticleService;
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
public class ArticleServiceImplTest {
@Autowired
private ArticleService articleService;
    @Test
    public void add() {
        ArticleVO articleVO=new ArticleVO();
        articleVO.setArticleTitle("好一朵美丽的茉莉花");
        articleVO.setArticleContent("这是一篇好文章");


        Article article=articleService.add(articleVO);

        Assert.assertNotNull(article);

    }

    @Test
    public void delete() {

        ArticleVO articleVO=new ArticleVO();

        articleVO.setArticleId(8);

        articleService.delete(articleVO);






    }

    @Test
    public void update() {

        ArticleVO articleVO=new ArticleVO();
        articleVO.setArticleId(8);
        articleVO.setArticleContent("这是一朵花");

        articleVO.setArticleTitle("花");

         articleService.update(articleVO);

    }

    @Test
    public void findByName() {

        ArticleVO articleVO=new ArticleVO();
        articleVO.setArticleTitle("好一朵美丽的茉莉花");


     Article article=   articleService.findByName(articleVO.getArticleTitle());
    Assert.assertNotNull(article);



    }



}