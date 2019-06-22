<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/8
  Time: 10:12
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
                                机场位置分布</h6>
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
                                            <a href="#location" data-toggle="tab">
                                                图表视图
                                            </a>
                                        </li>
                                        <li><a href="#data" data-toggle="tab">数据视图</a></li>
                                    </ul>

                                    <div id="myTabContent" class="tab-content">

                                        <!--票价查询tab-->
                                        <div class="tab-pane fade in active" id="location">
                                            <div class="col-sm-8">
                                                <!-- BLANK PAGE-->

                                                <div class="nest" id="Blank_PageClose">
                                                    <div class="title-alt">
                                                        <h6>
                                                            机场位置分布</h6>
                                                        <div class="titleClose">
                                                            <a class="gone" href="#Blank_PageClose">
                                                                <span class="entypo-cancel"></span>
                                                            </a>
                                                        </div>
                                                        <div class="titleToggle">
                                                            <a class="nav-toggle-alt" href="#Blank_Content">
                                                                <span class="entypo-up-open"></span>
                                                            </a>
                                                        </div>

                                                    </div>

                                                    <div class="body-nest" id="Blank_Content">
                                                        <div id="main" style="height: 550px;width:600px;"></div>
                                                        <script type="text/javascript">
                                                            var chart = echarts.init(document.getElementById('main'));

                                                            $.getJSON('/resource/assets/json/airportLocation.json',function(area){
//                                                                console.log(data);

                                                                var data = [];
                                                                var dict = {};
                                                                for (var i in area){
                                                                    var airport = area[i];
                                                                    var position = airport["position"].split(" ");
                                                                    data.push({name: airport["airportName"], value: [position[0], position[3], 1000]});
                                                                    dict[airport["airportName"]] = [airport["airportCode"], airport["address"].split("_")[0], position[0], position[3]];
                                                                }

                                                                console.log(data);

                                                                var option = {
                                                                    backgroundColor: '#404a59',
                                                                    title: {
                                                                        text: '全国机场位置分布',
                                                                        left: 'center',
                                                                        textStyle: {
                                                                            color: '#fff'
                                                                        }
                                                                    },
                                                                    //提示框
                                                                    tooltip : {
                                                                        trigger: 'item',
                                                                        formatter: function (params) { //添加数字,否则为坐标
                                                                            console.log(params);
                                                                            var name = params["name"];
                                                                            var airport =  dict[name];
                                                                            document.getElementById("airportName").innerText = name;
                                                                            document.getElementById("airportCode").innerText = airport[0];
                                                                            document.getElementById("airportProvince").innerText = airport[1];
                                                                            document.getElementById("longitude").innerText = airport[2];
                                                                            document.getElementById("dimension").innerText = airport[3];
                                                                            document.getElementById("encyclopedias").href = "https://baike.baidu.com/item/" + name + "?fromtitle=" + name;

                                                                            return params.name+'<br>'+
                                                                                '经度'+''+':'+''+params.value[0]+''+'<br>'+
                                                                                '纬度'+':'+''+params.value[1]

                                                                        },
                                                                        padding:[
                                                                            5,  // 上
                                                                            10, // 右
                                                                            5,  // 下
                                                                            10 // 左
                                                                        ],
                                                                        textStyle:{
                                                                            color: '#fff',
                                                                            fontSize:'13'
                                                                        }
                                                                    },
                                                                    //图例组件
                                                                    legend: {
                                                                        orient: 'horizontal',
                                                                        //相等于left 、top、bottom、right
                                                                        y: 'bottom',
                                                                        x:'right',
                                                                        //这里的数据名称要和series中的name名称一样，否则不显示
                                                                        data:['规上企业'],
                                                                        textStyle: {
                                                                            color: '#fff'
                                                                        }
                                                                    },

                                                                    //地图
                                                                    geo: {
                                                                        map: 'china',
                                                                        label: {
                                                                            emphasis: {
                                                                                show: false
                                                                            }
                                                                        },
                                                                        roam: true,
                                                                        itemStyle: {
                                                                            //正常状态下
                                                                            normal: {
                                                                                areaColor: '#323c48',
                                                                                borderColor: '#111'
                                                                            },
                                                                            //选定某一区域下 相当于 hover
                                                                            emphasis: {
                                                                                areaColor: '#2a333d'
                                                                            }
                                                                        },
                                                                        z:1
                                                                    },
                                                                    //这里数据中主要是冒泡图数据
                                                                    series : [{
                                                                        name:'上规企业',
                                                                        type: 'effectScatter',
                                                                        coordinateSystem: 'geo',
                                                                        data: data,  //slice里面的数可以是0 ，意思是全部显示  0,1000 意思是显示这组数据中最大前1000组
                                                                        symbolSize: function (val) {
                                                                            return val[2] / 200;
                                                                        },
                                                                        showEffectOn: 'render',
                                                                        rippleEffect: {
                                                                            scale: 5,
                                                                            brushType: 'stroke'
                                                                        },
                                                                        hoverAnimation: true,
                                                                        label: {
                                                                            normal: {
                                                                                formatter: '{b}',
                                                                                position: 'right',
                                                                                show: false
                                                                            },
                                                                            emphasis: {
                                                                                show: true
                                                                            }
                                                                        },
                                                                        itemStyle: {
                                                                            normal: {
                                                                                color: '#66ffcc',
                                                                                shadowBlur: 10,
                                                                                shadowColor: '#333'
                                                                            }
                                                                        }
                                                                    }]
                                                                };

                                                                chart.setOption(option);
                                                            });

                                                        </script>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div id="RealTimeClose" class="nest">
                                                    <div class="title-alt">
                                                        <h6>
                                                            <span class="fontawesome-resize-horizontal"></span>&nbsp;机场详细信息</h6>
                                                        <div class="titleClose">
                                                            <a class="gone" href="#RealTimeClose">
                                                                <span class="entypo-cancel"></span>
                                                            </a>
                                                        </div>
                                                        <div class="titleToggle">
                                                            <a class="nav-toggle-alt" href="#RealTime">
                                                                <span class="entypo-up-open"></span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div id="RealTime" class="body-nest">
                                                        <div id="pie" style="height: 550px;width: 300px;">
                                                            <div class="well-media">


                                                                <div class="vendor">
                                                                    <div data-ride="carousel" class="carousel slide" id="carousel-example-generic">
                                                                        <ol class="carousel-indicators">
                                                                            <li class="" data-slide-to="0" data-target="#carousel-example-generic"></li>
                                                                            <li data-slide-to="1" data-target="#carousel-example-generic" class="active"></li>
                                                                        </ol>
                                                                        <div class="carousel-inner">
                                                                            <div class="item">
                                                                                <img class="img-responsive-media" alt="First slide" src="/resource/assets/img/info/airport2.jpg">
                                                                            </div>
                                                                            <div class="item active">
                                                                                <img class="img-responsive-media" alt="Second slide" src="/resource/assets/img/info/airport3.jpg">
                                                                            </div>

                                                                        </div>
                                                                        <a data-slide="prev" href="#carousel-example-generic" class="left carousel-control">
                                                                            <span class="glyphicon glyphicon-chevron-left"></span>
                                                                        </a>
                                                                        <a data-slide="next" href="#carousel-example-generic" class="right carousel-control">
                                                                            <span class="glyphicon glyphicon-chevron-right"></span>
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <div class="video-text">
                                                                    <h2 id="airportName">成都双流机场</h2>
                                                                    <div><strong>机场代码:</strong><span id="airportCode">CTU</span></div>
                                                                    <div><strong>所在省份:</strong><span id="airportProvince">四川省</span></div>
                                                                    <div><strong>经度:</strong><span id="longitude">103.94</span></div>
                                                                    <div><strong>纬度:</strong><span id="dimension">30.97</span></div>
                                                                </div>

                                                                <div class="tag-nest">
                                                                    <a id="encyclopedias" href="https://baike.baidu.com/item/%E6%88%90%E9%83%BD%E5%8F%8C%E6%B5%81%E5%9B%BD%E9%99%85%E6%9C%BA%E5%9C%BA?fromtitle=%E6%88%90%E9%83%BD%E5%8F%8C%E6%B5%81%E6%9C%BA%E5%9C%BA">百科</a>
                                                                </div>

                                                                <div class="audio-category-bg">
                                                                    <h3>机场详细信息</h3>
                                                                    <a class="link-media pull-right" href="#">
                                                                        <span class="entypo-picture"></span>
                                                                    </a>
                                                                    <div class="triangle-white"></div>
                                                                    <div class="triangle-audio-right"></div>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>


                                            </div>
                                        </div>

                                        <!--不同机票统计信息-->
                                        <div class="tab-pane fade" id="data">

                                            <div class="body-nest" id="Filtering">

                                                <div class="row" style="margin-bottom:10px;">
                                                    <div class="col-sm-4">
                                                        <input class="form-control" id="filter" placeholder="机场名称搜索" type="text" >
                                                    </div>


                                                </div>

                                                <table id="footable-res" class="demo table-striped footable-res footable metro-blue" data-filter="#filter" data-filter-text-only="true" data-page-size="3">
                                                    <thead>
                                                    <tr>
                                                        <th>
                                                            机场名称
                                                        </th>
                                                        <th>
                                                            机场代码
                                                        </th>
                                                        <th>
                                                            经度
                                                        </th>
                                                        <th>
                                                            纬度
                                                        </th>
                                                        <th>
                                                            所在省份
                                                        </th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="dataView">

                                                    </tbody>
                                                    <tfoot>
                                                    <tr>
                                                        <td colspan="5">
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

    $.getJSON('/resource/assets/json/airportLocation.json',function(area){
        var tbody = document.getElementById("dataView");

        for (var key in area){
            var list = area[key];

            var tr  = document.createElement("tr");
            tr.className = "plane_type";

            var tdName = document.createElement("td");
            tdName.innerText = list["airportName"];

            var tdCode = document.createElement("td");
            tdCode.innerText = list["airportCode"];

            var position = list["position"].split(" ");

            var tdLongitude = document.createElement("td");
            tdLongitude.innerText = position[0];

            var tdDimension = document.createElement("td");
            tdDimension.innerText = position[3];

            var tdCity = document.createElement("td");
            tdCity.innerText = list["address"].split("_")[0];

            tr.appendChild(tdName);
            tr.appendChild(tdCode);
            tr.appendChild(tdLongitude);
            tr.appendChild(tdDimension);
            tr.appendChild(tdCity);

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
