<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/4
  Time: 14:54
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
    <script src="/resource/assets/js/wizard/lib/modernizr-2.6.2.min.js"></script>
    <script type="text/javascript" src="/resource/assets/js/jquery.js"></script>

    <link rel="stylesheet" href="/resource/assets/css/style.css">
    <link rel="stylesheet" href="/resource/assets/css/loader-style.css">
    <link rel="stylesheet" href="/resource/assets/css/bootstrap.css">



    <link rel="stylesheet" href="/resource/assets/js/wizard/css/jquery.steps.css">
    <link type="text/css" rel="stylesheet" href="/resource/assets/js/wizard/jquery.stepy.css">
    <link href="/resource/assets/js/tabs/acc-wizard.min.css" rel="stylesheet">

    <link href="/resource/assets/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="/resource/assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
    <link rel="stylesheet" href="/resource/assets/js/dataTable/css/datatables.responsive.css">

    <script src="/resource/assets/js/sidebar.js"></script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googleid.com/svn/trunk/html5.js"></script>
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
                        <img alt="" class="admin-pic img-circle" src="/resource/assets/img/info/bob.jpg">你好，<span id="welcome">二狗!</span><b class="caret"></b>
                    </a>
                    <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                        <li>
                            <a href="lock-screen.html">
                                <span class="entypo-lock"></span>&#160;&#160;锁定账户</a>
                        </li>

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
                    <!--权限管理-->
                    <div class="nest" id="Blank_PageClose">
                        <div class="title-alt">
                            <h6>
                                权限管理</h6>
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

                            <div class="content-wrap">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="nest" id="tabClose">
                                            <!--<div class="body-nest" id="tab">-->
                                            <section>
                                                <div class="content-wrap">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="nest" id="FilteringClose">

                                                                <div class="body-nest" id="f">

                                                                    <form role="form" class="form-inline">
                                                                        <div id="id" style="display: none"></div>
                                                                        <div class="form-group col-lg-3">
                                                                            <label>权限名称</label>
                                                                            <br>
                                                                            <input id="name" type="text" class="form-control">
                                                                        </div>

                                                                        <div class="form-group col-lg-2">
                                                                            <label>所属父权限</label>
                                                                            <br>
                                                                            <select id="parentPrivilege" class="form-control">
                                                                                <option id="0" value="">默认</option>
                                                                                <c:forEach items="${rootList}" var="privilege" varStatus="status">
                                                                                    <option id="${privilege.id}">${privilege.name}</option>
                                                                                </c:forEach>
                                                                            </select>
                                                                        </div>
                                                                        <div class="form-group col-lg-3">
                                                                            <label>URL</label>
                                                                            <br>
                                                                            <input id="url" type="text" class="form-control">
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <%--<div class="col-lg-2">--%>
                                                                            <%--</div>--%>
                                                                            <div class="col-lg-4">
                                                                                <div style="height: 23px"></div>
                                                                                <button id="addOrChange" onclick="addPrivilege()" type="button" class="btn btn-success pull-left" style="margin-left:10px;">
                                                                                    <span class="entypo-plus-squared"></span>&nbsp;&nbsp;增加
                                                                                </button>
                                                                            </div>
                                                                            <div class="col-lg-4">
                                                                                <%--<input onclick="cancel()" type="button" style="margin-left:10px;" class="btn btn-info" value="取消">--%>
                                                                                <div style="height: 23px"></div>
                                                                                <button onclick="cancel()" type="button" class="btn btn-success pull-left" style="margin-left:10px;">
                                                                                    <span class="icon-clockwise"></span>&nbsp;&nbsp;重置
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <br>
                                                            <div class="body-nest" id="Filtering">

                                                                <div class="row" style="margin-bottom:10px;">
                                                                    <div class="col-sm-4">
                                                                        <input class="form-control" id="filter" placeholder="权限名称搜索" type="text">
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
                                                                            权限名称
                                                                        </th>

                                                                        <th>
                                                                            所属父权限
                                                                        </th>
                                                                        <th>
                                                                            URL
                                                                        </th>

                                                                        <th>
                                                                            操作
                                                                        </th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody id="privilegeList">
                                                                    <%--<tr>--%>
                                                                        <%--<td><input type="checkbox"></td>--%>
                                                                        <%--<td>用户管理</td>--%>
                                                                        <%--<td>系统管理</td>--%>
                                                                        <%--<td>admin/user_manage</td>--%>
                                                                        <%--<td>--%>
                                                                            <%--<button type="button" class="btn btn-success" data-toggle="tooltip" title="修改">--%>
                                                                                <%--<span class="entypo-pencil"></span>--%>
                                                                            <%--</button>--%>
                                                                            <%--<button type="button" class="btn btn-info" data-toggle="tooltip" title="删除">--%>
                                                                                <%--<span class="entypo-trash"></span>--%>
                                                                            <%--</button>--%>
                                                                        <%--</td>--%>
                                                                    <%--</tr>--%>
                                                                    <%--<c:forEach items="${privilegeList}" var="privilege" varStatus="status">--%>
                                                                        <%--<tr id="${privilege.id}_tr">--%>
                                                                            <%--<td><input type="checkbox"></td>--%>
                                                                            <%--<td id="${privilege.id}_name">${privilege.name}</td>--%>
                                                                            <%--<td id="${privilege.id}_parentPrivilege">${privilege.parentPrivilege}</td>--%>
                                                                            <%--<td id="${privilege.id}_url">${privilege.url}</td>--%>
                                                                            <%--<td>--%>
                                                                                <%--<button type="button" class="btn btn-success" data-toggle="tooltip" onclick="changeRow('${privilege.id}')" title="修改">--%>
                                                                                    <%--<span class="entypo-pencil"></span>--%>
                                                                                <%--</button>--%>
                                                                                <%--<button type="button" class="btn btn-info" data-toggle="tooltip" onclick="deleteRow('${privilege.id}')" title="删除">--%>
                                                                                    <%--<span class="entypo-trash"></span>--%>
                                                                                <%--</button>--%>
                                                                            <%--</td>--%>
                                                                        <%--</tr>--%>
                                                                    <%--</c:forEach>--%>

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
                                            </section>

                                        </div>
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
</div>
<!-- MAIN EFFECT wizard-->
<script type="text/javascript" src="/resource/assets/js/preloader.js"></script>
<script type="text/javascript" src="/resource/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="/resource/assets/js/app.js"></script>
<script type="text/javascript" src="/resource/assets/js/load.js"></script>
<script type="text/javascript" src="/resource/assets/js/main.js"></script>
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

