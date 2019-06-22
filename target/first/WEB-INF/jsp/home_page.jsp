<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/2
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Flying Dutchman航班大数据分析平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="/resource/assets/js/jquery.js"></script>

    <link rel="stylesheet" href="/resource/assets/css/style.css">
    <link rel="stylesheet" href="/resource/assets/css/loader-style.css">
    <link rel="stylesheet" href="/resource/assets/css/bootstrap.css">
    <link rel="stylesheet" href="/resource/assets/css/media.css">
    <link rel="stylesheet" href="/resource/assets/css/social.css">

    <script src="/resource/assets/js/sidebar.js"></script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="/resource/assets/ico/favicon.ico">
</head>

<body>
<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<!-- TOP NAVBAR -->
<nav role="navigation" class="navbar navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="entypo-menu"></span>
            </button>
            <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                <span class="entypo-list-add"></span>
            </button>


            <div>
                <h3><span>航班大数据分析平台</span></h3>
            </div>

        </div>


        <!-- Collect the nav links, forms, and other content for toggling -->
        <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">

            </ul>
            <div id="nt-title-container" class="navbar-left running-text visible-lg">
                <ul class="date-top">
                    <li class="entypo-calendar" style="margin-right:5px"></li>
                    <li id="Date"></li>

                </ul>

                <ul id="digital-clock" class="digital">
                    <li class="entypo-clock" style="margin-right:5px"></li>
                    <li class="hour"></li>
                    <li>:</li>
                    <li class="min"></li>
                    <li>:</li>
                    <li class="sec"></li>
                    <li class="meridiem"></li>
                </ul>
                <ul id="nt-title">
                    <li><i class="wi-day-sunny"></i>&#160;&#160;北京&#160;
                        <b>22</b><i class="wi-celcius"></i>&#160;; 15km/h
                    </li>
                    <li><i class="wi-day-lightning"></i>&#160;&#160;上海&#160;
                        <b>18</b><i class="wi-celcius"></i>&#160;; 今晚12°C
                    </li>

                    <li><i class="wi-cloud"></i>&#160;&#160;广州&#160;
                        <b>28</b><i class="wi-celcius"></i>&#160;; 15km/h
                    </li>

                    <li><i class="wi-day-cloudy"></i>&#160;&#160;成都&#160;
                        <b>24</b><i class="wi-celcius"></i>&#160;; 15km/h
                    </li>

                    <li><i class="wi-day-lightning"></i>&#160;&#160;天津&#160;
                        <b>20</b><i class="wi-celcius"></i>&#160;; 15km/h
                    </li>

                </ul>
            </div>

            <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="" class="admin-pic img-circle" src="/resource/assets/img/info/logo.jpg">你好，<span id="welcome">二狗</span><b class="caret"></b>
                    </a>
                    <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                        <li>
                            <a href="userinfo_edit.html">
                                <span class="entypo-vcard"></span>&#160;&#160;账户设置</a>
                        </li>

                        <li class="divider"></li>
                        <li>
                            <a href="#" onclick="toLogin()">
                                <span class="entypo-logout"></span>&#160;&#160;退出登录</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="icon-gear"></span>&#160;&#160;设置</a>
                    <ul role="menu" class="dropdown-setting dropdown-menu">

                        <li class="theme-bg">
                            <div id="button-bg"></div>
                            <div id="button-bg2"></div>
                            <div id="button-bg3"></div>
                            <div id="button-bg5"></div>
                            <div id="button-bg6"></div>
                            <div id="button-bg7"></div>
                            <div id="button-bg8"></div>
                            <div id="button-bg9"></div>
                            <div id="button-bg10"></div>
                            <div id="button-bg11"></div>
                            <div id="button-bg12"></div>
                            <div id="button-bg13"></div>
                        </li>
                    </ul>
                </li>
                <li class="hidden-xs">
                    <a class="toggle-left" href="#">
                        <span style="font-size:20px;" class="entypo-list-add"></span>
                    </a>
                </li>
            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- /END OF TOP NAVBAR -->

