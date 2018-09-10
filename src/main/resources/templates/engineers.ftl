<!DOCTYPE html>
<html lang="en">
<#include "common/header.ftl">
<body data-spy="scroll" data-offset="58" data-target="#navigation" style="background-image: url(/company/img/body-bg.png)">
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
                <li ><a href="index" target="_self">首页</a></li>
                <li ><a href="new" target="_self">公司新闻</a></li>
                <li><a href="brand_story" target="_self">品牌故事</a></li>
                <li class="active"><a href="engineerinfo" target="_self">工程概要</a></li>
                <li><a href="about" target="_self">关于我们</a></li>
                <li><a href="about#join" target="_self">加入我们</a></li>
                <!--<li><a href="#contact" class="smoothscroll">联系我们</a></li>-->

            </ul>
        </div>
    </div>
</div>


<!--/.nav-collapse -->
<!--新闻-->
<div class="container">
    <div class="row">
        <div class="col-md-12 column text-center">
            </br>   </br>

            <h3 class="pull-left">
                工程概要
            </h3>
        </br>
            </br>
            </br>
            </br>  </br>
            </br>


            <div class="thumbnail">
                <h3><a href="#article">${productInfo.getProductinfoName()}</a></h3>
                <img src="${productInfo.getImg()}" />
                <div class="caption">

                    </br>
                    </br>
                    <p class="article" style="text-indent: 2em" align="left">
                        ${productInfo.getProductinfoDesc()}

                    </p>
                    </br> <h4 class="pull-right">2018-9-9</h4>  </br>   </br>
                </div>
            </div>


            </br>
            </br>


        </div>
    </div>
</div>

<!--//底端导航-->
<#include "common/footer.ftl">
</body>
</html>
