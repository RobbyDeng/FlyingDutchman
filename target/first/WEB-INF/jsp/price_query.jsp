<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/8
  Time: 9:41
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
    <link rel="stylesheet" href="lib/bootstrap-chinese-region/bootstrap-chinese-region.css">

    <link rel="stylesheet" href="/resource/assets/css/profile.css">
    <link rel="stylesheet" type="text/css" href="/resource/assets/js/tag/jquery.tagsinput.css">
    <link rel="stylesheet" href="/resource/assets/js/timepicker/bootstrap-timepicker.css">
    <link rel="stylesheet" href="/resource/assets/js/datepicker/datepicker.css">
    <link rel="stylesheet" href="/resource/assets/js/datepicker/clockface.css">

    <link rel="stylesheet" href="/resource/assets/js/wizard/css/jquery.steps.css">
    <link type="text/css" rel="stylesheet" href="/resource/assets/js/wizard/jquery.stepy.css">
    <link href="/resource/assets/js/tabs/acc-wizard.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/resource/assets/css/index.css">

    <link href="/resource/assets/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="/resource/assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
    <link rel="stylesheet" href="/resource/assets/js/dataTable/css/datatables.responsive.css">
    <!--新添加的echarts-->
    <script type="text/javascript" src="/resource/assets/echarts/echarts.js"></script>
    <script type="text/javascript" src="/resource/assets/echarts/map/china.js"></script>

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
            <!--<ul class="nav navbar-nav">-->

            <!--</ul>-->
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

                    <div class="nest" id="Blank_PageClose">
                        <div class="title-alt">
                            <h6>
                                票价查询</h6>
                            <div class="titleClose">
                                <a class="gone" href="#Blank_PageClose">
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



                            <ul id="myTab" class="nav nav-tabs">
                                <li class="active">
                                    <a href="#query" data-toggle="tab">
                                        查询
                                    </a>
                                </li>
                                <li><a href="#data" data-toggle="tab">统计图表</a></li>
                            </ul>

                            <div id="myTabContent" class="tab-content">

                                <!--票价查询tab-->
                                <div class="tab-pane fade in active" id="query">
                                    <div style="height: 20px;"></div>

                                    <div class="col-lg-6 row">
                                        <label>出发城市</label>
                                        <div class="city-picker-selector" id="city-picker-search"></div>
                                        <br>
                                        <label>到达城市</label>
                                        <div class="city-picker-selector" id="city-picker-search2"></div>
                                    </div>
                                    <div class="col-lg-3">
                                        <label>出发日期</label>
                                        <br>
                                        <input type="text" class="form-control" id="dp1" value="03-16-2019">
                                    </div>

                                    <div class="col-lg-2">
                                        <div class="row">
                                            <div style="height: 20px;"></div>
                                            <button onclick="queryPrice()" type="button" class="btn btn-success">查询</button>
                                        </div>
                                    </div>
                                    <div style="height: 120px"></div>
                                    <br>
                                    <br>
                                    <table id="priceList" class="table-striped footable-res footable metro-blue" data-page-size="10">
                                        <%--加载表头--%>
                                        <script>
                                            var table = document.getElementById("priceList");
                                            var thead = document.createElement("thead");
                                            var tr = document.createElement("tr");
                                            var list = '${requestScope.get('fieldList')}'.replace("[", "").replace("]", "").split(",");
                                            console.log(list);
                                            for (var i in list){
                                                var th = document.createElement("th");
                                                th.innerText = list[i];
                                                tr.appendChild(th);
                                            }

                                            var tbody = document.createElement("tbody");
                                            tbody.id = "tbody";

                                            var tfoot = document.createElement("tfoot");
                                            tfoot.innerHTML = '<tfoot>' +
                                                '<tr>' +
                                                '<td colspan="' + list.length + '">' +
                                                '<div class="pagination pagination-centered"></div>' +
                                                '</td>' +
                                                '</tr>' +
                                                '</tfoot>';

                                            thead.appendChild(tr);
                                            table.appendChild(thead);
                                            table.appendChild(tbody);
                                            table.appendChild(tfoot);
                                        </script>
                                    </table>

                                </div>

                                <!--不同机票统计信息-->
                                <div class="tab-pane fade" id="data">

                                    <div class="col-lg-8">
                                        <div id="main" style="height: 550px;width: 750px;padding-top: 10px;padding-left: 10px;"></div>
                                        <script>
                                            function loadColumn(list) {
//                                                console.log("加载柱状图");
//                                                console.log(list);
                                                var myChart = echarts.init(document.getElementById('main'));
                                                myChart.setOption({
                                                    title:
                                                        {text:'票价准点率柱状折线统计图'},
                                                    tooltip: {
                                                        trigger: 'axis',
                                                        axisPointer: {
                                                            type: 'cross',
                                                            crossStyle: {
                                                                color: '#999'
                                                            }
                                                        }
                                                    },
                                                    toolbox: {
                                                        feature: {
                                                            dataView: {show: true, readOnly: false},
                                                            magicType: {show: true, type: ['line', 'bar']},
                                                            restore: {show: true},
                                                            saveAsImage: {show: true}
                                                        }
                                                    },
                                                    legend: {
                                                        data:['票价','准点率']
                                                    },
                                                    xAxis: [
                                                        {
                                                            type: 'category',
                                                            data: [],
                                                            axisPointer: {
                                                                type: 'shadow'
                                                            }
                                                        }
                                                    ],
                                                    yAxis: [
                                                        {
                                                            type: 'value',
                                                            name: '票价',
                                                            // min: 0,
                                                            // max:3000,
                                                            // interval: max/10,
                                                            axisLabel: {
                                                                formatter: '{value} 元'
                                                            }
                                                        },
                                                        {
                                                            type: 'value',
                                                            name: '准点率',
                                                            min: 0,
                                                            max: 100,
                                                            interval: 10,
                                                            axisLabel: {
                                                                formatter: '{value} %'
                                                            }
                                                        }
                                                    ],
                                                    series: [
                                                        {
                                                            name:'票价',
                                                            type:'bar',
                                                            data:[],
                                                            color:'#71d9ec'
                                                        },
                                                        {
                                                            name:'准点率',
                                                            type:'line',
                                                            yAxisIndex: 1,
                                                            data:[],
                                                            color:'#438ce9'
                                                        }
                                                    ]

                                                });

                                                var names = [];
                                                var nums = [];
                                                var onTime = [];

                                                for (var i in list){
                                                    var item = list[i];
                                                    names.push(item["航空公司名称"] + item["航班号"]);
                                                    nums.push(item["价格"]);
                                                    onTime.push(item["准点率"].replace("%", ""));
                                                }
                                                

                                                var maxPrice;
                                                var max_y;
                                                maxPrice = Math.max.apply(null, nums);
                                                max_y = (parseInt(maxPrice / 100) + 1) * 100;
                                                console.log(maxPrice);
                                                myChart.setOption({
                                                    xAxis:{
                                                        data:names
                                                    },
                                                    yAxis: [
                                                        {
                                                            type: 'value',
                                                            name: '票价',
                                                            min: 0,
                                                            max:max_y,
                                                            interval: max_y/10,
                                                            axisLabel: {
                                                                formatter: '{value} 元'
                                                            }
                                                        },
                                                        {
                                                            type: 'value',
                                                            name: '准点率',
                                                            min: 0,
                                                            max: 100,
                                                            interval: 10,
                                                            axisLabel: {
                                                                formatter: '{value} %'
                                                            }
                                                        }
                                                    ],
                                                    dataZoom: [
                                                        {
                                                            id: 'dataZoomX',
                                                            type: 'slider',
                                                            xAxisIndex: [0],
                                                            start: 25,
                                                            end: 75,
                                                            filterMode: 'filter'
                                                        },
                                                        {
                                                            type: 'inside',
                                                            start: 25,
                                                            end: 75
                                                        },
                                                        {
                                                            id: 'dataZoomY',
                                                            type: 'slider',
                                                            yAxisIndex: [0],
                                                            filterMode: 'empty'
                                                        }
                                                    ],
                                                    series:[{
                                                        name:'票价',
                                                        data:nums
                                                    },
                                                        {
                                                            name:'准点率',
                                                            yAxisIndex: 1,
                                                            type:'line',
                                                            data:onTime
                                                        }]

                                                });

                                            }
