<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/11
  Time: 16:36
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

    <!--以下为新的引用-->
    <link href="/resource/assets/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="/resource/assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
    <link rel="stylesheet" href="/resource/assets/js/dataTable/css/datatables.responsive.css">
    <link rel="stylesheet" type="text/css" href="/resource/assets/js/tag/jquery.tagsinput.css">

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
                        <img alt="" class="admin-pic img-circle" src="/resource/assets/img/info/patrick.jpg">你好，<span id="welcome">二狗</span><b class="caret"></b>
                    </a>
                    <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                        <li>
                            <a href="data_info_edit.html">
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
                    <!-- BLANK PAGE-->

                    <div class="nest" id="Blank_PageClose">
                        <div class="title-alt">
                            <h6>
                                数据源管理</h6>
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

                        <!--修改部分从这里开始^_^ 需要尾部引用data_origin.js-->

                        <div class="body-nest" id="Blank_Page_Content">
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-lg-2">
                                        <label class="form-label">数据源名称</label>
                                    </div>
                                    <div class="col-lg-3">
                                        <input id="id" style="display: none">
                                        <input id="name" type="text" class="form-control">
                                    </div>
                                </div>
                                <br>
                                <br>
                                <div class="form-group">
                                    <div class="col-lg-2">
                                        <label class="form-label">数据类型</label>
                                    </div>
                                    <div class="col-lg-4">
                                        <select id="type" class="col-lg-8">
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <div id="dataTypeField">

                                </div>

                                <div class="form-group">
                                    <label class="col-lg-2 control-label">可选字段</label>
                                    <div class="col-lg-10" id="tagInput">
                                        <div>
                                            <input id="tags_1" type="text" class="form-control tags" value="可选字段(如：起飞机场)">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-4">
                                        <button id="addOrChange" onclick="addDataSource()" type="button" class="btn btn-success" style="margin-left:10px;">
                                            <span class="entypo-plus"></span>&nbsp;&nbsp;增加</button>
                                    </div>
                                    <div class="col-lg-4">
                                        <button onclick="cancel()" type="button" class="btn btn-success">
                                            <span class="icon-clockwise"></span>&nbsp;&nbsp;重置
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="body-nest" id="Filtering">

                                <div class="row" style="margin-bottom:10px;">
                                    <div class="col-sm-4">
                                        <input class="form-control" id="filter" placeholder="数据源名称搜索" type="text">
                                    </div>
                                    <div class="col-sm-8">
                                        <input type="button" style="margin-left:20px;" class="pull-right btn btn-success" value="批量删除" onclick="deleteRowBatch()">
                                    </div>
                                </div>

                                <table id="footable-res2" class="demo footable metro-blue footable-res" data-page-size="8" data-filter="#filter" data-filter-text-only="true">
                                    <thead>
                                    <tr>
                                        <th>
                                            选择
                                        </th>
                                        <th>
                                            数据源名称
                                        </th>
                                        <th>
                                            数据源类型
                                        </th>
                                        <th>
                                            可选字段
                                        </th>
                                        <th>
                                            操作
                                        </th>

                                    </tr>
                                    </thead>
                                    <tbody id="dataSourceList">
                                    <%--<tr>--%>
                                        <%--<td><input type="checkbox"></td>--%>
                                        <%--<td>携程网</td>--%>
                                        <%--<td>网上爬取</td>--%>
                                        <%--<td>TOP#HHH#EEE</td>--%>
                                        <%--<td>--%>
                                            <%--<button type="button" class="btn btn-success" data-toggle="tooltip" title="修改">--%>
                                                <%--<span class="entypo-pencil"></span>--%>
                                            <%--</button>--%>
                                            <%--<button type="button" class="btn btn-info" data-toggle="tooltip" title="删除">--%>
                                                <%--<span class="entypo-trash"></span>--%>
                                            <%--</button>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>

                                    </tbody>

                                    <tfoot>
                                    <tr>
                                        <td colspan="5">
                                            <div class="pagination pagination-centered"></div>
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
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





