<!DOCTYPE html>
<!--<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">-->
<#include "common/header.ftl">
<body data-spy="scroll" data-offset="58" data-target="#navigation"
      style="background-image: url(/company/img/body-bg.png)">

<!-- Fixed navbar -->
<div id="navigation" class="navbar" style="background: #0E2547;height: 130px">
    <div class="container">
        <div class="navbar-header pull-right" style="position: relative;z-index: 3">
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
                <li><a href="engineerinfo" target="_self">工程概要</a></li>
                <li class="active"><a href="about" target="_self">关于我们</a></li>
                <li><a href="#join" target="_self" onclick="">加入我们</a></li>
                <!--<li><a href="#contact" class="smoothscroll">联系我们</a></li>-->

            </ul>
        </div>
    </div>
</div>

<!--/.nav-collapse -->


<!-- === SLide 3 - 关于我们 -->

<div class="slide story" id="clients" data-slide="5" style="position: relative;z-index: -1">
    <div class="container">

        <div class="row ">
            <div class="col-md-12 column">
                <#--<img alt="140x140" src="img/logo.png" class="img-rounded" />-->
                <div class="jumbotron" style="background-image: url(/company/img/logo.png)">
                    <h1 style="color:rosybrown">
                        达利园建筑有限公司
                    </h1>
                    <p>
                        简介
                    </p>
                    <!--<p>-->
                    <!--<a class="btn btn-primary btn-large" href="#">Learn more</a>-->
                    <!--</p>-->
                </div>
            </div>
        </div>

    </div>


</div>
<div class="thumbnail" style="margin: 50px">
    <div style="background-image: url(/company/img/body-bg.png)">
        <div class="container " style="color:black">

            <div class="row">
                <div class="col-md-4 column">
                    <h3 class="text">
                        公司简介
                    </h3>
                    <ul class="list-unstyled">
                        <li>
                            公司简介
                        </li>
                        <li>
                            公司简介
                        </li>
                        <li>
                            公司简介
                        </li>
                        <li>
                            公司简介
                        </li>
                        <li>
                            公司简介
                        </li>
                        <li>
                            公司简介
                        </li>
                        <li>
                            公司简介
                        </li>
                        <li>
                            公司简介
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="thumbnail" style="margin: 50px">
    <div id="shehui" style="background-image: url(/company/img/body-bg.png)">
        <div class="container" style="color: black">
            <div class="row">
                <div class="col-md-4 column  pull-left">
                    <h3 class="text left">
                        社会责任
                    </h3>
                    <ul class="list-unstyled">
                        <li>
                            社会责任1
                        </li>
                        <li>
                            社会责任1
                        </li>
                        <li>
                            社会责任1
                        </li>
                        <li>
                            社会责任1
                        </li>
                        <li>
                            社会责任1
                        </li>
                        <li>
                            社会责任1
                        </li>
                        <li>
                            社会责任1
                        </li>
                        <li>
                            社会责任1
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                </div>
            </div>
        </div>
    </div>
</div>

<!--合作伙伴-->
<div class="thumbnail" style="margin: 50px">
    <div id="hezuo" style="background-image: url(/company/img/body-bg.png)">

        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column text-center">
                    <h3 class="text-left">
                        合作伙伴
                    </h3><img alt="140x140"
                              src="/company/img/s03.png"
                              class="img-circle"/><img alt="140x140"
                                                       src="/company/img/s01.png"
                                                       class="img-circle"/><img alt="140x140"
                                                                                src="/company/img/s02.png"
                                                                                class="img-circle"/><img alt="140x140"
                                                                                                         src="/company/img/s03.png"
                                                                                                         class="img-circle"/>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<!--加入我们-->
<div class="thumbnail" style="margin: 50px">
    <div id="about-us" style="background-image: url(/company/img/body-bg.png)">
        <div class="container" id="join" style="color: black ">
            <div class="row ">
                <div class="col-md-12 column ">
                    <h3 class="text left">
                        加入我们
                    </h3>
                    <ul class="list-unstyled">
                        <li style="text-indent: 2em">
                            dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
                        </li>
                        <li>
                            <div class="row clearfix">
                                <div class="col-md-12 column pull-right">
                        <li class=""><a id="modal-169753" href="#modal-container-169753" role="button" class="btn pull-right"
                                        data-toggle="modal">加入我们项目部</a>

                            <div class="modal fade" id="modal-container-169753" role="dialog"
                                 aria-labelledby="myModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                ×
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel" style="color:black">
                                                项目部
                                            </h4>
                                        </div>
                                        <div class="modal-body" style="color:black">
                                            请发送您的信息到XXXX
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">好的
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>



                    </ul>
                </div>
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                </div>
            </div>
        </div>
    </div>
</div>

<!--//底端导航-->
<#include "common/footer.ftl">

</body>
</html>