<!-- SIDE MENU -->
<div id="skin-select">
    <div id="logo">
        <h1>Flying Dutchman</h1>
    </div>

    <a id="toggle">
        <span class="entypo-menu"></span>
    </a>





    <div class="search-hover">
        <form id="demo-2">
            <input type="search" placeholder="Search Menu..." class="id_search">
        </form>
    </div>




    <div class="skin-part">
        <div id="tree-wrap">
            <div class="side-bar">
                <ul id="functionalModule" class="topnav menu-left-nest">
                    <li>
                        <a class="tooltip-tip ajax-load" href="#" onclick="submitFormWithUsername('/basicFunction/toHomePage')" title="admin index">
                            <i class="icon-home"></i>
                            <span>主页</span>
                        </a>
                    </li>
                    <script>
                        var ul = document.getElementById("functionalModule");

                        var userPrivilegeJson = '${requestScope.get('userPrivilegeList')}';
                        var userPrivilegeList = JSON.parse(userPrivilegeJson);
                        console.log(userPrivilegeList);

                        var rootPrivilegeList = userPrivilegeList["0"];
                        for (var rootId in rootPrivilegeList){
                            var rootPrivilege = rootPrivilegeList[rootId];

                            // 创建一级表头
                            var rootLi = document.createElement("li");
                            var a = document.createElement("a");
                            a.className = "tooltip-tip ajax-load";
                            a.href = "#";
                            a.title = rootPrivilege["name"];
                            a.innerHTML = '<i class="' + iconMap[rootPrivilege["name"]] + '"></i>' +
                                '<span>' + rootPrivilege["name"] + '</span>';

                            // 创建子项
                            var subUl = document.createElement("ul");
                            var subPrivilegeList = userPrivilegeList[rootId];
                            for (var subId in subPrivilegeList){
                                var subPrivilege = subPrivilegeList[subId];
                                var subLi = document.createElement("li");
                                subLi.innerHTML = '<a class="tooltip-tip2 ajax-load" id="' + subPrivilege['url'] + '" href="#" onclick="submitFormWithUsername(this.id)" title="flight query"><i class="' + iconMap[subPrivilege["name"]] + '"></i><span>' +
                                    subPrivilege["name"] + '</span></a>';
                                subUl.appendChild(subLi);
                            }

                            rootLi.appendChild(a);
                            rootLi.appendChild(subUl);
                            ul.appendChild(rootLi);
                        }
                    </script>
                </ul>

                <div class="side-dash">
                    <h3>
                        <span>Visitors</span>
                    </h3>
                    <div id="g1" style="height:180px" class="gauge"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END OF SIDE MENU -->