//                                            loadColumn();
                                        </script>
                                    </div>
                                    <div class="col-lg-4">
                                        <div id="container" style="height: 300px;width: 400px;"></div>
                                        <script>
                                            function loadPie(list){
                                                var Chart = echarts.init(document.getElementById('container'));
                                                Chart.setOption({
                                                    title : {
                                                        text: '准点率分布',
                                                        x:'center'
                                                    },
                                                    tooltip : {
                                                        trigger: 'item',
                                                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                                                    },
                                                    legend: {
                                                        x : 'center',
                                                        y : 'bottom',
                                                        data:["50-60%","60-70%","70-80%","80-90%","90-100%"]
                                                    },
                                                    toolbox: {
                                                        show : true,
                                                        feature : {
                                                            mark : {show: true},
                                                            dataView : {show: true, readOnly: false},
                                                            magicType : {
                                                                show: true,
                                                                type: ['pie', 'funnel']
                                                            },
                                                            restore : {show: true},
                                                            saveAsImage : {show: true}
                                                        }
                                                    },
                                                    calculable : true,
                                                    series : [
                                                        {
                                                            type:'pie',
                                                            radius : [20, 110],
                                                            center : ['50%', '60%'],
                                                            roseType : 'radius',
                                                            label: {
                                                                normal: {
                                                                    show: false
                                                                },
                                                                emphasis: {
                                                                    show: true
                                                                }
                                                            },
                                                            lableLine: {
                                                                normal: {
                                                                    show: false
                                                                },
                                                                emphasis: {
                                                                    show: true
                                                                }
                                                            },
                                                            data:[]
                                                        }]
                                                });
                                                Chart.showLoading();
                                                var counts = [];
                                                var nums = [];
                                                var names = ["50-60%","60-70%","70-80%","80-90%","90-100%"];
                                                var brower = [];
                                                counts[0]=0;//50=60
                                                counts[1]=0;//60-70
                                                counts[2]=0;//70-80
                                                counts[3]=0;//80-90
                                                counts[4]=0;//90-100

                                                console.log("饼状图");
                                                for (var i in list){
                                                    var item = list[i];
                                                    nums.push(item["准点率"].replace("%", ""));
                                                }

                                                for (var i = 0; i < nums.length;i++){
                                                    if (nums[i]<60 && nums[i]>=50){
                                                        counts[0]++;
                                                    }
                                                    else if(nums[i]<70 && nums[i]>=60){
                                                        counts[1]++;
                                                    }
                                                    else if(nums[i]<80 && nums[i]>=70){
                                                        counts[2]++;
                                                    }
                                                    else if(nums[i]<90 && nums[i]>=80){
                                                        counts[3]++;
                                                    }
                                                    else if(nums[i]<100 && nums[i]>=90){
                                                        counts[4]++;
                                                    }
                                                }
                                                console.log(counts);
//                                                console.log();

                                                brower.push({
                                                    value:counts,
                                                    name:names
                                                });
                                                console.log(nums);
                                                console.log(names[0]);
                                                Chart.hideLoading();
                                                Chart.setOption({
                                                    legend:{
                                                        data:names
                                                    },
                                                    series:[{
                                                        data:[
                                                            {value:counts[0], name:names[0]},
                                                            {value:counts[1], name:names[1]},
                                                            {value:counts[2], name:names[2]},
                                                            {value:counts[3], name:names[3]},
                                                            {value:counts[4], name:names[4]}
                                                        ]
                                                    }]
                                                });
                                            }
