<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/15
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn" style="height:100%;width:100%;">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"> -->
    <title>Flying Dutchman 航班大数据分析平台</title>

    <link rel="stylesheet" href="/resource/assets/css/leaflet.css">
    <link href="/resource/assets/css/transparent.css" rel="stylesheet" type="text/css">

    <style>
        /*右侧缎带*/
        #flightnumber a{
            background:#000;
            color:#fff;
            text-decoration:none;
            font-family:arial,sans-serif;
            text-align:center;
            font-weight:bold;
            padding:5px 40px;
            font-size:1rem;
            line-height:2rem;
            position:relative;
            transition:0.5s;
        }
        #flightnumber a:hover{
            background:#ffa022;
            color:#fff;
        }
        #flightnumber a::before,#flightnumber a::after{
            content:"";
            width:100%;
            display:block;
            position:absolute;
            top:1px;
            left:0;
            height:1px;
            background:#fff;
        }
        #flightnumber a::after{
            bottom:1px;
            top:auto;
        }
        @media screen and (min-width:800px){
            #flightnumber{
                position:fixed;
                display:block;
                top:0;
                right:0;
                width:200px;
                overflow:hidden;
                height:200px;z-index:9999;
            }
            #flightnumber a{
                width:200px;
                position:absolute;
                top:60px;
                right:-60px;
                transform:rotate(45deg);
                -webkit-transform:rotate(45deg);
                -ms-transform:rotate(45deg);
                -moz-transform:rotate(45deg);
                -o-transform:rotate(45deg);
                box-shadow:4px 4px 10px rgba(0,0,0,0.8);
            }
        }</style>

    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?2ad30bb2583cfacb7d56e2a6e1444d4b";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

    <link rel="Bookmark" href="/resource/assets/ico/favicon.ico">
    <link rel="Shortcut Icon" href="/resource/assets/ico/favicon.ico">
</head>
<body style="height:100%;margin:0;">
<span id="flightNumber"><a href="#"><img src="http:////pic.c-ctrip.com/flight_intl/airline_logo/32x32/MU.png"> 东方航空MU5183</a></span>
<div class="wrapper">
    <!--<p id="aName" class="hide">HFE</p>-->
    <!-- clock -->
    <div class="left-box">
        <div id="left" class="item-dsc">

        </div>
    </div>
    <div class="right-box">
        <div id="right" class="item-dsc1">

        </div>
    </div>
    <script>