<!--  PAPER WRAP -->
<div class="wrap-fluid">
    <div class="container-fluid paper-wrap bevel tlbr">
        <!-- CONTENT -->
        <!--CONTENT-->
        <div class="row" style="margin-top:30px;padding:0 15px;">
            <!--  BLOG CONTENT -->
            <div class="col-sm-8">

                <div class="blog-list-nest">
                    <div class="vendor">
                        <img class="img-responsive-media" src="/resource/assets/img/info/bg-carousel-01.png" alt="">
                    </div>

                    <div class="blog-list-content">
                        <h2>Flying Dutchman航班大数据分析平台</h2>
                        <p>FD航班大数据分析平台提醒您：
                            <br>航线千万条，安全第一条，平台不规范，亲人两行泪。</p>

                        <p class="pull-right">
                            <span class="label label-default">安全</span>
                            <span class="label label-default">便捷</span>
                            <span class="label label-default">实用</span>
                        </p>

                        <div style="clear:both;"></div>
                    </div>
                </div>

            </div>
            <!--  END OF BLOG CONTENT -->

            <!--  BLOG SIDE CONTENT -->
            <div class="col-sm-4">

                <div class="blog-side-nest">
                    <h4 class="text-left">特价机票</h4>
                    <hr style="margin:0">

                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object img-responsive-media" data-src="holder.js/64x64" alt="64x64" src="/resource/assets/img/info/shanghai.jpg">
                        </a>
                        <div class="media-body">
                            <div class="col-lg-5">
                                <h6><strong>上海</strong><span class="entypo-right"></span><strong>西安</strong></h6>
                                <h6>3月24日</h6>
                                <h6 style="color: #90111A">¥330</h6>
                            </div>
                            <div class="col-lg-6">
                                <a class="pull-right" href="#">
                                    <img class="media-object img-responsive-media" data-src="holder.js/64x64" alt="64x64" src="/resource/assets/img/info/xian.jpg">
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object img-responsive-media" data-src="holder.js/64x64" alt="64x64" src="/resource/assets/img/info/tianjin.jpg">
                        </a>
                        <div class="media-body">
                            <div class="col-lg-5">
                                <h6><strong>天津</strong><span class="entypo-right"></span><strong>深圳</strong></h6>
                                <h6>3月20日</h6>
                                <h6 style="color: #90111A">¥430</h6>
                            </div>
                            <div class="col-lg-6">
                                <a class="pull-right" href="#">
                                    <img class="media-object img-responsive-media" data-src="holder.js/64x64" alt="64x64" src="/resource/assets/img/info/shenzhen.jpeg">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object img-responsive-media" data-src="holder.js/64x64" alt="64x64" src="/resource/assets/img/info/chengdu.jpg">
                        </a>
                        <div class="media-body">
                            <div class="col-lg-5">
                                <h6><strong>成都</strong><span class="entypo-right"></span><strong>北京</strong></h6>
                                <h6>3月19日</h6>
                                <h6 style="color: #90111A">¥410</h6>
                            </div>
                            <div class="col-lg-6">
                                <a class="pull-right" href="#">
                                    <img class="media-object img-responsive-media" data-src="holder.js/64x64" alt="64x64" src="/resource/assets/img/info/beijing.jpg">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object img-responsive-media" data-src="holder.js/64x64" alt="64x64" src="/resource/assets/img/info/shanghai.jpg">
                        </a>
                        <div class="media-body">
                            <div class="col-lg-5">
                                <h6><strong>上海</strong><span class="entypo-right"></span><strong>重庆</strong></h6>
                                <h6>3月18日</h6>
                                <h6 style="color: #90111A">¥385</h6>
                            </div>
                            <div class="col-lg-6">
                                <a class="pull-right" href="#">
                                    <img class="media-object img-responsive-media" data-src="holder.js/64x64" alt="64x64" src="/resource/assets/img/info/chongqing.jpg">
                                </a>
                            </div>
                        </div>
                    </div>


                    <br>
                </div>

                <div class="blog-side-nest">
                    <h4 class="text-left">热门城市</h4>
                    <hr style="margin:0">
                    <ul class="list-inline">
                        <li>
                            <a class="btn btn-info" href="#">北京</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">上海</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">广州</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">深圳</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">成都</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">杭州</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">武汉</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">西安</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">重庆</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">天津</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">厦门</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">南京</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">三亚</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">昆明</a>
                        </li>
                        <li>
                            <a class="btn btn-info" href="#">济南</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--  END OF BLOG SIDE CONTENT -->
        </div>


        <!-- /END OF CONTENT -->



        <!-- FOOTER -->
        <div class="footer-space"></div>
        <div id="footer">
            <div class="devider-footer-left"></div>
            <div class="time">
                <p id="spanDate">
                <p id="clock">
            </div>
            <div class="copyright">Make with Love
                <span class="entypo-heart"></span>二狗 All Rights Reserved</div>
            <div class="devider-footer"></div>

        </div>
        <!-- / END OF FOOTER -->


    </div>
</div>
<!--  END OF PAPER WRAP -->