</div>
<!-- MAIN EFFECT -->
<script type="text/javascript" src="/resource/assets/js/preloader.js"></script>
<script type="text/javascript" src="/resource/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="/resource/assets/js/app.js"></script>
<script type="text/javascript" src="/resource/assets/js/load.js"></script>
<script type="text/javascript" src="/resource/assets/js/main.js"></script>

<!--用于添加标签-->
<script type="text/javascript" src="/resource/assets/js/tag/jquery.tagsinput.js"></script>

<!--新引入的js 用于界面的动态变化-->
<%--<script type="text/javascript" src="/resource/assets/js/data_origin.js"></script>--%>

<!-- /MAIN EFFECT -->
<!-- GAGE -->
<script type="text/javascript" src="/resource/assets/js/toggle_close.js"></script>
<script src="/resource/assets/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
<script src="/resource/assets/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
<script src="/resource/assets/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
<script src="/resource/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
<script src="/resource/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>

<script type="text/javascript">
    function onAddTag(tag) {
        alert("添加标签 " + tag);
    }

    function onRemoveTag(tag) {
        alert("删除标签 " + tag);
    }

    function onChangeTag(input, tag) {
        alert("修改标签 " + tag);
    }

    $(function() {

        $('#tags_1').tagsInput({
            width: 'auto'
        });
        $('#tags_2').tagsInput({
            width: 'auto',
            onChange: function(elem, elem_tags) {
                var languages = ['php', 'ruby', 'javascript'];
                $('.tag', elem_tags).each(function() {
                    if ($(this).text().search(new RegExp('//b(' + languages.join('|') + ')//b')) >= 0)
                        $(this).css('background-color', '#FBB44C');
                });
            }
        });
        $('#tags_3').tagsInput({
            width: 'auto',

            //autocomplete_url:'test/fake_plaintext_endpoint.html' //jquery.autocomplete (not jquery ui)
            autocomplete_url: 'test/fake_json_endpoint.html' // jquery ui autocomplete requires a json endpoint
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

<div id="numberOfVisits" style="display: none"></div>
</body>
<script>
    function generate() {
        var id = select.options[select.selectedIndex].id;
        var fieldList = dataTypeList[id]["fieldList"].split('#');
        console.log(dataTypeList[id]["fieldList"]);
        console.log(fieldList);

        var rootDiv = document.getElementById("dataTypeField");
        $("#dataTypeField").empty();
        for (var i = 0; i < fieldList.length; i++){
            var subDiv = document.createElement("div");
            subDiv.className = "form-group";
            subDiv.innerHTML = '<div class="col-lg-2">' +
                '<label class="form-label">' + fieldList[i] + '</label>' +
                '</div>' +
                '<div class="col-lg-3">' +
                '<input id="' + fieldList[i] + '" type="text" class="form-control">' +
                '</div>';
            rootDiv.appendChild(subDiv);
            rootDiv.appendChild(document.createElement("br"));
            rootDiv.appendChild(document.createElement("br"));
        }
    }

    var select = document.getElementById("type");
    var dataTypeList = JSON.parse('${requestScope.get('dataTypeList')}');
    for (var id in dataTypeList){
        var option = document.createElement("option");
        option.id = dataTypeList[id]["id"];
        option.innerText = dataTypeList[id]["name"];
        select.appendChild(option);
    }
    select.onchange = function () {
        generate();
    };

    // 初始化
    select.options[0].selected = "selected";
    generate();
</script>
<script>
    function generateTrItem(id, name, dataTypeName, fieldList) {
        var tr = document.createElement("tr");
        tr.id = id;
        var checkTd = document.createElement("td");
        checkTd.innerHTML = '<input id="' + id + '_checkbox" class="dataSource_checkbox" type="checkbox">';

        var nameTd = document.createElement("td");
        nameTd.id = id + "_name";
        nameTd.innerText = name;

        var dataTypeNameTd = document.createElement("td");
        dataTypeNameTd.id = id + "_dataType";
        dataTypeNameTd.innerText = dataTypeName;

        var fieldListTd  = document.createElement("td");
        fieldListTd.id = id + "_fieldList";
        fieldListTd.innerText = fieldList;

        var operateTd = document.createElement("td");
        operateTd.innerHTML = '<button' + ' id="' + id + '_change"' + ' type="button" class="btn btn-success" data-toggle="modal" data-target="#add"' + ' onclick="changeRow(this.id)"' + '>' +
            '<span class="entypo-pencil"></span>' +
            '</button>' +
            '<button' + ' id="' + id + '_delete"' + ' type="button" class="btn btn-info" data-toggle="tooltip" title="删除" data-placement="top"' + ' onclick="deleteRow(this.id)"' + '>' +
            '<span class="entypo-trash"></span>' +
            '</button>';

        tr.appendChild(checkTd);
        tr.appendChild(nameTd);
        tr.appendChild(dataTypeNameTd);
        tr.appendChild(fieldListTd);
        tr.appendChild(operateTd);

        return tr;
    }

    var tbody = document.getElementById("dataSourceList");
    var dataSourceList = JSON.parse('${requestScope.get('dataSourceList')}');
    console.log(dataSourceList);
    for (var id in dataSourceList){
        var dataSource = dataSourceList[id];

        var tr = generateTrItem(id, dataSource["name"], dataSource["dataTypeName"], dataSource["fieldList"]);

        tbody.appendChild(tr);
    }
</script>
<script>
    function addDataSource() {
        var name = document.getElementById("name").value;
        var select = document.getElementById("type");
        var dataTypeId = select.options[select.selectedIndex].id;
        var dataTypeName = select.options[select.selectedIndex].innerText;

        var field = "";
        var divList = document.getElementById("dataTypeField").getElementsByClassName("form-group");
        for (var i = 0; i < divList.length; i++){
            var div = divList[i];
            var label = div.getElementsByTagName("label")[0].innerText;
            var input = div.getElementsByTagName("input")[0].value;
            field += label + ":" + input + ",";
        }

        var fieldList = document.getElementById("tags_1").value.replace(/,/g, "#").replace("可选字段(如：起飞机场)#", "");
        field += "可选字段:" + fieldList;

        console.log(field);

        $.ajax({
            type: "post",
            url: "/dataManage/addDataSource",
            async: false,
            data: {name: name, dataTypeId: dataTypeId, fieldList: field},
            dataType: "text",
            success:function (dataSourceId) {
                if (dataSourceId == "no"){
                    alert("该数据源名称已存在");
                    return;
                }

                alert("添加成功");
                var tbody = document.getElementById("dataSourceList");
                var tr = generateTrItem(dataSourceId, name, dataTypeName, field);
                tbody.appendChild(tr);
            },
            error:function (data) {
                alert("error");
                console.log(data)
            }
        });
    }

    function changeDataSource() {
        var id = document.getElementById("id").value;
        var name = document.getElementById("name").value;
        var select = document.getElementById("type");
        var dataTypeId = select.options[select.selectedIndex].id;

        var field = "";
        var divList = document.getElementById("dataTypeField").getElementsByClassName("form-group");
        for (var i = 0; i < divList.length; i++){
            var div = divList[i];
            var label = div.getElementsByTagName("label")[0].innerText;
            var input = div.getElementsByTagName("input")[0].value;
            field += label + ":" + input + ",";
        }

        var fieldList = document.getElementById("tags_1").value.replace(/,/g, "#").replace("可选字段(如：起飞机场)#", "");
        field += "可选字段:" + fieldList;

        $.ajax({
            type: "post",
            url: "/dataManage/updateDataSource",
            async: false,
            data: {id: id, name: name, dataTypeId: dataTypeId, fieldList: field},
            dataType: "text",
            success:function () {
                alert("修改成功");

                document.getElementById(id + "_name").innerHTML = name;
                document.getElementById(id + "_fieldList").innerHTML = field;
                cancel();
            },
            error:function (data) {
                alert("error");
                console.log(data)
            }
        });
    }

    function changeRow(id) {
        var id = id.split('_')[0];

        document.getElementById("id").value = id;
        document.getElementById("name").value = document.getElementById(id + "_name").innerText;
        // 添加待配置项
        document.getElementById("name").disabled = "disabled";
        document.getElementById("type").disabled = "disabled";

        // 初始化数据源
        var dataTypeName = document.getElementById(id + "_dataType").innerText;
        var select = document.getElementById("type");
        var optionList = select.options;
        for (var i = 0; i < optionList.length; i++){
            var option = optionList[i];
            if (option.innerText == dataTypeName){
                option.selected = "selected";
            }
        }

        // 初始化可选字段
        generate();
        // 初始化选中字段
        var optionalList = document.getElementById(id + "_fieldList").innerText.split(",");
        for (var i = 0; i < optionalList.length-1; i++){
            var configuration = optionalList[i].split(":");
            document.getElementById(configuration[0]).value = configuration[1];
        }


        var addOrChange = document.getElementById("addOrChange");
        addOrChange.innerHTML = '<span class="entypo-plus-squared"></span>&nbsp;&nbsp;修改';
        addOrChange.onclick = function () {
            changeDataSource();
        }
    }

    function deleteRow(id) {
        var id = id.split('_')[0];
        var OK = confirm("要删除该数据源吗？");

        if (OK == true){
            $.ajax({
                type: "post",
                url: "/dataManage/deleteDataSource",
                async: false,
                data: {id: id},
                dataType: "text",
                success:function () {
                    var dataSourceList = document.getElementById("dataSourceList");
                    var tr = document.getElementById(id);
                    dataSourceList.removeChild(tr);
                },
                error:function (data) {
                    alert("error");
                    console.log(data);
                }
            });
        }
    }

    function deleteRowBatch(){
        var inputList = document.getElementsByClassName("dataSource_checkbox");
        var id = "";
        console.log(inputList);
        for (var i = 0; i < inputList.length; i++){
            var input = inputList[i];
            console.log(input);
            console.log(input['checked']);
            if (input['checked'] == true){
                id += input.id.split("_")[0] + ","
            }
        }

        console.log(id);
        if (id.length == 0){
            return;
        }
        id = id.substring(0, id.length-1);

        var OK = confirm("要删除他们吗？");
        if (OK == true){
            $.ajax({
                type: "post",
                url: "/dataManage/deleteDataSourceBatch",
                async: false,
                data: {id: id},
                dataType: "text",
                success:function () {
                    alert("删除完成");
                    var dataSourceList = document.getElementById("dataSourceList");
                    var idList = id.split(',');
                    for (var i = 0; i < idList.length; i++){
                        var tr = document.getElementById(idList[i]);
                        dataSourceList.removeChild(tr);
                    }
                },
                error:function (data) {
                    alert("error");
                    console.log(data);
                }
            });
        }
    }

    function cancel() {
        document.getElementById("id").value = '';
        document.getElementById("name").value = '';
        document.getElementById("name").disabled = "";
        document.getElementById("type").disabled = "";

        var select = document.getElementById("type");
        var optionList = select.options;
        optionList[0].selected = "selected";
        // 初始化可选字段
        generate();

        var addOrChange = document.getElementById("addOrChange");
        addOrChange.innerHTML = '<span class="entypo-plus-squared"></span>&nbsp;&nbsp;增加';
        addOrChange.onclick = function () {
            addDataSource();
        }
    }

    function init() {
        var numberOfVisits = document.getElementById("numberOfVisits");
        numberOfVisits.innerHTML = '${requestScope.get('numberOfVisits')}';

        var welcome = document.getElementById("welcome");
        welcome.innerHTML = '${requestScope.get('username')}';

//        // 初始化数据类型可选项
//        var dataTypeField = document.getElementById("dataTypeField");
    }

    window.onload = init();
</script>
</html>
