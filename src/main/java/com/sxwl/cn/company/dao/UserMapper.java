package com.sxwl.cn.company.dao;

import com.sxwl.cn.company.daomain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    User selectByUsernameAndPassword(@Param("userName") String userName,@Param("password") String password);
    User selectByUsername(String userName);
    List<User> findAll();
}