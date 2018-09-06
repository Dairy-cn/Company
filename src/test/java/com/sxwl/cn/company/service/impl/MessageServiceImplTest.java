package com.sxwl.cn.company.service.impl;

import com.github.pagehelper.Page;
import com.sxwl.cn.company.Vo.MessageVo;
import com.sxwl.cn.company.daomain.Message;
import com.sxwl.cn.company.service.MessageService;
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
public class MessageServiceImplTest {
@Autowired
private MessageService messageService;
    @Test
    public void insert() {
        MessageVo messageVo=new MessageVo();

        messageVo.setName("dairy");
        messageVo.setEmail("2997266712@qq.com");
        messageVo.setPhone("18887043153");
        messageVo.setMessageContent("您们公司真好");


        messageService.insert(messageVo);



    }

    @Test
    public void selectAll() {

       Page<Message> messages= messageService.selectAll(1,10);

        System.out.println(messages.getPageNum());

    }
}