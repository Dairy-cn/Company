<!DOCTYPE html>
<html lang="en">
<
<body data-spy="scroll" data-offset="58" data-target="#navigation" style="background-image: url(./img/body-bg.png)">
<!-- Fixed navbar -->
<div id="navigation" class="navbar" style="background: #0E2547;height: 130px">
    <div class="container">
        <div class="navbar-header pull-right">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <i class="fa fa-bars"></i>
            </button>
        </div>
        <div><img src="img/logo.png"></div>
        <div class="navbar-collapse collapse pull-right">
            <ul class="nav navbar-nav">
                <li ><a href="index.ftl" target="_self">首页</a></li>
                <li class="active"><a href="new.ftl" target="_self">公司新闻</a></li>
                <li><a href="brand_story.ftl" target="_self">品牌故事</a></li>
                <li><a href="engineerinfo.ftl" target="_self">工程概要</a></li>
                <li><a href="about.html" target="_self">关于我们</a></li>
                <li><a href="about.html#join" target="_self">加入我们</a></li>
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
                <img src="${productInfo.getImg}" />
                <div class="caption">

                    </br>
                    </br>
                    <p class="article" style="text-indent: 2em" align="left">
                        ${productInfo.getProductinfoDesc()}

                    </p>
                    </br> <h4 class="pull-right">2018-9-8</h4>  </br>   </br>
                </div>
            </div>


            </br>
            </br>


        </div>
    </div>
</div>

<!--//底端导航-->
<div id="copyrights" style="margin-bottom: 0px">
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


<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/php-mail-form/validate.js"></script>
<script src="lib/fancybox/fancybox.js"></script>

<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>
</html>