<!-- RIGHT SLIDER CONTENT -->
<div class="sb-slidebar sb-right">
    <div class="right-wrapper">
        <div class="row">
            <h3>
                <span><i class="entypo-gauge"></i>&nbsp;&nbsp;航空公司</span>
            </h3>
            <div class="col-sm-12">
                <div>
                    <div class="col-lg-12">
                        <label class="form-label"><a href="http://www.ch.com/">春秋航空</a></label>
                        <br>
                        <label class="form-label"><a href="http://www.joy-air.com/">幸福航空</a></label>
                        <br>
                        <label class="form-label"><a href="http://www.juneyaoair.com/">吉祥航空</a></label>
                        <br>
                        <label class="form-label"><a href="http://www.sda.cn/">山东航空</a></label>
                        <br>
                        <label class="form-label"><a href="https://www.chinaexpressair.com/">华夏航空</a></label>
                        <br>
                        <label class="form-label"><a href="http://www.sichuanair.com/">四川航空</a></label>
                        <br>
                        <label class="form-label"><a href="https://www.rlair.net/">瑞丽航空</a></label>
                        <br>
                        <label class="form-label"><a href="http://www.ceair.com/">中国东方航空</a></label>
                        <br>
                        <label class="form-label"><a href="http://www.airchina.com.cn/">中国国际航空</a></label>
                        <br>
                        <label class="form-label"><a href="http://www.csair.com/cn/">中国南方航空</a></label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top:0;" class="right-wrapper">
        <div class="row">
            <h3>
                <span><i class="icon-user-group"></i>&nbsp;&nbsp;制作人员</span>
            </h3>
            <div class="col-sm-12">
                <ul class="chat">
                    <li>
                        <a href="#">
                                    <span>
                                        <img alt="" class="img-chat img-circle" src="/resource/assets/img/info/Crab.PNG">
                                    </span><b>魏建安</b>
                        </a>
                    </li>
                    <br>
                    <li>
                        <a href="#">
                                    <span>
                                        <img alt="" class="img-chat img-circle" src="/resource/assets/img/info/Spongebob.PNG">
                                    </span><b>花语</b>
                        </a>
                    </li>
                    <br>
                    <li>
                        <a href="#">
                                    <span>
                                        <img alt="" class="img-chat img-circle" src="/resource/assets/img/info/patrick.png">
                                    </span><b>王书为</b>
                        </a>
                    </li>
                    <br>
                    <li>
                        <a href="#">
                                    <span>
                                        <img alt="" class="img-chat img-circle" src="/resource/assets/img/info/squalid.png">
                                    </span><b>张冕</b>
                        </a>
                    </li>
                    <br>
                    <li>
                        <a href="#">
                                    <span>
                                        <img alt="" class="img-chat img-circle" src="/resource/assets/img/info/Gray.png">
                                    </span><b>邓怡然</b>
                        </a>
                    </li>
                    <br>
                </ul>

            </div>
        </div>
    </div>
</div>

<!-- END OF RIGHT SLIDER CONTENT-->




<!-- MAIN EFFECT -->
<script type="text/javascript" src="/resource/assets/js/preloader.js"></script>
<script type="text/javascript" src="/resource/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="/resource/assets/js/app.js"></script>
<script type="text/javascript" src="/resource/assets/js/load.js"></script>
<script type="text/javascript" src="/resource/assets/js/main.js"></script>
<script src="/resource/assets/js/flatvideo/jquery.fitvids.js"></script>


<script>
    // Basic FitVids Test
    $(".blog-list-nest").fitVids();
    // Custom selector and No-Double-Wrapping Prevention Test
    $(".blog-list-nest").fitVids();
    // Custom selector and No-Double-Wrapping Prevention Test
</script>
<div id="numberOfVisits" style="display: none"></div>
</body>
<script>
    function init() {
        var numberOfVisits = document.getElementById("numberOfVisits");
        numberOfVisits.innerHTML = '${requestScope.get('numberOfVisits')}';

        var welcome = document.getElementById("welcome");
        welcome.innerHTML = '${requestScope.get('username')}';
    }

    window.onload = init();
</script>
</html>