<form id="form" style="display: none"></form>
<div id="numberOfVisits" style="display: none"></div>
</body>
<script>
    function generateTrItem(privilegeId, name, parentPrivilegeId, parentPrivilegeName, url) {
        var tr = document.createElement("tr");
        tr.id = privilegeId;

        var inputTd = document.createElement("td");
        inputTd.innerHTML = '<input id="' + privilegeId + '_checkbox" class="privilege_checkbox" type="checkbox">';

        var nameTd = document.createElement("td");
        nameTd.id = privilegeId + "_name";
        nameTd.innerText = name;

        var parentPrivilegeIdTd = document.createElement("td");
        parentPrivilegeIdTd.id = privilegeId + "_parentPrivilegeId";
        parentPrivilegeIdTd.innerText = parentPrivilegeId;
        parentPrivilegeIdTd.style.display = "none";

        var parentPrivilegeNameTd = document.createElement("td");
        parentPrivilegeNameTd.id = privilegeId + "_parentPrivilegeName";
        parentPrivilegeNameTd.innerText = parentPrivilegeName;

        var urlTd = document.createElement("td");
        urlTd.id = privilegeId + "_url";
        urlTd.innerText = url;

        var operateTd = document.createElement("td");
        operateTd.innerHTML = '<button' + ' id="' + privilegeId + '_change"' + ' type="button" class="btn btn-success" data-toggle="modal" data-target="#add"' + ' onclick="changeRow(this.id)"' + '>' +
            '<span class="entypo-pencil"></span>' +
            '</button>' +
            '<button' + ' id="' + privilegeId + '_delete"' + ' type="button" class="btn btn-info" data-toggle="tooltip" title="删除" data-placement="top"' + ' onclick="deleteRow(this.id)"' + '>' +
            '<span class="entypo-trash"></span>' +
            '</button>';

        tr.appendChild(inputTd);
        tr.appendChild(nameTd);
        tr.appendChild(parentPrivilegeIdTd);
        tr.appendChild(parentPrivilegeNameTd);
        tr.appendChild(urlTd);
        tr.appendChild(operateTd);

        return tr;
    }

    var tbody = document.getElementById("privilegeList");
    var privilegeList = JSON.parse('${requestScope.get('privilegeList')}');

    for (var privilegeId in privilegeList){
        var privilege = privilegeList[privilegeId];
        var tr = generateTrItem(privilegeId, privilege["name"], privilege["parentPrivilegeId"], privilege["parentPrivilegeName"], privilege["url"]);
        tbody.appendChild(tr);
    }