//                                            loadPie();
                                        </script>
                                    </div>

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

    <script type="text/javascript" src="/resource/assets/js/colorPicker/bootstrap-colorpicker.min.js"></script>
    <script type="text/javascript" src="/resource/assets/js/inputMask/jquery.maskedinput.js"></script>
    <script type="text/javascript" src="/resource/assets/js/switch/bootstrap-switch.js"></script>
    <script type="text/javascript" src="/resource/assets/js/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/resource/assets/js/idealform/jquery.idealforms.js"></script>

    <script type="text/javascript" src="/resource/assets/js/timepicker/bootstrap-timepicker.js"></script>
    <script type="text/javascript" src="/resource/assets/js/datepicker/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="/resource/assets/js/datepicker/clockface.js"></script>
    <script type="text/javascript" src="/resource/assets/js/datepicker/bootstrap-datetimepicker.js"></script>

    <script src="/resource/assets/js/wizard/lib/jquery.cookie-1.3.1.js"></script>
    <script src="/resource/assets/js/wizard/build/jquery.steps.js"></script>
    <script type="text/javascript" src="/resource/assets/js/wizard/jquery.stepy.js"></script>

    <!-- /MAIN EFFECT -->
    <!-- GAGE -->
    <script type="text/javascript" src="/resource/assets/js/toggle_close.js"></script>
    <script src="/resource/assets/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
    <script src="/resource/assets/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
    <script src="/resource/assets/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
    <script src="/resource/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
    <script src="/resource/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>

    <script type="text/javascript" src="lib/bootstrap-chinese-region/bootstrap-chinese-region.js"></script>
    <script type="text/javascript">
        $.getJSON('lib/bootstrap-chinese-region/test.json',function(data){
            console.log(data);
            for (var i = 0; i < data.length; i++) {
                var area = {id:data[i].id,name:data[i].cname,level:data[i].level,parentId:data[i].upid};
                data[i] = area;
            }

            $('.bs-chinese-region').chineseRegion('source',data);
        });
    </script>
    <script type="text/javascript">
        $('#datetimepicker1').datetimepicker({
            language: 'pt-BR'
        });
        $('#dp1').datepicker()


        $('#toggle-btn').click(function(e) {
            e.stopPropagation();
            $('#t2').clockface('toggle');
        });
    </script>
    <script>
        $(function() {

            $("#wizard-tab").steps({
                headerTag: "h2",
                bodyTag: "section",
                transitionEffect: "none",
                enableFinishButton: false,
                enablePagination: false,
                enableAllSteps: true,
                titleTemplate: "#title#",
                cssClass: "tabcontrol"
            });

        });
    </script>
    <script type="text/javascript">
        $(function() {
            $('.footable-res').footable();
        });
    </script>
    <script type="text/javascript">
        $(function() {
            $('#footable-res2').footable().bind('footable_filtering', function(e) {
                var selected = $('.filter-status').find(':selected').text();
                if (selected && selected.length > 0) {
                    e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected;
                    e.clear = !e.filter;
                }
            });

            $('.clear-filter').click(function(e) {
                e.preventDefault();
                $('.filter-status').val('');
                $('table.demo').trigger('footable_clear_filter');
            });

            $('.filter-status').change(function(e) {
                e.preventDefault();
                $('table.demo').trigger('footable_filter', {
                    filter: $('#filter').val()
                });
            });

            $('.filter-api').click(function(e) {
                e.preventDefault();

                //get the footable filter object
                var footableFilter = $('table').data('footable-filter');

                alert('about to filter table by "tech"');
                //filter by 'tech'
                footableFilter.filter('tech');

                //clear the filter
                if (confirm('clear filter now?')) {
                    footableFilter.clearFilter();
                }
            });
        });
    </script>
    <script type="text/javascript" src="https://lquan529.github.io/cityPicker/js/citydata.min.js"></script>
    <script type="text/javascript" src="/resource/assets/js/cityPicker-2.0.3.js"></script>
    <script type="text/javascript">
        $(function () {
            // 模拟城市-联动/搜索/键盘操作
            var selector3 = $('#city-picker-search').cityPicker({
                dataJson: cityData,
                renderMode: true,
                search: true,
                autoSelected: true,
                keyboard: true,
                level: 2,
                onChoiceEnd: function() {
                    console.log(this.values)
                }
            });
            var selector4 = $('#city-picker-search2').cityPicker({
                dataJson: cityData,
                renderMode: true,
                search: true,
                autoSelected: true,
                keyboard: true,
                level: 2,
                onChoiceEnd: function() {
                    console.log(this.values)
                }
            });

        });
    </script>
    <!--添加航空公司logo-->
    <script>
