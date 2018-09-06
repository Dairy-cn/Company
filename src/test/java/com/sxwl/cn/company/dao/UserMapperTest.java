package com.sxwl.cn.company.dao;

import com.sxwl.cn.company.daomain.User;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
public class UserMapperTest {
   @Autowired
   private UserMapper userMapper;
    @Test
    public void selectByPrimaryKey() {
       User user= userMapper.selectByPrimaryKey(1);
        System.out.println(user.getUserName());
        Assert.assertNotNull(user);
    }
}