</script>
<script>
    function addPrivilege() {
        var name = document.getElementById("name").value;
        var url = document.getElementById("url").value;
        var parentPrivilegeSelect = document.getElementById("parentPrivilege");
        var parentPrivilegeOptions = parentPrivilegeSelect.options;
        var parentPrivilegeId = parentPrivilegeOptions[parentPrivilegeSelect.selectedIndex].id;
        var parentPrivilegeName = parentPrivilegeOptions[parentPrivilegeSelect.selectedIndex].innerText;
        if (name == "" && parentPrivilegeId == "" && url == ""){
            alert("请将信息填写完整");
            return;
        }

        $.ajax({
            type: "post",
            url: "/systemManage/addPrivilege",
            async: false,
            data: {name: name, url: url, parentPrivilege: parentPrivilegeId},
            dataType: "text",
            success:function (privilegeId) {
                alert("权限添加成功");
                var tbody = document.getElementById("privilegeList");
                var tr = generateTrItem(privilegeId, name, parentPrivilegeId, parentPrivilegeName, url);
                tbody.appendChild(tr);
            },
            error:function (data) {
                alert("error");
                console.log(data);
            }
        });
    }

    function changePrivilege() {
        var name = document.getElementById("name").value;
        var url = document.getElementById("url").value;
        var id = document.getElementById("id").value;
        var parentPrivilegeSelect = document.getElementById("parentPrivilege");
        var parentPrivilegeOptions = parentPrivilegeSelect.options;
        var parentPrivilege = parentPrivilegeOptions[parentPrivilegeSelect.selectedIndex].id;
        if (name == "" && parentPrivilege == "" && url == ""){
            alert("请将信息填写完整");
            return;
        }

        $.ajax({
            type: "post",
            url: "/systemManage/updatePrivilege",
            async: false,
            data: {id: id, name: name, url: url, parentPrivilege: parentPrivilege},
            dataType: "text",
            success:function (data) {
                if (data == "Yes"){
                    alert("权限更新成功");
                    document.getElementById(id + "_name").innerHTML = name;
                    document.getElementById(id + "_url").innerHTML = url;
                    document.getElementById(id + "_parentPrivilege").innerHTML = parentPrivilege;
                }else{
                    alert("该权限不存在");
                }
            },
            error:function (data) {
                alert("error");
                console.log(data);
            }
        });
    }

    function deleteRow(privilegeId) {
//        if (privilegeId.substring(0, 2) == "01"){
//            alert("你不能删除系统管理相关权限");
//        }
        privilegeId = privilegeId.split('_')[0];
        var OK = confirm("要删除该权限吗？");

        if (OK == true){
            $.ajax({
                type: "post",
                url: "/systemManage/deletePrivilege",
                async: false,
                data: {privilegeId: privilegeId},
                dataType: "text",
                success:function (data) {
                    alert(data + "删除完成");
                    var privilegeList = document.getElementById("privilegeList");
                    var tr = document.getElementById(data);
                    console.log(privilegeList);
                    console.log(tr);
                    privilegeList.removeChild(tr);
                },
                error:function (data) {
                    alert("error");
                    console.log(data);
                }
            });
        }
    }

    function deleteRowBatch(){
        var inputList = document.getElementsByClassName("privilege_checkbox");
        var id = "";
        for (var i = 0; i < inputList.length; i++){
            var input = inputList[i];
            if (input.checked == true){
                id += input.id.split("_")[0] + ","
            }
        }

        if (id.length == 0){
            return;
        }
        id = id.substring(0, id.length-1);

        var OK = confirm("要删除他们吗？");
        if (OK == true){
            $.ajax({
                type: "post",
                url: "/systemManage/deletePrivilegeBatch",
                async: false,
                data: {id: id},
                dataType: "text",
                success:function () {
                    alert("删除完成");
                    var privilegeList = document.getElementById("privilegeList");
                    var idList = id.split(',');
                    console.log(idList);
                    for (var i = 0; i < idList.length; i++){
                        var tr = document.getElementById(idList[i]);
                        privilegeList.removeChild(tr);
                    }
                },
                error:function (data) {
                    alert("error");
                    console.log(data);
                }
            });
        }
    }

    function changeRow(privilegeId) {
        privilegeId = privilegeId.split('_')[0];
        // 给编辑框填入数据
        document.getElementById("name").value = document.getElementById(privilegeId + "_name").innerHTML;
        document.getElementById("url").value = document.getElementById(privilegeId + "_url").innerHTML;
        document.getElementById("id").value = privilegeId;

        // 修改按钮的值与响应事件
        var addOrChange = document.getElementById("addOrChange");
        addOrChange.innerHTML = '<span class="entypo-plus-squared"></span>&nbsp;&nbsp;修改';
        addOrChange.onclick = function () {
            changePrivilege();
        };

        // 设置select不可选
        var parentPrivilegeId = document.getElementById(privilegeId + "_parentPrivilegeId").innerHTML;
        var parentPrivilegeSelect = document.getElementById("parentPrivilege");
        var parentPrivilegeOptions = parentPrivilegeSelect.options;
        for (var index in parentPrivilegeOptions){
            var parentPrivilege = parentPrivilegeOptions[index];
            console.log(parentPrivilege);
            if (parentPrivilege["id"] == parentPrivilegeId){
                parentPrivilege.selected = "selected";
                break;
            }
        }
        parentPrivilegeSelect.disabled = "disabled";
    }

    function cancel() {
        // 给编辑框填入数据
        document.getElementById("name").value = "";
        document.getElementById("url").value = "";
        var roleSelect = document.getElementById("parentPrivilege");
        var roleOptionList = roleSelect.getElementsByTagName("option");
        roleOptionList[0].selected = "selected";

        // 修改按钮的值与响应时间
        var addOrChange = document.getElementById("addOrChange");
        addOrChange.innerHTML = '<span class="entypo-plus-squared"></span>&nbsp;&nbsp;增加';
        addOrChange.onclick = function () {
            addPrivilege();
        };

        // 设置select可选
        var parentPrivilege = document.getElementById("parentPrivilege");
        parentPrivilege.disabled = "";
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
