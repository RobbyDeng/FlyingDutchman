<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%--<!doctype html>--%>
<html lang="en">
<head>

    <!-- Page title -->
    <title>Flying Dutchman航班大数据分析平台</title>
    <!-- /Page title -->

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- /Meta -->

    <!-- SEO Meta -->
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <!-- /SEO Meta -->

    <!-- OpenGraph meta -->
    <meta property="og:image" content="icon-180x180.png">
    <meta property="og:title" content="">
    <meta property="og:description" content="">
    <!-- /OpenGraph meta -->

    <!-- Favicon -->
    <link rel="shortcut icon" href="/resource/assets/img/favicon.ico">
    <!-- /Favicon -->

    <script type="text/javascript" src="/resource/assets/echarts/echarts.js"></script>
    <script type="text/javascript" src="/resource/assets/echarts/map/china.js"></script>
    <script src="/resource/assets/js/index/macarons.js"></script>
    <script type="text/javascript" src="/resource/assets/js/index/jquery.js"></script>

    <!-- Styles -->
    <link rel="stylesheet" href="/resource/assets/components/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resource/assets/components/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/resource/assets/components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resource/assets/components/elegant-font/style.css">
    <link rel="stylesheet" href="/resource/assets/components/owl-carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="/resource/assets/components/owl-carousel/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resource/assets/components/sweetalert/sweetalert.css">
    <link rel="stylesheet" href="/resource/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="/resource/assets/css/theme.css" title="theme-default">
    <!-- /Styles -->

    <!-- TODO: select one of the presented -->
    <!-- Predefined Schemes -->
    <link rel="alternate stylesheet" href="/resource/assets/css/theme-dulllavender-light.css" title="theme-dulllavender-light">
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-dulllavender.css"       title="theme-dulllavender">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-dulllavender-dark.css"  title="theme-dulllavender-dark">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-nepal-light.css"        title="theme-nepal-light">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-nepal.css"              title="theme-nepal">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-nepal-dark.css"         title="theme-nepal-dark">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-tradewind-light.css"    title="theme-tradewind-light">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-tradewind.css"          title="theme-tradewind">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-tradewind-dark.css"     title="theme-tradewind-dark">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-tanhide-light.css"      title="theme-tanhide-light">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-tanhide.css"            title="theme-tanhide">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-tanhide-dark.css"       title="theme-tanhide-dark">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-burntsienna-light.css"  title="theme-burntsienna-light">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-burntsienna.css"        title="theme-burntsienna">-->
    <!--<link rel="alternate stylesheet" href="/resource/assets/css/theme-burntsienna-dark.css"   title="theme-burntsienna-dark">-->
    <!-- /Predefined Schemes -->

</head>
<body>

<!-- PRELOADER -->
<div id="preloader" class="preloader">
    <div class="loader">加载中> - <</div>
</div>
<!-- /PRELOADER -->