//        var flight_id=document.getElementById('flight_id');
//        var flight_code = flight_id.innerHTML.substring(0,2);
//        $('#airline_icon').html('<img src="/resource/assets/ico/airlineIcon/'+flight_code + '.png">');
        // alert('<img src="assets/ico/airlineIcon/'+flight_code + '.png">');
    </script>

</div>
<div id="numberOfVisits" style="display: none"></div>
</body>
<script>
    function toFlightData(id) {
        var form = document.createElement("form");
        var input = document.createElement("input");
        input.name = "username";
        input.value = document.getElementById("welcome").innerHTML;
        form.appendChild(input);

        var tdList = document.getElementById(id).getElementsByTagName("td");
        var data = {};
        for (var i = 0; i < tdList.length; i++){
            data[tdList[i].className] = tdList[i].innerText;
        }
        var dataInput = document.createElement("input");
        dataInput.name = "data";
        dataInput.value = JSON.stringify(data);
        form.appendChild(dataInput);

        form.method = "post";
        form.action = "/flightSearch/toFlightData";
        $(form).appendTo("body").submit();
    }

    function queryPrice() {
        var depart = document.getElementById("city-picker-search").getElementsByTagName("a")[1].innerText.substring(0, 2);
        var arrive = document.getElementById("city-picker-search2").getElementsByTagName("a")[1].innerText.substring(0, 2);
        var date = document.getElementById("dp1").value;
        var dateTmp = date.split("/");
        date = dateTmp[2] + "-" + dateTmp[0] + "-" + dateTmp[1];

        $.ajax({
            type: "post",
            url: "/flightSearch/queryPrice",
            async: false,
            data: {depart: depart, arrive: arrive, date: date},
            dataType: "json",
            success:function (data) {
                alert("获取成功");
                console.log(data);
                var list = '${requestScope.get('fieldList')}'.replace("[", "").replace("]", "").split(",");

                loadColumn(data);
                loadPie(data);
                // 加载表项
                var tbody = document.getElementById("tbody");
                for (var i in data){
                    var tr = document.createElement("tr");
                    tr.id = i;
                    tr.style.display = "table-row";
                    tr.onclick = function () {
                        toFlightData(this.id);
                    };

                    var flight = data[i];
                    for (var j in list){
                        var td = document.createElement("td");
                        var key = list[j].replace(/\s*/g,"");
                        td.className = key;
                        td.innerText = flight[key];

                        tr.appendChild(td);
                    }

                    tbody.appendChild(tr);
                }

//                table.appendChild(tbody);
            },
            error:function (data) {
                alert("error");
                console.log(data);
            }
        });
    }

    function init() {
        var numberOfVisits = document.getElementById("numberOfVisits");
        numberOfVisits.innerHTML = '${requestScope.get('numberOfVisits')}';

        var welcome = document.getElementById("welcome");
        welcome.innerHTML = '${requestScope.get('username')}';
    }

    window.onload = init();
</script>
</html>
