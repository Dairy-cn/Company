package com.sxwl.cn.company.controller;

import com.sxwl.cn.company.CompanyException.CompanyException;
import com.sxwl.cn.company.Enum.ResultEnums;
import com.sxwl.cn.company.Vo.UserVo;
import com.sxwl.cn.company.daomain.User;
import com.sxwl.cn.company.form.UserForm;
import com.sxwl.cn.company.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

/**
 * Created by Dairy on 2018/9/4
 */

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/create")
    public UserVo create(@Valid UserForm userForm, BindingResult bindingResult){

       if(bindingResult.hasErrors()){

           throw new CompanyException(ResultEnums.USERFORM_HAS_ERROR.getCode());
       }
         UserVo userVo=new UserVo();
        BeanUtils.copyProperties(userForm,userVo);

        userService.create(userVo);

        return  userVo;

    }

    @GetMapping("/find")
    public UserVo findUser(@RequestParam("userName") String username){



         UserVo userVo=new UserVo();
         userVo.setUserName(username);

        User result= userService.select(userVo);

        BeanUtils.copyProperties(result,userVo);

        return userVo;

    }
    @GetMapping("/index")
    public ModelAndView index(){

        return new ModelAndView("/User/index");
    }




}
