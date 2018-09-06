package com.sxwl.cn.company.service;

import com.github.pagehelper.Page;
import com.sxwl.cn.company.Vo.UserVo;
import com.sxwl.cn.company.daomain.User;

/**
 * Created by Dairy on 2018/9/4
 */


public interface UserService {

    User update(UserVo userVo);

    User create(UserVo userVo);
    User delete(UserVo userVo);

    User select(UserVo userVo);
    Page findAll(Integer page, Integer size);

}