<!-- MAIN CONTAINER -->
<main class="main-container">

    <!-- SECTION > HERO: Home -->
    <section id="home" class="section hero">

        <!-- CAROUSEL -->
        <div class="owl-carousel owl-theme owl-navigation owl-autoplay owl-no-mousedrag owl-reveal"
             data-owl-autoplay-timeout="6500"
             data-owl-items="1"
             data-owl-animate-in="heroCarouselIn"
             data-owl-animate-out="heroCarouselOut">

            <!-- CAROUSEL SLIDE -->
            <div class="slide fullscreen bg-cover mask mask-black"
                 style="background-image: url(/resource/assets/images/default/bg-carousel-01.jpg)">

                <!-- Vertical Middle Block -->
                <div class="vertical-middle mask-after">
                    <div class="container">

                        <!-- Hero Heading -->
                        <div class="row hero-heading">
                            <div class="col-xs-12 text-center">

                                <div class="hero-title text-white reveal"
                                     data-reveal-distance="-30px"
                                     data-reveal-duration="500"
                                     data-reveal-reset="1">

                                    Flying Dutchman航班大数据分析平台

                                </div>

                                <div class="hero-subtitle text-white reveal"
                                     data-reveal-distance="30px"
                                     data-reveal-duration="800"
                                     data-reveal-delay="150"
                                     data-reveal-reset="1">

                                    海量数据 你想要的我们都有

                                </div>

                            </div>
                        </div>
                        <!-- /Hero Heading -->

                        <!-- Hero Buttons -->
                        <div class="row reveal"
                             data-reveal-duration="800"
                             data-reveal-delay="350"
                             data-reveal-reset="1">

                            <div class="col-xs-6 text-right">
                                <a href="#features" class="btn btn-lg btn-squared btn-white btn-o text-uppercase smooth-scroll">查看更多</a>
                            </div>
                            <div class="col-xs-6">
                                <a href="#" class="btn btn-lg btn-squared btn-base text-uppercase" onclick="toLogin()">登录注册</a>
                            </div>

                        </div>
                        <!-- /Hero Buttons -->

                    </div>
                </div>
                <!-- /Vertical Middle Block -->

            </div>
            <!-- /CAROUSEL SLIDE -->

            <!-- CAROUSEL SLIDE -->
            <div class="slide fullscreen bg-cover mask mask-black"
                 style="background-image: url(/resource/assets/images/default/bg-carousel-02.JPG)">

                <!-- Vertical Middle Block -->
                <div class="vertical-middle mask-after">
                    <div class="container">

                        <!-- Hero Heading -->
                        <div class="row hero-heading">
                            <div class="col-xs-12 text-center">

                                <div class="hero-title text-white reveal"
                                     data-reveal-origin="left"
                                     data-reveal-distance="-30px"
                                     data-reveal-duration="500"
                                     data-reveal-reset="1">

                                    强大的航班动态查询 精准的航空数据统计

                                </div>

                                <div class="hero-subtitle text-white reveal"
                                     data-reveal-origin="right"
                                     data-reveal-distance="30px"
                                     data-reveal-duration="800"
                                     data-reveal-delay="150"
                                     data-reveal-reset="1">

                                    至臻品质 只为服务更好的你

                                </div>

                            </div>
                        </div>
                        <!-- /Hero Heading -->

                        <!-- Hero Buttons -->
                        <div class="row reveal"
                             data-reveal-duration="800"
                             data-reveal-delay="350"
                             data-reveal-reset="1">

                            <div class="col-xs-6 text-right">
                                <a href="#features" class="btn btn-lg btn-squared btn-white btn-o text-uppercase smooth-scroll">查看更多</a>
                            </div>
                            <div class="col-xs-6">
                                <a href="#" onclick="toLogin()" class="btn btn-lg btn-squared btn-base text-uppercase">登录注册</a>
                            </div>

                        </div>
                        <!-- /Hero Buttons -->

                    </div>
                </div>
                <!-- /Vertical Middle Block -->

            </div>
            <!-- /CAROUSEL SLIDE -->

            <!-- CAROUSEL SLIDE -->
            <div class="slide fullscreen bg-cover mask mask-black"
                 style="background-image: url(/resource/assets/images/default/bg-carousel-03.JPG)">

                <!-- Vertical Middle Block -->
                <div class="vertical-middle mask-after">
                    <div class="container">

                        <!-- Hero Heading -->
                        <div class="row hero-heading">
                            <div class="col-xs-12 text-center">

                                <div class="hero-title text-white reveal"
                                     data-reveal-scale="1.5"
                                     data-reveal-duration="500"
                                     data-reveal-reset="1">
                                    与君初相识，犹如故人归


                                </div>

                                <div class="hero-subtitle text-white reveal"
                                     data-reveal-distance="30px"
                                     data-reveal-duration="800"
                                     data-reveal-delay="150"
                                     data-reveal-reset="1">

                                    心动 不如行动

                                </div>

                            </div>
                        </div>
                        <!-- /Hero Heading -->

                        <!-- Hero Buttons -->
                        <div class="row reveal"
                             data-reveal-duration="800"
                             data-reveal-delay="350"
                             data-reveal-reset="1">

                            <div class="col-xs-6 text-right">
                                <a href="#features" class="btn btn-lg btn-squared btn-white btn-o text-uppercase smooth-scroll">查看更多</a>
                            </div>
                            <div class="col-xs-6">
                                <a href="#" onclick="toLogin()" class="btn btn-lg btn-squared btn-base text-uppercase">登录注册</a>
                            </div>

                        </div>
                        <!-- /Hero Buttons -->

                    </div>
                </div>
                <!-- /Vertical Middle Block -->

            </div>
            <!-- /CAROUSEL SLIDE -->

        </div>
        <!-- /CAROUSEL -->

    </section>
    <!-- /SECTION > HERO: Home -->

    <!-- SECTION: Features -->
    <section id="features" class="section">
        <div class="container">

            <!-- Section Content -->
            <div class="row">

                <!-- ICON BOX: Clean Design -->
                <div class="col-xs-12 col-sm-4 icon-box reveal"
                     data-reveal-duration="600">

                    <span class="icon icon_search"></span>
                    <div class="title text-dark">航班动态查询</div>
                    <div class="description">
                        提供航班查询、航线查询、票价查询、机场天气查询等多种查询方式，问你想问，知你所想。
                    </div>

                </div>
                <!-- /ICON BOX: Clean Design -->

                <!-- ICON BOX: Mobile Friendly -->
                <div class="col-xs-12 col-sm-4 icon-box reveal"
                     data-reveal-duration="600"
                     data-reveal-delay="250">

                    <span class="icon icon_datareport"></span>
                    <div class="title text-dark">国内航空统计</div>
                    <div class="description">
                        囊括机场位置分布、各省机场统计、航空航班分析、飞机机型统计，全面分析，行你所行。
                    </div>

                </div>
                <!-- /ICON BOX: Mobile Friendly -->

                <!-- ICON BOX: Well Documented -->
                <div class="col-xs-12 col-sm-4 icon-box reveal"
                     data-reveal-duration="600">

                    <span class="icon icon_floppy"></span>
                    <div class="title text-dark">海量数据存储</div>
                    <div class="description">
                        handoop分布式文件系统，具有高吞吐量、高容错性、高兼容性，包罗万象，行者无疆。
                    </div>

                </div>
                <!-- /ICON BOX: Well Documented -->

            </div>
            <!-- /Section Content -->

        </div>
    </section>
    <!-- /SECTION: Features -->

    <!-- SECTION: Numbers -->
    <section id="numbers" class="section bg-center-top parallax mask mask-black text-white"
             style="background-image: url(/resource/assets/images/default/bg-stat.JPG);" data-stellar-background-ratio="0.4">
        <div class="container mask-after">

            <!-- Section Content -->
            <div class="row">

                <!-- STAT NUMBER: Finished Projects-->
                <div class="col-sm-3 col-xs-6">
                    <div class="stat-number">
                        <div class="number animate-number" data-value="5378">0</div>
                        <div class="title-separator title-separator-white"></div>
                        <div class="title">累计统计航线数</div>
                    </div>
                </div>
                <!-- /STAT NUMBER: Finished Projects-->

                <!-- STAT NUMBER: Happy Customers-->
                <div class="col-sm-3 col-xs-6">
                    <div class="stat-number">
                        <div class="number animate-number" data-value="15349">0</div>
                        <div class="title-separator title-separator-white"></div>
                        <div class="title">累计统计航班数</div>
                    </div>
                </div>
                <!-- /STAT NUMBER: Happy Customers-->

                <!-- STAT NUMBER: Coffee Cups-->
                <div class="col-sm-3 col-xs-6">
                    <div class="stat-number">
                        <div class="number animate-number" data-value="41">0</div>
                        <div class="title-separator title-separator-white"></div>
                        <div class="title">统计航空公司数</div>
                    </div>
                </div>
                <!-- /STAT NUMBER: Coffee Cups-->

                <!-- STAT NUMBER: Days at Work-->
                <div class="col-sm-3 col-xs-6">
                    <div class="stat-number">
                        <div class="number animate-number" data-value="136">0</div>
                        <div class="title-separator title-separator-white"></div>
                        <div class="title">统计国内机场数</div>
                    </div>
                </div>
                <!-- /STAT NUMBER: Days at Work-->

            </div>
            <!-- /Section Content -->

        </div>
    </section>
    <!-- /SECTION: Numbers -->

    <!-- SECTION: Best Features Carousel -->
    <section id="best-features" class="section">
        <div class="container">

            <!-- Section Header -->
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-8 col-md-offset-2">
                    <header class="section-header text-center">
                        <div class="section-title text-uppercase">为什么选择Flying Dutchman航班大数据平台</div>
                        <div class="title-separator"></div>
                        <div class="section-subtitle">
                            Flying Dutchman航班大数据分析平台以携程、途牛等知名在线票务平台和variflight航班数据服务平台为数据源，
                            采用Hadoop分布式系统架构对大数据进行高效管理，为用户提供准确、权威的国内航班、航线、机场信息等相关数据。
                            该平台兼查询与统计功能为一体，数据全面、更新及时，同时整个平台界面简洁、功能易用，给用户带来友好的访问体验。
                        </div>
                    </header>
                </div>
            </div>
            <!-- /Section Header -->

            <!-- Section Content -->
            <div class="row section-content">
                <div class="col-xs-12">
                    <!-- Carousel -->
                    <div class="owl-carousel owl-theme owl-navigation reveal" data-reveal-opacity=".7" data-reveal-scale="1.0">
                        <!-- Carousel Item -->
                        <div class="item">

                            <div class="row">

                                <!-- Slide Image -->
                                <div class="col-xs-12 col-sm-9">
                                    <div class="image xs-mb">
                                        <div id="chart" style="width: 850px;height: 550px;"></div>
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
                                    </div>
                                </div>
                                <!-- /Slide Image -->

                                <!-- Slide Content -->
                                <div class="col-xs-12 col-sm-3">

                                    <div class="h3 text-dark">航空航班统计</div>

                                    <p>
                                        动态的可视化图表提升数据维度，使平面化的数据更加立体的展示在您的面前。
                                    </p>

                                    <ul class="list-unstyled mb">
                                        <li><i class="icon icon-inline fa fa-check"></i> 动态展示各航空公司的准点率随时间的变化关系</li>
                                        <li><i class="icon icon-inline fa fa-check"></i> 气泡大小代表航空公司运量的多少</li>
                                        <li><i class="icon icon-inline fa fa-check"></i> 可以暂停显示详情，也可以动态查看演化关系</li>
                                    </ul>

                                    <div class="alert alert-info" role="alert">
                                        <i class="icon icon-inline icon-inline-block icon-1p5x fa fa-info-circle text-info"></i>
                                        <span class="strong">提示:</span>
                                        更多功能请登录注册后使用。
                                    </div>
                                </div>
                                <!-- /Slide Content -->

                            </div>

                        </div>
                        <!-- /Carousel Item -->

                        <!-- Carousel Item -->
                        <div class="item">
                            <div class="row">
                                <!-- Slide Image -->
                                <div class="col-xs-12 col-sm-8">
                                    <div class="image xs-mb">
                                        <div id="main" style="height: 550px;width: 750px"></div>
                                        <script type="text/javascript">
                                            $.getJSON('/resource/assets/json/airportStatistics.json',function(area){
                                                var data = [];
//            var airport = [];
                                                for (var key in area){
//                console.log(key);
//                console.log(area[key]);
                                                    data.push({name: key, value: area[key].length})
                                                }
                                                console.log(data);

                                                option = {
                                                    title : {
                                                        text: '各省机场统计图',
                                                        subtext: 'from FlyingDutchman',
                                                        // sublink : 'http://esa.un.org/wpp/Excel-Data/population.htm',
                                                        left: 'center',
                                                        top: 'top',
                                                        color:'#0f0f0f'
                                                    },
                                                    tooltip : {
                                                        trigger: 'item',
                                                        formatter : function (params) {
                                                            var city = params['data']['name'];
                                                            return city + '<br/>拥有' + area[city].length + '个机场';
                                                        }
                                                    },
                                                    toolbox: {
                                                        show : true,
                                                        orient : 'vertical',
                                                        left: 'right',
                                                        top: 'center',
                                                    },
                                                    visualMap: {
                                                        type: 'continuous',
                                                        min: 0,
                                                        max: 20,
                                                        text:['高','低'],
                                                        realtime: false,
                                                    },
                                                    series : [
                                                        {
                                                            name: '全国各省机场统计',
                                                            type: 'map',
                                                            mapType: 'china',
                                                            roam: true,
                                                            itemStyle:{
                                                                emphasis:{label:{show:true}}
                                                            },
                                                            data: data
                                                        }
                                                    ]
                                                };

                                                var Chart = echarts.init(document.getElementById('main'), 'macarons');
                                                Chart.setOption(option);
                                            });
                                        </script>
                                    </div>
                                </div>
                                <!-- /Slide Image -->

                                <!-- Slide Content -->
                                <div class="col-xs-12 col-sm-4">

                                    <div class="h3">各省机场统计</div>

                                    <p>
                                        灵活的数据可视化图表为您更加清晰地展示国内各省机场分布情况。
                                        <br>丰富多样的图表是我们诚意的体现。
                                    </p>

                                    <ul class="list-unstyled mb">
                                        <li><i class="icon icon-inline fa fa-check"></i> 数据视图和表格视图可以进行切换</li>
                                        <li><i class="icon icon-inline fa fa-check"></i> 鼠标拖动可以放大缩小地图</li>
                                    </ul>

                                    <div class="alert alert-info" role="alert">
                                        <i class="icon icon-inline icon-inline-block icon-1p5x fa fa-info-circle text-info"></i>
                                        <span class="strong">提示:</span>
                                        更多功能请登录注册后使用。
                                    </div>

                                </div>
                                <!-- /Slide Content -->

                            </div>

                        </div>
                        <!-- /Carousel Item -->

                        <!-- Carousel Item -->
                        <div class="item">

                            <div class="row">

                                <!-- Slide Image -->
                                <div class="col-xs-12 col-sm-9">
                                    <div class="image xs-mb">
                                        <div id="plane" style="height:550px;width: 850px; background-color:#ffffff"></div>
                                        <script type="text/javascript">
                                            $.getJSON('/resource/assets/json/generic_Statistics.json', function (area) {
                                                console.log(area);
                                                let data = {};
                                                data['legendData'] = [];
                                                data['seriesData'] = [];
                                                data['selected'] = {};

                                                for (let key in area) {
                                                    data['seriesData'].push({name: key, value: area[key]});
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

                                                let myChart3 = echarts.init(document.getElementById('plane'));
                                                myChart3.setOption(option);
                                            });
                                        </script>
                                    </div>
                                </div>
                                <!-- /Slide Image -->

                                <!-- Slide Content -->
                                <div class="col-xs-12 col-sm-3">

                                    <div class="h3 text-dark">飞机机型统计</div>

                                    <p>
                                        将近期的飞机机型以饼状图的形式进行展示，显示不同机型的架数以及所占比例，初始时只显示数量排名前十的飞机型号。
                                    </p>

                                    <ul class="list-unstyled mb">
                                        <li><i class="icon icon-inline fa fa-star"></i> 飞机型号列表可以翻页</li>
                                        <li><i class="icon icon-inline fa fa-check"></i> 可以选择不同的飞机型号在饼状图中进行展示</li>
                                    </ul>

                                    <div class="alert alert-info" role="alert">
                                        <i class="icon icon-inline icon-inline-block icon-1p5x fa fa-info-circle text-info"></i>
                                        <span class="strong">提示:</span>
                                        更多功能请登录注册后使用。
                                    </div>
                                </div>
                                <!-- /Slide Content -->

                            </div>

                        </div>
                        <!-- /Carousel Item -->

                    </div>
                    <!-- /Carousel -->

                </div>
            </div>
            <!-- /Section Content -->

        </div>
    </section>
    <!-- /SECTION: Best Features Carousel -->


    <!-- SECTION: Why Us -->
    <section id="why-us" class="section bg-center-top bg-fixed mask mask-black text-white"
             style="background-image: url(/resource/assets/images/default/bg-why-us.jpg)">
        <div class="container mask-after">
            <div class="row">

                <!-- Clean Design -->
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <!-- ICON BOX SQUARED: Clean Design -->
                    <div class="icon-box-squared reveal">

                        <i class="icon fa fa-desktop"></i>
                        <div class="title">简洁的界面外观</div>
                        <div class="text">
                            扁平的界面设计，流畅的使用体验<br>多种皮肤供您选择
                        </div>
                    </div>
                    <!-- /ICON BOX SQUARED: Clean Design -->

                </div>
                <!-- /Clean Design -->

                <!-- Ultra Responsive -->
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <!-- ICON BOX SQUARED: Ultra Responsive -->
                    <div class="icon-box-squared reveal"
                         data-reveal-delay="300">

                        <i class="icon fa fa-database"></i>
                        <div class="title">丰富的数据信息</div>
                        <div class="text">
                            可选择的数据源，定时的数据获取<br>为您带来无忧保障
                        </div>
                    </div>
                    <!-- /ICON BOX SQUARED: Ultra Responsive -->

                </div>
                <!-- /Ultra Responsive -->

                <!-- 8k+ Lines of Code -->
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <!-- ICON BOX SQUARED: 8k+ Lines of Code -->
                    <div class="icon-box-squared reveal"
                         data-reveal-delay="450">

                        <i class="icon fa fa-search"></i>
                        <div class="title">易用的查询方法</div>
                        <div class="text">
                            起降地航班双索引，数据图表可视化<br>
                            高效便捷查你所需
                        </div>
                    </div>
                    <!-- /ICON BOX SQUARED: 8k+ Lines of Code -->

                </div>
                <!-- /8k+ Lines of Code -->

                <!-- Ultra Responsive -->
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <!-- ICON BOX SQUARED: Ultra Responsive -->
                    <div class="icon-box-squared reveal"
                         data-reveal-delay="600">

                        <i class="icon fa fa-gears"></i>
                        <div class="title">动态的配置管理</div>
                        <div class="text">
                            可配置数据管理，动态化权限生成
                            <br>智能优化平台服务
                        </div>
                    </div>
                    <!-- /ICON BOX SQUARED: Ultra Responsive -->

                </div>
                <!-- /Ultra Responsive -->

            </div>
        </div>
    </section>
    <!-- /SECTION: Why Us -->

    <!-- SECTION: Partners -->
    <section id="partners" class="section">
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-xs-12 col-sm-4 col-md-3">

                    <header class="section-header">
                        <div class="section-title text-uppercase">我们的合作者<i class="fa fa-heart-o text-danger"></i></div>
                        <!--<div class="title-separator title-separator-left"></div>-->
                        <!--<div class="section-subtitle">-->
                        <!--我们平台与携程网、途牛网、高德地图、和风天气等网站精诚合作，只为给您带来更好的服务体验。-->
                        <!--</div>-->
                    </header>

                </div>
                <!-- /Section Header -->

                <!-- Section Content -->
                <!--<div class="col-xs-12 col-sm-8 col-md-9">-->
                <div class="row pt-2x">

                    <!-- /Partner 1 -->

                    <!-- Partner 1 -->
                    <div class="col-xs-12 col-sm-3">

                        <!-- PARTNER LOGO: Partner 1 -->
                        <div class="partner-logo reveal">
                            <img src="/resource/assets/images/partners/ctrip.png" alt="">
                        </div>
                        <!-- /PARTNER LOGO: Partner 1 -->

                    </div>
                    <!-- /Partner 1 -->

                    <!-- Partner 1 -->
                    <div class="col-xs-12 col-sm-3">

                        <!-- PARTNER LOGO: Partner 1 -->
                        <div class="partner-logo reveal">
                            <img src="/resource/assets/images/partners/tuniu.png" alt="">
                        </div>
                        <!-- /PARTNER LOGO: Partner 1 -->

                    </div>
                    <!-- /Partner 1 -->

                    <!-- Partner 1 -->
                    <div class="col-xs-12 col-sm-3">

                        <!-- PARTNER LOGO: Partner 1 -->
                        <div class="partner-logo reveal">
                            <img src="/resource/assets/images/partners/amap.png" alt="">
                        </div>
                        <!-- /PARTNER LOGO: Partner 1 -->

                    </div>
                    <!-- /Partner 1 -->


                    <!-- Partner 1 -->
                    <div class="col-xs-12 col-sm-3">

                        <!-- PARTNER LOGO: Partner 1 -->
                        <div class="partner-logo reveal">
                            <img src="/resource/assets/images/partners/hefeng.png" alt="">
                        </div>
                        <!-- /PARTNER LOGO: Partner 1 -->

                    </div>
                    <!-- /Partner 1 -->

                </div>
                <!--</div>-->
                <!-- /Section Content -->



            </div>
        </div>
    </section>
    <!-- /SECTION: Partners -->

    <!-- SECTION: Contact -->
    <section id="contact" class="section bg-center-top mask mask-black text-white"
             style="background-image: url(/resource/assets/images/default/bg-contact.jpg)" data-stellar-background-ratio="0.4">
        <div class="container mask-after">

            <!-- Section Header -->
            <div class="row">
                <div class="col-xs-12 text-center">
                    <header class="section-header">
                        <div class="section-title text-uppercase text-white">联系我们</div>
                    </header>
                </div>
            </div>
            <!-- /Section Header -->

            <!-- Section Content -->
            <div class="row section-content">

                <!-- Office Information Column -->
                <div class="col-xs-12 col-sm-6 col-md-5">

                    <div class="h4 strong text-uppercase text-white">制作人员</div>

                    <!-- ADDRESS -->
                    <address>
                        <strong class="text-uppercase">魏建安</strong><br>
                        <strong class="text-uppercase">花语</strong><br>
                        <strong class="text-uppercase">王书为</strong><br>
                        <strong class="text-uppercase">张冕</strong><br>
                        <strong class="text-uppercase">邓怡然</strong><br>
                    </address>
                    <!-- /ADDRESS -->

                    <!-- Social Media -->
                    <p class="strong text-uppercase">关注我们的社交平台</p>
                    <ul class="inline-icons mb">
                        <li><a href="#"><i class="icon-theme icon-o icon-brand-facebook fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-theme icon-o icon-brand-twitter fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="icon-theme icon-o icon-brand-linkedin fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="icon-theme icon-o icon-brand-instagram fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="icon-theme icon-o icon-brand-googleplus fa fa-google-plus"></i></a></li>
                    </ul>
                    <!-- /Social Media -->


                </div>
                <!-- /Office Information Column -->

                <!-- Contact Form Column -->
                <div class="col-xs-12 col-sm-6 col-md-7 reveal"
                     data-reveal-scale=".97"
                     data-reveal-duration="500">

                    <!-- FORM: Contact Us -->
                    <form action="https://formspree.io/dengyiran2008@126.com" method="post">
                        <input type="hidden" name="pfvt[form]" value="Agency Landing">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="text" name="name" class="form-control input-lg form-control-o" placeholder="您的名字... *" required>
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" name="email" class="form-control input-lg form-control-o" placeholder="邮箱地址... *" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <textarea name="message" class="form-control input-lg form-control-o vertical-resize-only" placeholder="邮件详情... " style="min-height: 200px;"></textarea>
                            </div>
                        </div>
                        <div class="row text-center">
                            <button type="submit" class="btn btn-lg btn-squared btn-white btn-o" data-loading-text="<i class='fa fa-spinner fa-spin'></i> Please wait">发送邮件</button>
                        </div>
                    </form>
                    <!-- /FORM: Contact Us -->

                </div>
                <!-- /Contact Form Column -->

            </div>
            <!-- /Section Content -->

        </div>
    </section>
    <!-- /SECTION: Contact -->

</main>
<!-- /MAIN CONTAINER -->

<!-- SCRIPTS -->
<script src="/resource/assets/js/index/jquery-2.2.0.min.js"></script>
<script src="/resource/assets/components/bootstrap/js/bootstrap.min.js"></script>
<script src="/resource/assets/components/owl-carousel/owl.carousel.min.js"></script>
<script src="/resource/assets/components/sweetalert/sweetalert.min.js"></script>
<script src="/resource/assets/js/index/jquery.magnific-popup.min.js"></script>
<script src="/resource/assets/js/index/jquery.stellar.min.js"></script>
<script src="/resource/assets/js/index/jquery.appear.js"></script>
<script src="/resource/assets/js/index/jquery.animateNumber.min.js"></script>
<script src="/resource/assets/js/index/circle-progress.min.js"></script>
<script src="/resource/assets/js/index/jquery.validate.min.js"></script>
<script src="/resource/assets/js/index/masonry.pkgd.min.js"></script>
<script src="/resource/assets/js/index/scrollreveal.js"></script>
<script src="/resource/assets/js/index/general.js"></script>
<!-- /SCRIPTS -->


</body>
<script type="text/javascript">
    function toLogin() {
        var form = document.createElement("form");
        form.method = "post";
        form.action = "/basicFunction/toLogin";
        $(form).appendTo("body").submit();
    }
//    window.onload = init();
</script>
</html>


