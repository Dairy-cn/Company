package com.sxwl.cn.company.controller.publics;

import com.sxwl.cn.company.daomain.ProductInfo;
import com.sxwl.cn.company.service.ProductInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.websocket.server.PathParam;
import java.util.Map;

@Controller
@RequestMapping("/public")
public class DetailController {

    @Autowired
    private ProductInfoService productInfoService;

    @GetMapping("/DetailInfo")
    public ModelAndView find(@RequestParam("productinfoId") Integer id, Map<String,Object> map){

   ProductInfo productInfo= productInfoService.findByid(id);

       map.put("productInfo",productInfo);
return new ModelAndView("/engineers",map);
    }

}
