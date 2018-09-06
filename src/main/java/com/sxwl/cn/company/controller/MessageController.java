package com.sxwl.cn.company.controller;

import com.sxwl.cn.company.CompanyException.CompanyException;
import com.sxwl.cn.company.Enum.ResultEnums;
import com.sxwl.cn.company.Vo.MessageVo;
import com.sxwl.cn.company.form.MessageFrom;
import com.sxwl.cn.company.service.MessageService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by Dairy on 2018/9/5
 */

@Controller
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private MessageService messageService;

    @PostMapping("/create")
    public ModelAndView create(@Valid MessageFrom messageFrom, BindingResult bindingResult,Map<String,String> map) {
        if (bindingResult.hasErrors()) {

             map.put("msg","参数绑定错误");
             map.put("url","/company/index");
            return new ModelAndView("/common/error",map);


        }
        MessageVo messageVo = new MessageVo();

        BeanUtils.copyProperties(messageFrom, messageVo);

        messageService.insert(messageVo);
        map.put("url","/company/user/create");

        return new ModelAndView("/common/success",map);


    }
}
