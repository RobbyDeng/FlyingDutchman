<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/8
  Time: 10:14
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

    <link rel="stylesheet" href="/resource/assets/css/media.css">
    <link href="/resource/assets/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="/resource/assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
    <link rel="stylesheet" href="/resource/assets/js/dataTable/css/datatables.responsive.css">

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
                                飞机机型统计</h6>
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


                                    <ul id="myTab" class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#plane_type" data-toggle="tab">
                                                图表视图
                                            </a>
                                        </li>
                                        <li><a href="#data" data-toggle="tab">数据视图</a></li>
                                    </ul>

                                    <div id="myTabContent" class="tab-content">

                                        <!--机型统计tab-->
                                        <div class="tab-pane fade in active" id="plane_type">
                                            <div id="main" style="height:600px;width: 1100px; background-color:#F5FFFA"></div>
                                            <script type="text/javascript">
                                                $.getJSON('/resource/assets/json/generic_Statistics.json', function (area) {
                                                    let data = {};
                                                    data['legendData'] = [];
                                                    data['seriesData'] = [];
                                                    data['selected'] = {};

                                                    for (let key in area) {
                                                        data['seriesData'].push({name: area[key][0], value: area[key][1]});
                                                    }

                                                    let order_data = data['seriesData'].sort(function (a, b) {
                                                        return b.value - a.value;
                                                    });

                                                    let selectedData = order_data.slice(0, 10);
                                                    let deselectedData = order_data.slice(10);

                                                    for (let i = 0; i < data['seriesData'].length; i++) {
                                                        data['legendData'][i] = data['seriesData'][i]['name']
                                                    }


                                                    data['selected'] = {};
                                                    for (let i = 0; i < selectedData.length; i++) {
                                                        data['selected'][selectedData[i]['name']] = true;
                                                    }
                                                    for (let j = 0; j < deselectedData.length; j++) {
                                                        data['selected'][deselectedData[j]['name']] = false;
                                                    }

                                                    option = {
                                                        title: {
                                                            text: '近期飞机型号统计',
                                                            x: 'center'
                                                        },
                                                        tooltip: {
                                                            trigger: 'item',
                                                            formatter: "{a}: {b} <br/>{c}架 ({d}%)"
                                                        },
                                                        legend: {
                                                            type: 'scroll',
                                                            orient: 'vertical',
                                                            right: 10,
                                                            top: 20,
                                                            bottom: 20,
                                                            data: data.legendData,

                                                            selected: data.selected
                                                        },

                                                        series: [
                                                            {
                                                                name: '机型',
                                                                type: 'pie',
                                                                radius: '55%',
                                                                center: ['40%', '50%'],
                                                                data: data.seriesData,
                                                                itemStyle: {
                                                                    emphasis: {
                                                                        shadowBlur: 10,
                                                                        shadowOffsetX: 0,
                                                                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                                    }
                                                                },

                                                                animationType: 'scale',
                                                                animationEasing: 'elasticOut',
                                                                animationDelay: function (idx) {
                                                                    return Math.random() * 2000;
                                                                }
                                                            }
                                                        ]
                                                    };

                                                    let myChart = echarts.init(document.getElementById('main'));
                                                    myChart.setOption(option);
                                                });
                                            </script>
                                        </div>

                                        <!--机型统计表格tab-->
                                        <div class="tab-pane fade" id="data">

                                            <div class="body-nest" id="Filtering">

                                                <div class="row" style="margin-bottom:10px;">
                                                    <div class="col-sm-4">
                                                        <input class="form-control" id="filter" placeholder="机型搜索" type="text" >
                                                    </div>
                                                </div>

                                                <table id="footable-res" class="demo table-striped footable-res footable metro-blue" data-filter="#filter" data-filter-text-only="true" data-page-size="10">
                                                    <thead>
                                                    <tr>
                                                        <th>
                                                            飞机机型
                                                        </th>
                                                        <th>
                                                            架数
                                                        </th>
                                                        <th>
                                                            百分比
                                                        </th>
                                                        <th>
                                                            排名
                                                        </th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="dataView">

                                                    </tbody>
                                                    <tfoot>
                                                    <tr>
                                                        <td colspan="4">
                                                            <div id="pageIndex" class="pagination pagination-centered"></div>
                                                        </td>
                                                    </tr>
                                                    </tfoot>
                                                </table>

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

<div id="numberOfVisits" style="display: none"></div>
<div id="numberInPage" style="display: none"></div>
</body>
<script>
    var currentIndex = 0;
    var numberOfPage = 0;
    var numberInPage = 10;

    function setPage(text) {
        var offset = currentIndex;
        if (text == "«"){
            offset = 0;
        }else if (text == "‹"){
            offset -= 1;
            if (offset < 0){
                offset = 0;
            }
        }else if (text == "›"){
            offset += 1;
            if (offset > numberOfPage){
                offset = numberOfPage;
            }
        }else if (text == "»"){
            offset = numberOfPage;
        }else{
            offset = text-1;
        }

        currentIndex = offset;

        var trList = document.getElementsByClassName("plane_type");
        for (var i = 0; i < trList.length; i++){
            trList[i].style = "display: none";
        }

        console.log("测试一下");
        console.log(offset*numberInPage);
        console.log(offset*numberInPage+numberInPage);
        for (var i = offset*numberInPage; i < offset*numberInPage+numberInPage && i < trList.length; i++){
            trList[i].style = "";
        }
    }

    function createLi(text, className) {
        var li = document.createElement("li");
        li.className = className;
        var a = document.createElement("a");
        a.href = "#";
        a.innerText = text;
        li.appendChild(a);
        li.onclick = function(){setPage(text)};

        return li;
    }

    function createFooter() {
        // numberOfPage = number;
        var div = document.getElementById("pageIndex");
        var ul = document.createElement("ul");
        ul.appendChild(createLi("«", "footable-page-arrow"));
        ul.appendChild(createLi("‹", "footable-page-arrow"));
        console.log(numberOfPage);
        for (var i = 0; i <= numberOfPage; i++){
            ul.appendChild(createLi(i+1, "footable-page"));
        }

        ul.appendChild(createLi("›", "footable-page-arrow"));
        ul.appendChild(createLi("»", "footable-page-arrow"));
        div.appendChild(ul);

        // 设置初始Index
        setPage(1);
    }

    $.getJSON('/resource/assets/json/generic_Statistics.json',function(area){
        var tbody = document.getElementById("dataView");

        for (var key in area){
            var list = area[key];

            var tr  = document.createElement("tr");
            tr.className = "plane_type";

            var tdName = document.createElement("td");
            tdName.innerText = list[0];

            var tdNumber = document.createElement("td");
            tdNumber.innerText = list[1];

            var tdPercent = document.createElement("td");
            tdPercent.innerText = list[2];

            var tdRank = document.createElement("td");
            tdRank.innerText = key;

            tr.appendChild(tdName);
            tr.appendChild(tdNumber);
            tr.appendChild(tdPercent);
            tr.appendChild(tdRank);

            tbody.appendChild(tr);
        }

        numberOfPage = parseInt(Object.keys(area).length/numberInPage);
        createFooter();
    });
</script>
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
