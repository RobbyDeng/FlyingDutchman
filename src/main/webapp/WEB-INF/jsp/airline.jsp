<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/14
  Time: 21:14
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
    <!--引入echarts-->
    <script type="text/javascript" src="/resource/assets/echarts/echarts.js"></script>
    <!--引入的css文件用于表格分页-->
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

<body><div id="awwwards" class="right black"><a href="http://www.awwwards.com/best-websites/apricot-navigation-admin-dashboard-template" target="_blank">best websites of the world</a></div>
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
                            <a href="login.html">
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
                                航空航班统计</h6>
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
                                <li class="active"><a href="#chart" data-toggle="tab">图表视图</a></li>
                                <li><a href="#data" data-toggle="tab">数据视图</a></li>
                                <li><a href="#top10" data-toggle="tab">准点率排行</a></li>
                            </ul>


                            <div id="myTabContent" class="tab-content">

                                <div id="chart" style="width: 920px;height: 600px;" class="tab-pane fade in active"></div>
                                <script>
                                    let myChart = echarts.init(document.getElementById('chart'));
                                    myChart.showLoading();
                                    $.get('/resource/assets/json/ultimateData.json', function (data) {
                                        myChart.hideLoading();
                                        var itemStyle = {
                                            normal: {
                                                opacity: 0.8,
                                                shadowBlur: 10,
                                                shadowOffsetX: 0,
                                                shadowOffsetY: 0,
                                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                                            }
                                        };

                                        var sizeFunction = function (x) {
                                            var y = Math.sqrt(x / 1e4) + 0.1;
                                            return y * 45;
                                        };
                                        // Schema:
                                        var schema = [
                                            {name: 'Income', index: 0, text: '平均延误时间', unit: '分钟'},
                                            {name: 'LifeExpectancy', index: 1, text: '准点率', unit: '%'},
                                            {name: 'Population', index: 2, text: '执行航班量', unit: '班次'},
                                            {name: 'Country', index: 3, text: '航空公司', unit: ''}
                                        ];

                                        option = {
                                            baseOption: {
                                                timeline: {
                                                    axisType: 'category',
                                                    orient: 'vertical',
                                                    autoPlay: true,
                                                    inverse: true,
                                                    playInterval: 2000,
                                                    left: null,
                                                    right: 0,
                                                    top: 20,
                                                    bottom: 20,
                                                    width: 75,
                                                    height: null,
                                                    label: {
                                                        normal: {
                                                            textStyle: {
                                                                color: '#999'
                                                            }
                                                        },
                                                        emphasis: {
                                                            textStyle: {
                                                                color: '#fff'
                                                            }
                                                        }
                                                    },
                                                    symbol: 'none',
                                                    lineStyle: {
                                                        color: '#555'
                                                    },
                                                    checkpointStyle: {
                                                        color: '#bbb',
                                                        borderColor: '#777',
                                                        borderWidth: 2
                                                    },
                                                    controlStyle: {
                                                        showNextBtn: false,
                                                        showPrevBtn: false,
                                                        normal: {
                                                            color: '#666',
                                                            borderColor: '#666'
                                                        },
                                                        emphasis: {
                                                            color: '#aaa',
                                                            borderColor: '#aaa'
                                                        }
                                                    },
                                                    data: []
                                                },
                                                backgroundColor: '#404a59',
                                                title: [{
                                                    text: data.timeline[0],
                                                    textAlign: 'center',
                                                    left: '75%',
                                                    top: '75%',
                                                    textStyle: {
                                                        fontSize: 60,
                                                        color: 'rgba(255, 255, 255, 0.7)'
                                                    }
                                                }, {
                                                    text: '各航空公司准点率演变',
                                                    left: 'center',
                                                    top: 10,
                                                    textStyle: {
                                                        color: '#aaa',
                                                        fontWeight: 'normal',
                                                        fontSize: 20
                                                    }
                                                }],
                                                tooltip: {
                                                    padding: 5,
                                                    backgroundColor: '#222',
                                                    borderColor: '#777',
                                                    borderWidth: 1,
                                                    formatter: function (obj) {
                                                        // assert(obj);
                                                        var value = obj.value;
                                                        return schema[3].text + '：' + value[3] + '<br>'
                                                            + schema[1].text + '：' + value[1] + schema[1].unit + '<br>'
                                                            + schema[0].text + '：' + value[0] + schema[0].unit + '<br>'
                                                            + schema[2].text + '：' + value[2] + schema[2].unit + '<br>';
                                                    }
                                                },
                                                grid: {
                                                    top: 100,
                                                    containLabel: true,
                                                    left: 30,
                                                    right: '110'
                                                },
                                                xAxis: {
                                                    type: 'log',
                                                    name: '平均延误时间',
                                                    max: 100,
                                                    min: 25,
                                                    nameGap: 25,
                                                    nameLocation: 'middle',
                                                    nameTextStyle: {
                                                        fontSize: 18
                                                    },
                                                    splitLine: {
                                                        show: false
                                                    },
                                                    axisLine: {
                                                        lineStyle: {
                                                            color: '#ccc'
                                                        }
                                                    },
                                                    axisLabel: {
                                                        formatter: '{value} 分钟'
                                                    }
                                                },
                                                yAxis: {
                                                    type: 'value',
                                                    name: '准点率',
                                                    max: 100,
                                                    min: 40,
                                                    nameTextStyle: {
                                                        color: '#ccc',
                                                        fontSize: 18
                                                    },
                                                    axisLine: {
                                                        lineStyle: {
                                                            color: '#ccc'
                                                        }
                                                    },
                                                    splitLine: {
                                                        show: false
                                                    },
                                                    axisLabel: {
                                                        formatter: '{value} %'
                                                    }
                                                },
                                                visualMap:[
                                                    {
                                                        show: false,
                                                        dimension: 3,
                                                        categories: [],
                                                        calculable: true,
                                                        precision: 0.1,
                                                        textGap: 30,
                                                        textStyle: {
                                                            color: '#ccc'
                                                        },
                                                        inRange: {
                                                            color: (function () {
                                                                var colors = ['#bcd3bb', '#e88f70', '#edc1a5', '#9dc5c8', '#e1e8c8', '#7b7c68', '#e5b5b5', '#f0b489', '#928ea8', '#bda29a', '#bcd3bb', '#e88f70', '#edc1a5', '#9dc5c8', '#e1e8c8', '#7b7c68', '#e5b5b5', '#f0b489', '#928ea8', '#bda29a'];
                                                                return colors.concat(colors);
                                                            })()
                                                        }
                                                    }],
                                                series: [
                                                    {
                                                        type: 'scatter',
                                                        itemStyle: itemStyle,
                                                        data: data.series[0],
                                                        symbolSize: function(val) {
                                                            return sizeFunction(val[2]);
                                                        }
                                                    }
                                                ],
                                                animationDurationUpdate: 1000,
                                                animationEasingUpdate: 'quinticInOut'
                                            },
                                            options: []
                                        };

                                        for (var n = 0; n < data.timeline.length; n++) {
                                            option.baseOption.timeline.data.push(data.timeline[n]);
                                            // option.baseOption.visualMap.categories.push(data.counties[0])
                                            option.options.push({
                                                title: {
                                                    show: true,
                                                    'text': data.timeline[n] + ''
                                                },
                                                series: {
                                                    name: data.timeline[n],
                                                    type: 'scatter',
                                                    itemStyle: itemStyle,
                                                    data: data.series[n],
                                                    symbolSize: function(val) {
                                                        return sizeFunction(val[2]);
                                                        // return 100;
                                                    }
                                                },
                                                visualMap:
                                                    {
                                                        show: false,
                                                        dimension: 3,
                                                        categories: data.company[n],
                                                        calculable: true,
                                                        precision: 0.1,
                                                        textGap: 30,
                                                        textStyle: {
                                                            color: '#ccc'
                                                        },
                                                        inRange: {
                                                            color: (function () {
                                                                var colors = ['#bcd3bb', '#e88f70', '#edc1a5', '#9dc5c8', '#e1e8c8', '#7b7c68', '#e5b5b5', '#f0b489', '#928ea8', '#bda29a'];
                                                                return colors.concat(colors);
                                                            })()
                                                        }
                                                    }
                                            });
                                        }

                                        myChart.setOption(option);
                                    });
                                </script>

                                <div id="data" class="tab-pane fade">
                                    <div class="body-nest" id="Filtering">

                                        <div class="row" style="margin-bottom:10px;">
                                            <div class="col-sm-4">
                                                <input class="form-control" id="filter" placeholder="航空公司名称或代码搜索" type="text" >
                                            </div>
                                        </div>

                                        <table id="footable-res" class="demo table-striped footable-res footable metro-blue" data-filter="#filter" data-filter-text-only="true" data-page-size="5">
                                            <thead>
                                            <tr>
                                                <th>
                                                    航空公司名称
                                                </th>
                                                <th>
                                                    航空公司代码
                                                </th>
                                                <th>
                                                    航班数
                                                </th>
                                                <th>
                                                    准点率
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody id="rateList">
                                            <tr>
                                                <td><img src="/resource/assets/ico/airlineIcon/CA.png">中国国际航空公司</td>
                                                <td>CA</td>
                                                <td>1000</td>
                                                <td>90.8%</td>
                                            </tr>
                                            <script>
                                                $.get('/resource/assets/json/ontimeData.json', function (data) {
                                                    console.log(data);
                                                    var tbody = document.getElementById("rateList");
                                                    for (var i = 0; i < data.length; i++){
                                                        var tr = document.createElement("tr");
                                                        tr.innerHTML = '<td><img src="/resource/assets/ico/airlineIcon/' + data[i]["airline_code"] + '.png">' + data[i]["airline_name"] + '</td>' +
                                                            '<td>' + data[i]["airline_code"] + '</td>' +
                                                            '<td>' + data[i]["flight_count"] + '</td>' +
                                                            '<td>' + data[i]["r_ontime"] + '</td>';
                                                        tbody.appendChild(tr);
                                                    }
                                                })
                                            </script>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                                <td colspan="4">
                                                    <div class="pagination pagination-centered"></div>
                                                </td>
                                            </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                </div>
                                <div style="height: 600px;width: 1100px;background-color:#F5FFFA" id="top10" class="tab-pane fade"></div>
                                <script>
                                    var Chart = echarts.init(document.getElementById('top10'));
                                    var labelTop = {
                                        normal : {
                                            label : {
                                                show : true,
                                                position : 'center',
                                                formatter : '{b}',
                                                textStyle: {
                                                    baseline : 'bottom'
                                                }
                                            },
                                            labelLine : {
                                                show : false
                                            }
                                        }
                                    };
                                    var labelFromatter = {
                                        normal : {
                                            label : {
                                                formatter : function (params){
                                                    return params.value + '%'
                                                },
                                                textStyle: {
                                                    baseline : 'top'
                                                }
                                            }
                                        },
                                    }
                                    var labelBottom = {
                                        normal : {
                                            color: '#ccc',
                                            label : {
                                                show : true,
                                                position : 'center'
                                            },
                                            labelLine : {
                                                show : false
                                            }
                                        },
                                        emphasis: {
                                            color: 'rgba(0,0,0,0)'
                                        }
                                    };
                                    var radius = [40, 55];
                                    option = {
                                        title : {
                                            text: '航空公司准点率 TOP10',
                                            subtext: 'By Flying Dutchman',
                                            textStyle:{
                                                fontSize:40
                                            },
                                            x: 'center'
                                        },
                                        backgroundColor: '#f5fffa',
                                        tooltip : {
                                            trigger: 'axis',
                                            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                                                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                            }
                                        },
                                        legend: {
                                            top: '20%',
                                            data: ['准点航班占比', '晚点航班占比']
                                        },
                                        grid: {
                                            left: '10%',
                                            right: '10%',
                                            bottom: '10%',
                                            top: '30%',
                                            containLabel: true
                                        },
                                        xAxis:  {
                                            type: 'value',
                                            axisLabel: {
                                                fontSize : 20,
                                                color: "#000000",
                                                fontFamily : "STFangsong"
                                            },
                                            axisTick: {
                                                show: false
                                            },
                                        },
                                        yAxis: {
                                            type: 'category',
                                            axisLabel: {
                                                fontSize: 20,
                                                color:"#000000",
                                                fontFamily: "STFangsong"
                                            },
                                            axisTick: {
                                                show: false
                                            },
                                            axisLine: {
                                                show: false
                                            },
                                            data: ['华夏航空','幸福航空','瑞丽航空','中国国际航空','山东航空',
                                                '上海吉祥航空', '春秋航空', '江西航空', '大新华航空', '重庆航空']
                                        },
                                        series: [
                                            {
                                                name: '准点航班占比',
                                                type: 'bar',
                                                stack: "总量",
                                                label: {
                                                    normal: {
                                                        show: true,
                                                        position: 'insideRight'
                                                    }
                                                },
                                                itemStyle:{
                                                },
                                                markLine:{
                                                    lineStyle:{
                                                        with:10
                                                    }
                                                },
                                                data: [89.97,90.12,90.48,90.8,90.9,91.44,91.79,92.58,95.29,96.27]
                                            },
                                            {
                                                name: '晚点航班占比',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    normal: {
                                                        show: true,
                                                        position: 'insideRight'
                                                    }
                                                },
                                                itemStyle:{

                                                },
                                                data: [10.03,9.88,9.52,9.2,9.1,8.56,8.21,7.42,4.71,3.73]
                                            }
                                        ]
                                    };
                                    Chart.setOption(option);
                                </script>
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

    <!--新引入的js文件和代码段-->
    <!-- /MAIN EFFECT -->
    <!-- GAGE -->
    <script type="text/javascript" src="/resource/assets/js/toggle_close.js"></script>
    <script src="/resource/assets/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
    <script src="/resource/assets/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
    <script src="/resource/assets/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
    <script src="/resource/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
    <script src="/resource/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>


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
    <!--新引入文件结束-->


    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="/resource/assets/js/preloader.js"></script>
    <script type="text/javascript" src="/resource/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="/resource/assets/js/app.js"></script>
    <script type="text/javascript" src="/resource/assets/js/load.js"></script>
    <script type="text/javascript" src="/resource/assets/js/main.js"></script>


</div>
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