//        var flightName = "东方航空MU5812";
//        var flight = {"预计起飞时间": "7:20", "实际起飞时间": "7:35", "预计到达时间": "9:50", "实际到达时间": "9:55",
//            "起飞机场": "北京首都机场", "降落机场": "上海浦东机场", "飞机机型": "波音737", "飞行时间": "2小时30分钟", "准点率": "80%", "状态": "晚点"};
        <%--var flight = JSON.parse('${requestScope.get('data')}');--%>
        <%--var leftBox = document.getElementById("left");--%>
        <%--var rightBox = document.getElementById("right");--%>
        <%--var count = 1;--%>
        <%--for (var key in flight){--%>
            <%--var div = document.createElement("div");--%>
            <%--div.className = 'item-' + count;--%>
            <%--div.innerHTML = '<span id=' + key + '>' + flight[key] + '</span>' + key;--%>
            <%--if (count < 7){--%>
                <%--leftBox.appendChild(div);--%>
            <%--}else{--%>
                <%--rightBox.appendChild(div);--%>
            <%--}--%>

            <%--count += 1;--%>
        <%--}--%>

        <%--var flightNumber = document.getElementById("flightNumber");--%>
        <%--flightNumber.innerHTML = '<a href="#"><img src="http:////pic.c-ctrip.com/flight_intl/airline_logo/32x32/MU.png">' + flight["airlineName"] + '</a>';--%>
    </script>

    <div class="map" id="map"></div>
    <script src="/resource/assets/js/main.min.js"></script>
    <script>
        var flight = JSON.parse('${requestScope.get('data')}');
        var leftBox = document.getElementById("left");
        var rightBox = document.getElementById("right");
        var count = 1;
        for (var key in flight){
            var div = document.createElement("div");
            div.className = 'item-' + count;
            div.innerHTML = '<span id=' + key + '>' + flight[key] + '</span>' + key;
            if (count < 7){
                leftBox.appendChild(div);
            }else{
                rightBox.appendChild(div);
            }

            count += 1;
        }

        var flightNumber = document.getElementById("flightNumber");
        flightNumber.innerHTML = '<a href="#"><img src="http:////pic.c-ctrip.com/flight_intl/airline_logo/32x32/MU.png">' + flight["航空公司名称"] + flight["航班号"] + '</a>';

        var map = L.map('map');
        var baseLayers = {
            "高德地图": L.tileLayer('http://webrd0{s}.is.autonavi.com/appmaptile?lang=zh_cn&size=1&scale=1&style=8&x={x}&y={y}&z={z}', {
                subdomains: "1234"
            }),
            '高德影像': L.layerGroup([L.tileLayer('http://webst0{s}.is.autonavi.com/appmaptile?style=6&x={x}&y={y}&z={z}', {
                subdomains: "1234"
            }), L.tileLayer('http://t{s}.tianditu.cn/DataServer?T=cta_w&X={x}&Y={y}&L={z}', {
                subdomains: "1234"
            })]),
            // "立体地图": L.tileLayer('https://a.tiles.mapbox.com/v3/examples.c7d2024a/{z}/{x}/{y}.png', {
            //     attribution: 'Map &copy; Pacific Rim Coordination Center (PRCC).  Certain data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
            //     key: 'BC9A493B41014CAABB98F0471D759707',
            //     styleId: 22677
            // }),
            // "Foursquare": L.tileLayer('https://a.tiles.mapbox.com/v3/foursquare.map-0y1jh28j/{z}/{x}/{y}.png', {
            //     attribution: 'Map &copy; Pacific Rim Coordination Center (PRCC).  Certain data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
            //     key: 'BC9A493B41014CAABB98F0471D759707',
            //     styleId: 22677
            // }),
            'GeoQ灰色底图': L.tileLayer('http://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineStreetPurplishBlue/MapServer/tile/{z}/{y}/{x}').addTo(map)
        };
        L.tileLayer('https://a.tiles.mapbox.com/v3/foursquare.map-0y1jh28j/{z}/{x}/{y}.png', {
            attribution: 'Map &copy; Pacific Rim Coordination Center (PRCC).  Certain data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>',
            key: 'BC9A493B41014CAABB98F0471D759707',
            styleId: 22677
        });
        var layercontrol = L.control.layers(baseLayers,{}, {
            position: "topleft"
        }).addTo(map);
        map.setView(L.latLng(37.550339, 104.114129), 4);
        var overlay = new L.echartsLayer3(map, echarts);
        var chartsContainer = overlay.getEchartsContainer();
        var myChart = overlay.initECharts(chartsContainer);
        var geoCoordMap = {
            "阿勒泰机场":[88.09238741,47.75797257],
            "阿克苏机场":[80.30091874,41.26940127],
            "鞍山机场":[123.0077633,41.11874368],
            "天柱山机场":[117.0587858,30.58957072],
            "黄果树机场":[105.8831157,26.25980457],
            "北郊机场":[112.448501,34.66394],
            "二里半机场":[110.0086252,40.57220914],
            "邦达机场":[97.11272694,30.5556888],
            "福成机场":[109.2983955,21.54417389],
            "白云机场":[113.2728721,23.19093714],
            "桃花源机场":[111.6490139,28.92699599],
            "新郑机场":[113.8526054,34.53146214],
            "龙嘉机场":[125.70324,44.000324],
            "朝阳机场":[120.4459807,41.54791241],
            "赤峰机场":[118.9241612,42.24636728],
            "王村机场":[113.1348021,36.25239048],
            "江北机场":[106.661763,29.715551],
            "黄花机场":[113.2261229,28.19897181],
            "双流机场":[103.9652352,30.58461845],
            "奔牛机场":[119.7911817,31.91768898],
            "大同机场":[113.4960539,40.06268009],
            "达州机场":[107.4949734,31.21419886],
            "浪头机场":[124.2932907,40.03955055],
            "周水子机场":[121.5501575,38.96824596],
            "永安机场":[118.797062,37.51037968],
            "萨尔图机场":[125.0218397,46.59670902],
            "伊金霍洛机场":[109.8730183,39.50591468],
            "荷花机场":[110.4585303,29.11010946],
            "二十里铺机场":[109.56378,36.644722],
            "长乐机场":[119.6801328,25.93424336],
            "西关机场":[115.7505038,32.88287934],
            "沙堤机场":[113.0770002,23.0735905],
            "富蕴机场":[89.51808102,46.81123594],
            "广元机场":[105.7111943,32.39929646],
            "六盘山机场":[106.2138582,35.68463042],
            "美兰机场":[110.4673336,19.94518993],
            "邯郸机场":[114.4392512,36.53155155],
            "黑河机场":[127.3266654,50.18595764],
            "白塔机场":[111.8277069,40.86199118],
            "骆岗机场":[116.975718,31.992553],
            "萧山机场":[120.4414091,30.24722389],
            "芷江机场":[109.7117828,27.44697551],
            "东山机场":[119.8320182,49.21954794],
            "哈密机场":[93.52937301,42.3444671],
            "太平机场":[126.2496215,45.62907772],
            "普陀山机场":[122.365915,29.93816772],
            "和田机场":[79.87657551,37.04328485],
            "路桥机场":[121.4502425,28.54865944],
            "城固机场":[107.260837,33.22358283],
            "河东机场":[106.3974888,38.331163],
            "庆阳机场":[107.6169933,35.80689332],
            "景德镇机场":[117.1910311,29.34016931],
            "嘉峪关机场":[98.34528685,39.86738768],
            "东郊机场":[130.477527,46.851637],
            "济宁机场":[116.6007976,35.40212166],
            "衢州机场":[118.9079135,28.96857152],
            "兴凯湖机场":[131.1926102,45.30867829],
            "库车机场":[83.0004802,41.72173734],
            "喀什机场":[76.0208324,39.5466715],
            "昌北机场":[115.9200004,28.86218836],
            "巫家坝机场":[102.935615,25.102871],
            "黄金机场":[114.7901984,25.85146978],
            "库尔勒机场":[86.14918499,41.62257112],
            "克拉玛依机场":[84.96390522,45.47416037],
            "龙洞堡机场":[106.8048428,26.54688851],
            "两江机场":[110.0583873,25.22101289],
            "冠豸山机场":[116.7655521,25.6853897],
            "林都机场":[129.0291689,47.75784172],
            "中川机场":[103.6246677,36.51357729],
            "三义机场":[100.2548497,26.67497842],
            "零陵机场":[111.6146477,26.43597165],
            "临沧机场":[100.0331209,23.74696368],
            "贡嘎机场":[90.9083204,29.29612062],
            "白塔埠机场":[118.8884076,34.57057391],
            "沭埠岭机场":[118.4195634,35.053453],
            "白莲机场":[109.4112136,24.20890925],
            "蓝田机场":[105.3876202,28.84767278],
            "林芝机场":[94.342806,29.312636],
            "海浪机场":[129.5850045,44.54429655],
            "南郊机场":[104.749535,31.434739],
            "梅县机场":[116.1710273,24.36478244],
            "高坪机场":[106.105554,30.80096517],
            "南苑机场":[116.4018081,39.80891025],
            "三家子机场":[123.9277537,47.24611503],
            "栎社机场":[121.4740383,29.82424505],
            "禄口机场":[118.8091687,32.04116826],
            "那拉提机场":[83.37985673,43.43812732],
            "吴圩机场":[108.1783067,22.61529456],
            "姜营机场":[112.629247,32.986964],
            "兴东机场":[120.9850381,32.07632855],
            "首都机场":[116.5992671,40.06248537],
            "浦东机场":[121.8104999,31.1553416],
            "保安营机场":[101.8023185,26.54106558],
            "和平机场":[89.30720265,29.35264267],
            "虹桥机场":[121.3555547,31.20016713],
            "桃仙机场":[123.5009056,41.64341169],
            "正定机场":[114.6989382,38.28895505],
            "潮汕机场":[116.516021,23.552813],
            "凤凰机场":[109.4183837,18.31383629],
            "宝安机场":[113.8368339,22.64648838],
            "流亭机场":[120.3938044,36.2721234],
            "塔城机场":[83.35224537,46.67794608],
            "铜仁凤凰机场":[109.3196217,27.88733395],
            "通辽机场":[122.2133481,43.56563381],
            "天水机场":[105.8752987,34.56110819],
            "交河机场":[89.109122,43.037286],
            "遥墙机场":[117.2202663,36.85781551],
            "通化机场":[125.9426501,41.73639713],
            "滨海机场":[117.368077,39.13701],
            "三女河机场":[118.0119321,39.72680091],
            "屯溪机场":[118.267355,29.736128],
            "武宿机场":[112.637907,37.76147318],
            "地窝堡机场":[87.48112787,43.90839256],
            "榆阳机场":[109.6426925,38.38640664],
            "潍坊机场":[119.1283989,36.65492176],
            "大水泊机场":[122.2465337,37.19271274],
            "乌海机场":[106.8122062,39.80051204],
            "天河机场":[114.2251467,30.78190847],
            "硕放机场":[120.634839,31.79218763],
            "长洲岛机场":[111.2629879,23.45858397],
            "五桥机场":[108.4370524,30.80042357],
            "咸阳机场":[108.7704662,34.44342046],
            "高崎机场":[118.1389623,24.54026952],
            "曹家堡机场":[102.046965,36.5309791],
            "观音机场":[117.5668994,34.05909514],
            "菜坝机场":[104.5621282,28.80008861],
            "关公机场":[111.044578,35.121655],
            "三峡机场":[111.4917618,30.55354832],
            "伊宁机场":[81.33773517,43.96327841],
            "莱山机场":[120.8626943,37.66116041],
            "南洋机场":[120.2105178,33.43432632],
            "张掖机场":[100.4598919,38.9393203],
            "昭通机场":[103.7640323,27.32968865],
            "湛江机场":[110.3708445,21.21856213],
            "中卫机场":[105.1967542,37.52112419],
            "遵义机场":[106.9312603,27.69996138],
            "长水机场":[102.5547000,25.05500000]
        };

        var BJData = [
            [{name: flight["出发机场"].replace("国际", "").replace("机场", "") + "机场",value: 95}, {name: flight["到达机场"].replace("国际", "").replace("机场", "") + "机场", value: 95}]
        ];
        console.log(BJData);
        //画个小飞机
        var planePath = 'path://M1705.06,1318.313v-89.254l-319.9-221.799l0.073-208.063c0.521-84.662-26.629-121.796-63.961-121.491c-37.332-0.305-64.482,36.829-63.961,121.491l0.073,208.063l-319.9,221.799v89.254l330.343-157.288l12.238,241.308l-134.449,92.931l0.531,42.034l175.125-42.917l175.125,42.917l0.531-42.034l-134.449-92.931l12.238-241.308L1705.06,1318.313z';

        var convertData = function (data) {
            var res = [];
            for (var i = 0; i < data.length; i++) {
                var dataItem = data[i];
                var fromCoord = geoCoordMap[dataItem[0].name];
                var toCoord = geoCoordMap[dataItem[1].name];
                if (fromCoord && toCoord) {
                    res.push([{
                        coord: fromCoord
                    }, {
                        coord: toCoord
                    }]);
                }
            }
            return res;
        };

        var series = [];
        [['北京', BJData]].forEach(function (item) {
            series.push({
                    name: item[0],
                    type: 'lines',
                    zlevel: 1,
                    effect: {
                        show: true,
                        period: 6,
                        trailLength: 0.7,
                        color: '#fff',
                        symbolSize: 3
                    },//航迹云
                    lineStyle: {
                        normal: {
                            color: '#ffa022',
                            width: 0,//航线颜色透明度
                            curveness: 0.2
                        }
                    },
                    data: convertData(item[1])
                },
                {
                    name: item[0],
                    type: 'lines',
                    zlevel: 2,
                    effect: {
                        show: true,
                        period: 6,
                        trailLength: 0,
                        symbol: planePath,
                        symbolSize: 15
                    },//小飞机
                    lineStyle: {
                        normal: {
                            color: '#ffa022',
                            width: 1,//航线宽度
                            opacity: 0.4,
                            curveness: 0.2
                        }
                    },//航线
                    data: convertData(item[1])
                },
                {
                    name: '到达地' ,
                    type: 'effectScatter',
                    coordinateSystem: 'geo',
                    zlevel: 2,
                    rippleEffect: {
                        brushType: 'stroke'
                    },
                    label: {
                        normal: {
                            show: true,
                            position: 'right',
                            formatter: '{b}'
                        }
                    },//目的地文本标签
                    symbolSize: function (val) {
                        return val[2] / 8;
                    },

                    itemStyle: {
                        normal: {
                            color: '#ffa022'
                        }
                    },//目的地点颜色
                    data: item[1].map(function (dataItem) {
                        return {
                            name: dataItem[1].name,
                            value: geoCoordMap[dataItem[1].name].concat([dataItem[1].value])
                        };
                    })
                },
                {
                    name: '出发地',
                    type: 'effectScatter',
                    coordinateSystem: 'geo',
                    zlevel: 2,
                    rippleEffect: {
                        brushType: 'stroke'
                    },
                    label: {
                        normal: {
                            show: true,
                            position: 'right',
                            formatter: '{b}'
                        }
                    },//目的地文本标签
                    itemStyle: {
                        normal: {
                            color: '#ffa022'
                        }
                    },//目的地点颜色
                    data: item[1].map(function (dataItem) {
                        return {
                            name: dataItem[0].name,
                            value: geoCoordMap[dataItem[0].name].concat([dataItem[0].value])
                        };
                    })
                });
        });

        option = {
//        backgroundColor: '#404a59',
            title: {
                text: '航班详情',
                subtext: 'By Flying Dutchman',
                left: 'center',
                textStyle: {
                    color: '#fff'
                }
            },
            tooltip: {
                trigger: 'item'
            },
            geo: {
                map: '',
                label: {
                    emphasis: {
                        show: false
                    }
                },
                roam: true,
                itemStyle: {
                    normal: {
                        areaColor: '#323c48',
                        borderColor: '#404a59'
                    },
                    emphasis: {
                        areaColor: '#2a333d'
                    }
                }
            },
            series: series
        };
        // 使用刚指定的配置项和数据显示图表。
        overlay.setOption(option);
    </script>
</div>
<!--<script src="/dist/js/home/lib/jquery-3.2.1.min.js?030714"></script>-->
<!--<script src="/dist/js/home/common.js?030714"></script>-->
<script>var baseUrl='';</script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://echarts.baidu.com/examples/vendors/echarts/echarts.min.js?_v_=1526486305040"></script>
<script src="http://gallery.echartsjs.com/dep/echarts/latest/extension/bmap.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=7iSvKnjMoGScneoQsT2CH3clrZMsTRMN"></script>
<script type="text/javascript" src="http://map.variflight.com/dist/js/home/static_data/airportGPS.js"></script>
<!--<script src="/dist/js/home/lib/myDigitclock.js?030714"></script>-->
<!--<script src="/dist/js/home/layout/show_airport.js?030714"></script>-->

</body>
</html>
