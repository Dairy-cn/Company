package com.sxwl.cn.company.controller.publics;

import com.github.pagehelper.PageInfo;
import com.sxwl.cn.company.CompanyException.CompanyException;
import com.sxwl.cn.company.Enum.ResultEnums;
import com.sxwl.cn.company.daomain.ProductInfo;
import com.sxwl.cn.company.service.ProductInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/public")
public class publicController {

    @Autowired
    private ProductInfoService productInfoService;

    @GetMapping("/index")
    public ModelAndView index() {


        return new ModelAndView("/index");
    }

    @GetMapping("/new")
    public ModelAndView newIndex()

    {

        return new ModelAndView("/new");

    }
    @GetMapping("/brand_story")
    public ModelAndView brandStroy()

    {

        return new ModelAndView("/brand_story");

    }
    @GetMapping("/engineerinfo")
    public ModelAndView engineerInfo(Map<String,Object> map)

    {
      PageInfo<ProductInfo> pageInfo= productInfoService.findList(1,5);
       if(pageInfo==null){



           throw new CompanyException(ResultEnums.PRODUCT_NOT_EXIST.getCode());


       }
       map.put("pageInfo",pageInfo);


      return new ModelAndView("/engineerinfo",map);

    }
    @GetMapping("/about")
    public ModelAndView about()

    {

        return new ModelAndView("/about");

    }
    @GetMapping("/about#join")
    public ModelAndView aboutJoin()

    {

        return new ModelAndView("/new#join");

    }


}
