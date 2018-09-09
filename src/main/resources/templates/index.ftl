<!DOCTYPE html>
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:400,600,300,200&subset=latin,latin-ext"
          rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="lib/fancybox/fancybox.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet">

    <link rel="prefetch" href="img/zoom.png">

    <!-- =======================================================
      Template Name: Munter
      Template URL: https://templatemag.com/munter-bootstrap-one-page-template/
      Author: TemplateMag.com
      License: https://templatemag.com/license/
    ======================================================= -->
</head>

<body data-spy="scroll" data-offset="58" data-target="#navigation" style="margin:0px;padding: 0px">

<!-- Fixed navbar -->
<div id="navigation" class="navbar navbar-fixed-top">
    <div class="container">
        <div class="navbar-header pull-right">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <i class="fa fa-bars"></i>
            </button>
        </div>
        <div><img src="img/logo.png"></div>
        <div class="navbar-collapse collapse pull-right">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.ytl" target="_self">首页</a></li>
                <li><a href="new.html" target="_self">公司新闻</a></li>
                <li><a href="brand_story.html" target="_self">品牌故事</a></li>
                <li><a href="engineerinfo.html" target="_self">工程概要</a></li>
                <li><a href="about.html" target="_self">关于我们</a></li>
                <li><a href="about.html#join" target="_self">加入我们</a></li>
                <!--<li><a href="#contact" class="smoothscroll">联系我们</a></li>-->

            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>

<!-- === MAIN Background === -->
<div class="slide story" id="intro" data-slide="1" style="height: 1000px">
    <div class="container">
        <div id="home-row-1" class="row clearfix">
            <div class="col-12">
                <h1 class="font-semibold">四川 <span class="font-thin">达利园</span>建筑有限公司</h1>
                <h4 class="font-thin">我们是位于<span class="font-semibold">XXX</span> 的XXXXX</h4>
                <br>
                <br>
            </div>
            <!-- /col-12 -->
        </div>
        <!-- /row -->
        <div id="home-row-2" class="row clearfix">

            <div class="col-12 col-sm-4">
                <a href="./brand_story.html" >
                    <div class="home-hover navigation-slide"><img src="img/s02.png"></div>
                    <!--<span>专业</span>-->
                </a>
            </div>

            <div class="col-12 col-sm-4">
                <a href="./about.html" >
                    <div class="home-hover navigation-slide"><img src="img/s01.png"></div>
                    <!--<span>友好</span>-->
                </a>
            </div>

            <div class="col-12 col-sm-4">
                <a href="./about.html#hezuo" target="_self">
                    <div class="home-hover navigation-slide"><img src="img/s03.png"></div>
                    <!--<span>适当</span>-->
                </a>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /slide1 -->

<div id="copyrights" style="padding-bottom: 0px">
    <div class="container">
        <div class="row">
            <div class="pull-left" style="margin-left: 150px">

                <h3 align="left"><a href="http://www.badiu.com"><span>客户联系：</span></a></h3>
                <h5 align="left">联系方式：<a><span>&nbsp; 188000000</span></a></h5>
                <h5 align="left">公司邮箱:<a><span>&nbsp;299@qq.com</span></a></h5>
                <h5 align="left">公司地址：<a><span>&nbsp;四川省成都市高新区XXX</span></a></h5>
                <h5 align="left"></h5>


            </div>
            <div class="pull-right" style="margin-right: 150px">
                <h3 align="left"><img src="img/logo.png"></h3>
                <h5 align="left"><a href="#"><span>关于我们</span></a></h5>
                <h5 align="left"><a href="#"><span>联系我们</span></a></h5>


            </div>
        </div>
        <p style="margin-top: 50px">
            &copy; Copyrights <strong>daliyuan</strong>. All Rights Reserved 2018
        </p>
        <a href="http://www.miitbeian.gov.cn/" style="color:#fff"><span>蜀ICP备XXXX</span></a>
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div style="width:300px;margin:0 auto; padding:0;margin-bottom: 1%;">
                    <a target="_blank"
                       href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=51019002001655"
                       style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                        <img src="img/909162807438009012.png" style="float:left;"/>
                        <p style="line-height:20px;margin: 0px 0px 0px 30px; color:white;">川公网安备 XXXXXXX</p>
                    </a>
                </div>
            </div>

        </div>


    </div>
</div>

<!-- JavaScript Libraries -->
<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/php-mail-form/validate.js"></script>
<script src="lib/fancybox/fancybox.js"></script>

<!-- Template Main Javascript File -->
<script src="js/main.js"></script>
</body>
</html>
