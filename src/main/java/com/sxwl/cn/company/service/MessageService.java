package com.sxwl.cn.company.service;

import com.github.pagehelper.Page;
import com.sxwl.cn.company.Vo.MessageVo;
import com.sxwl.cn.company.daomain.Message;

/**
 * Created by Enzo Cotter on 2018/9/5.
 */
public interface MessageService {

    void insert(MessageVo messageVo);

    Page<Message> selectAll(Integer page, Integer size);


}
