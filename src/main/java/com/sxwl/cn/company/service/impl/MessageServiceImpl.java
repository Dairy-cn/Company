package com.sxwl.cn.company.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sxwl.cn.company.Vo.MessageVo;
import com.sxwl.cn.company.dao.MessageMapper;
import com.sxwl.cn.company.daomain.Message;
import com.sxwl.cn.company.service.MessageService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Dairy on 2018/9/5
 */

@Service
public class MessageServiceImpl implements MessageService {
    @Autowired
    private MessageMapper messageMapper;

    @Override
    public void insert(MessageVo messageVo) {
        Message  message=new Message();

        BeanUtils.copyProperties(messageVo,message);
        message.setCreateTime(new Date());
        messageMapper.insert(message);

    }

    @Override
    public Page<Message> selectAll(Integer page, Integer size) {

        Page<Message> pageinfo= PageHelper.startPage(page,size);
        List<Message>  messages=messageMapper.selectAll();
        return pageinfo;
    }
}
