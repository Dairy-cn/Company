<!DOCTYPE html>
<html lang="en">
<#include "common/header.ftl">

<body data-spy="scroll" data-offset="58" data-target="#navigation"
      style="background-image: url(/company//img/body-bg.png)">

<!-- Fixed navbar -->
<div id="navigation" class="navbar" style="background: #0E2547;height: 130px">
    <div class="container">
        <div class="navbar-header pull-right">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <i class="fa fa-bars"></i>
            </button>
        </div>
        <div><img src="/company/img/logo.png"></div>
        <div class="navbar-collapse collapse pull-right">
            <ul class="nav navbar-nav">
                <li><a href="index" target="_self">首页</a></li>
                <li><a href="new" target="_self">公司新闻</a></li>
                <li><a href="brand_story" target="_self">品牌故事</a></li>
                <li class="active"><a href="engineerinfo" target="_self">工程概要</a></li>
                <li><a href="about" target="_self">关于我们</a></li>
                <li><a href="about#join" target="_self">加入我们</a></li>
                <!--<li><a href="#contact" class="smoothscroll">联系我们</a></li>-->

            </ul>
        </div>
    </div>
    <!--/.nav-collapse -->


</div>


<!-- /slide4 -->

<div class="container" style="padding: 20px">
    <div class="thumbnail text-center">
        <h3><a href="/engineers"></a></h3>

        <div class="row clearfix">

            <div class="col-md-12 column">
                <div class="carousel slide" id="carousel-321280"
                     style="background-image: url(/company/img/body-bg.png);padding: 0px ;">
                    <ol class="carousel-indicators">
                        <li class="active" data-slide-to="0" data-target="#carousel-321280">
                        </li>
                        <li data-slide-to="1" data-target="#carousel-321280">
                        </li>
                        <li data-slide-to="2" data-target="#carousel-321280">
                        <li data-slide-to="3" data-target="#carousel-321280">
                        </li>
                        <li data-slide-to="4" data-target="#carousel-321280">
                        </li>
                        </li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <a href="/company/public/DetailInfo?productinfoId=${prod1.getProductinfoId()}"> <img alt="" src="${prod1.getImg()}"/></a>
                            <div class="carousel-caption">

                                <!--</a>-->
                                <p>
                                ${prod1.getProductinfoDesc()}

                                </p>
                            </div>

                        </div>
                        <div class="item">
                            <a href="/company/public/DetailInfo?productinfoId=${prod2.getProductinfoId()}"> <img alt="" src="${prod2.getImg()}"/></a>
                            <div class="carousel-caption">
                                <h4>

                                </h4>
                                <p>
                                ${prod2.getProductinfoDesc()}
                                </p>
                            </div>
                        </div>
                        <div class="item">
                            <a href="/company/public/DetailInfo?productinfoId=${prod3.getProductinfoId()}"> <img alt="" src="${prod3.getImg()}"/></a>
                            <div class="carousel-caption">
                                <h4>

                                </h4>
                                <p>
                                ${prod3.getProductinfoDesc()}
                                </p>
                            </div>
                        </div>

                        <div class="item">
                            <a href="/company/public/DetailInfo?productinfoId=${prod4.getProductinfoId()}"> <img alt="" src="${prod4.getImg()}"/></a>
                            <div class="carousel-caption">
                                <h4>

                                </h4>
                                <p>
                                ${prod4.getProductinfoDesc()}

                                </p>
                            </div>
                        </div>

                        <div class="item">
                            <a href="/company/public/DetailInfo?productinfoId=${prod5.getProductinfoId()}"> <img alt="" src="${prod5.getImg()}"/></a>
                            <div class="carousel-caption">
                                <h4>

                                </h4>
                                <p>
                                ${prod5.getProductinfoDesc()}
                                </p>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-321280" data-slide="prev"><span
                            class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control"
                                                                                    href="#carousel-321280"
                                                                                    data-slide="next"><span
                        class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
        </div>
    </div>
</div>



<#include "common/footer.ftl">
</body>
</html>
