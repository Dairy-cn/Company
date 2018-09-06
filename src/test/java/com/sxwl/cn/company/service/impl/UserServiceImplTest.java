package com.sxwl.cn.company.service.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.github.pagehelper.Page;
import com.sxwl.cn.company.Vo.UserVo;
import com.sxwl.cn.company.daomain.User;
import com.sxwl.cn.company.service.UserService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * Created by Enzo Cotter on 2018/9/4.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceImplTest {

    @Autowired
    private UserService userService;

    @Test
    public void update() {
        UserVo userVo = new UserVo();
        userVo.setUserName("dairy");
        userVo.setPassword("123");

        User user = userService.update(userVo);
        Assert.assertNotNull(user);

    }

    @Test
    public void create() {

        UserVo userVo = new UserVo();
        userVo.setUserName("dairui");
        userVo.setPassword("dairui123");

        User user = userService.create(userVo);
        Assert.assertNotNull(user);
    }

    @Test
    public void delete() {

        UserVo userVo = new UserVo();
        userVo.setUserName("dairui");
        userVo.setPassword("dairui123");
        userService.delete(userVo);


    }
    @Test
    public void findAll(){
     Page page= userService.findAll(1,10);
        System.out.println(page.getPageNum());



    }
}