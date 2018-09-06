package com.sxwl.cn.company.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sxwl.cn.company.CompanyException.CompanyException;
import com.sxwl.cn.company.Enum.ResultEnums;
import com.sxwl.cn.company.Vo.UserVo;
import com.sxwl.cn.company.dao.UserMapper;
import com.sxwl.cn.company.daomain.User;
import com.sxwl.cn.company.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Dairy on 2018/9/4
 */

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;


    @Override
    public User update(UserVo userVo) {
        User userResult=userMapper.selectByUsername(userVo.getUserName());
        if(userResult==null){

            throw new CompanyException(ResultEnums.USER_NOT_EXIST.getCode());

        }else {
            userVo.setUserId(userResult.getUserId());

            BeanUtils.copyProperties(userVo,userResult);
            int result=userMapper.updateByPrimaryKey(userResult);

        }


        return userResult;
    }

    @Override
    public User create(UserVo userVo) {
        User user=new User();
        BeanUtils.copyProperties(userVo,user);
       User  userResult=userMapper.selectByUsernameAndPassword(user.getUserName(),user.getPassword());
        if(userResult==null){


            user.setCreateTime(new Date());
            user.setState(1);

            userMapper.insert(user);

        }else {

            throw new CompanyException(ResultEnums.USER_HAS_EXIST.getCode(),ResultEnums.USER_HAS_EXIST.getMsg());

        }

      return user;
    }

    @Override
    public User delete(UserVo userVo) {
      User userResult=  userMapper.selectByUsernameAndPassword(userVo.getUserName(),userVo.getPassword());
      if(userResult==null){

          throw new  CompanyException(ResultEnums.USER_NOT_EXIST.getCode());


      }
      userMapper.deleteByPrimaryKey(userResult.getUserId());




      return userResult;



    }

    @Override
    public User select(UserVo userVo) {

       User userResult= userMapper.selectByUsername(userVo.getUserName());
if(userResult==null){

    throw new CompanyException(ResultEnums.USER_NOT_EXIST.getCode());

}



        return userResult;
    }

    @Override
    public Page findAll(Integer page, Integer size) {
       Page<User> pageinfo= PageHelper.startPage(page,size);
          List<User> users=userMapper.findAll();

        return pageinfo;
    }

}
