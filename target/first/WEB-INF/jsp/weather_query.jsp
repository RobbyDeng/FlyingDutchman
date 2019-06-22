<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/14
  Time: 21:48
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

    <link rel="stylesheet" href="/resource/assets/js/button/ladda/ladda.min.css">

    <script type="text/javascript" src="/resource/assets/echarts/echarts.js"></script>
    <script type="text/javascript" src="/resource/assets/echarts/map/china.js"></script>
    <script src="/resource/assets/js/macarons.js"></script>

    <link href="//a.amap.com/Loca/static/manual/example/style/demo.css" rel="stylesheet">
    <link rel="stylesheet" href="/resource/assets/css/media.css">

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

        <div class="content-wrap">
            <div class="row">


                <div class="col-sm-12">
                    <!-- airline-->

                    <div class="nest" id="Blank_Close">
                        <div class="title-alt">
                            <h6>
                                机场天气查询</h6>
                            <div class="titleClose">
                                <a class="gone" href="#Blank_Close">
                                    <span class="entypo-cancel"></span>
                                </a>
                            </div>
                            <div class="titleToggle">
                                <a class="nav-toggle-alt" href="#Blank_Page_Content">
                                    <span class="entypo-up-open"></span>
                                </a>
                            </div>

                        </div>

                        <div class="body-nest" id="Blank_Page_Content">

                            <div class="content-wrap">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <!-- BLANK PAGE-->
                                        <div class="nest" id="Blank_PageClose">

                                            <div class="body-nest" id="Blank_Content">
                                                <div id="container" class="container" style="height: 550px;width: 700px;"></div>
                                                <script src="//webapi.amap.com/loca?v=1.2.0&key=fa00921c9217af1bdf6fb117e75b77e2"></script>
                                                <script src="//a.amap.com/Loca/static/manual/example/script/demo.js"></script>
                                                <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.13&key=fa00921c9217af1bdf6fb117e75b77e2"></script>
                                                <script src="/resource/assets/js/airport_location.js"></script>
                                                <script>
                                                    var map = Loca.create('container', {
                                                        mapStyle: 'amap://styles/normal',
                                                        zoom: 4,
                                                        center: [107.4976, 32.1697]
                                                    });

                                                    var layer = Loca.visualLayer({
                                                        eventSupport: true,    // selectStyle 配置需要开启 eventSupport: true
                                                        container: map,
                                                        type: 'point',
                                                        shape: 'circle'
                                                    });

                                                    //加载天气查询插件
                                                    AMap.plugin('AMap.Weather', function() {
                                                        layer.on('mouseenter', function (ev) {
                                                            // 事件类型
                                                            var type = ev.type;
                                                            // 当前元素的原始数据
                                                            var rawData = ev.rawData;
                                                            // 原始鼠标事件
                                                            var originalEvent = ev.originalEvent;
                                                            //创建天气查询实例
                                                            var weather = new AMap.Weather();

                                                            //执行实时天气信息查询
                                                            weather.getLive(rawData.city, function(err, data) {
                                                                openInfoWin(map.getMap(), originalEvent, {
                                                                    '名称': rawData.name,
                                                                    '位置': rawData.value,
                                                                    '城市': rawData.city,
                                                                    '天气状况':data.weather,
                                                                    '实时气温':data.temperature,
                                                                    '相对湿度':data.humidity,
                                                                    '发布时间':data.reportTime
                                                                });
                                                            });
                                                        });

                                                    });

                                                    layer.on('mouseleave', function (ev) {
                                                        closeInfoWin();
                                                    });

                                                    layer.setData(districts, {
                                                        lnglat: 'value'
                                                    });

                                                    layer.setOptions({
                                                        style: {
                                                            radius: 8,
                                                            color: '#4fc2ff',
                                                            borderColor: '#ffffff',
                                                            borderWidth: 1.5,
                                                            opacity: 0.8
                                                        },
                                                        selectStyle: {
                                                            radius: 14,
                                                            color: '#ffe30a'
                                                        }
                                                    });

                                                    layer.render();

                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div id="RealTimeClose" class="nest">
                                            <div id="RealTime" class="body-nest">
                                                <div style="height: 550px;width: 300px;">
                                                    <div class="well-media">


                                                        <div class="vendor">
                                                            <div data-ride="carousel" class="carousel slide" id="carousel-example-generic">
                                                                <ol class="carousel-indicators">
                                                                    <li class="" data-slide-to="0" data-target="#carousel-example-generic"></li>
                                                                    <li data-slide-to="1" data-target="#carousel-example-generic" class="active"></li>
                                                                </ol>

                                                                <a data-slide="prev" href="#carousel-example-generic" class="left carousel-control">
                                                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                                                </a>
                                                                <a data-slide="next" href="#carousel-example-generic" class="right carousel-control">
                                                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                                                </a>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-8" id="weather_search">
                                                            <input id='search_tab' type="text" class="form-control" placeholder="机场名称或三字码">
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <button id='weather_info_button' type="button" class="btn btn-success" data-toggle="modal" data-target="#weather_info">查询</button>
                                                        </div>
                                                        <script>
                                                            $('#weather_info_button').click(function () {
                                                                let input = $('#search_tab').val();
                                                                let inputdata = {};
                                                                inputdata['codeOrName'] = input;
                                                                $.ajax({
                                                                    type: 'POST',
                                                                    url: 'http://192.168.43.156:7000/api/queryWeather',
                                                                    data: JSON.stringify(inputdata),
                                                                    contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                                                                    success: function (data) {
                                                                        let weatherInfo = data;
                                                                        $("#airport_name").html(weatherInfo['airportName']);
                                                                        $("#airport_code").html(weatherInfo['aircode']);
                                                                        $("#now_temp").html(weatherInfo['currTemp']);
                                                                        $("#high_temp").html(weatherInfo['highTemp']);
                                                                        $("#low_temp").html(weatherInfo['lowTemp']);
                                                                        $("#sky_info").html(weatherInfo['weatherInfo']);
                                                                        $("#windinfo").html(weatherInfo['windInfo']);
                                                                    }
                                                                });

                                                            })
                                                        </script>
                                                        <br>
                                                        <br>
                                                        <div class="video-text" id="weather_info">
                                                            <h2 id="airport_name"></h2>
                                                            <div><strong>机场代码:</strong><span id="airport_code"></span></div>
                                                            <div><strong>实时温度:</strong><span id="now_temp"></span></div>
                                                            <div><strong>最高温度:</strong><span id="high_temp"></span></div>
                                                            <div><strong>最低温度:</strong><span id="low_temp"></span></div>
                                                            <div><strong>天气状况:</strong><span id="sky_info"></span></div>
                                                            <div><strong>风力信息:</strong><span id="windinfo"></span></div>
                                                        </div>

                                                        <div class="tag-nest">
                                                            <a href="http://www.weather.com.cn/">中国气象网</a>
                                                        </div>

                                                        <div class="audio-category-bg">
                                                            <h3>机场天气情况</h3>
                                                            <a class="link-media pull-right" href="#">
                                                                <span class="wi-day-cloudy"></span>
                                                            </a>
                                                            <div class="triangle-white"></div>
                                                            <div class="triangle-audio-right"></div>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>


                                    </div>

                                    <!-- END OF BLANK PAGE -->
                                </div>


                            </div>


                        </div>
                    </div>
                </div>
                <!-- END OF BLANK PAGE -->


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




        <!-- /END OF CONTENT -->



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
    $(".well-media").fitVids();
    $(".vendor").fitVids();
    // Custom selector and No-Double-Wrapping Prevention Test
    $(".well-media").fitVids({
        customSelector: "iframe[src^='http://socialcam.com']"
    });
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
