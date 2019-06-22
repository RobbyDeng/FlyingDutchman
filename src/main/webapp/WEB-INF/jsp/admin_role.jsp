<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/4
  Time: 14:55
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
    <script src="/resource/assets/js/editTable.js"></script>

    <link rel="stylesheet" href="/resource/assets/css/style.css">
    <link rel="stylesheet" href="/resource/assets/css/loader-style.css">
    <link rel="stylesheet" href="/resource/assets/css/bootstrap.css">

    <link rel="stylesheet" href="/resource/assets/js/button/ladda/ladda.min.css">
    <link href="/resource/assets/js/stackable/stacktable.css" rel="stylesheet">
    <link href="/resource/assets/js/stackable/responsive-table.css" rel="stylesheet">

    <link href="/resource/assets/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="/resource/assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

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
                        <img alt="" class="admin-pic img-circle" src="/resource/assets/img/info/bob.jpg">你好，<span id="welcome">二狗</span><b class="caret"></b>
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
                    <!-- 角色-->
                    <div class="nest" id="Blank_PageClose">
                        <div class="title-alt">
                            <h6>
                                角色管理</h6>
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
                            <div class="body-nest" id="Filtering">
                                <div class="row" style="margin-bottom:10px;">
                                    <div class="col-sm-4">
                                        <input class="form-control" id="filter" placeholder="角色名搜索" type="text">
                                    </div>
                                    <div class="col-sm-8">
                                        <input type="button" style="margin-left:10px;" class="pull-right btn btn-success" value="批量删除" onclick="deleteRowBatch()">
                                        <button class="btn btn-success pull-right" data-toggle="modal" data-target="#add" onclick="addRow()"><span class="entypo-plus-squared"></span>增加角色</button>
                                        <div id="add" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog">
                                                <%--增加角色弹窗--%>
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                        <h4 class="modal-title" id="myModalLabel">增加角色</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="from-group row">
                                                                <label class="form-label col-lg-2">角色名</label>
                                                                <div class="col-lg-4">
                                                                    <input id="name" type="text" class="form-control pull-left">
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <div class="form-group row">
                                                                <label class="form-label col-lg-2">权限</label>
                                                                <div class="col-lg-6">
                                                                    <ul id="browser" class="filetree treeview">
                                                                        <script>
                                                                            var privilegeJson = '${requestScope.get('privilegeJson')}';
                                                                            var privilegeDict = JSON.parse(privilegeJson);

                                                                            var browser = document.getElementById("browser");
                                                                            for (var i in privilegeDict["0"]){
                                                                                var rootPrivilege = privilegeDict["0"][i];

                                                                                var rootLi = document.createElement("li");
                                                                                rootLi.className = "expandable";

                                                                                var div = document.createElement("div");
                                                                                div.className = "hitarea expandable-hitarea";
                                                                                var rootDiv = document.createElement("div");
                                                                                rootDiv.innerHTML = '<input ' + 'id="'+ rootPrivilege["id"] +'"' + ' type="checkbox" disabled="disabled">' + rootPrivilege["name"];

                                                                                var ul = document.createElement("ul");
                                                                                var subPrivilegeDict = privilegeDict[rootPrivilege["id"]];
                                                                                for (var j in subPrivilegeDict){
                                                                                    var privilege = subPrivilegeDict[j];

                                                                                    var subLi = document.createElement("li");
                                                                                    if (i == "01"){
                                                                                        subLi.innerHTML = '<input ' + 'id="'+ privilege["id"] +'"' + ' class="subPrivilege"' + ' type="checkbox" disabled="disabled">' + privilege["name"];
                                                                                    }else{
                                                                                        subLi.innerHTML = '<input ' + 'id="'+ privilege["id"] +'"' + ' class="subPrivilege"' + ' type="checkbox">' + privilege["name"];
                                                                                    }

                                                                                    ul.appendChild(subLi);
                                                                                }

                                                                                rootLi.appendChild(div);
                                                                                rootLi.appendChild(rootDiv);
                                                                                rootLi.appendChild(ul);

                                                                                browser.appendChild(rootLi)
                                                                            }
                                                                        </script>
                                                                        <%--<li class="expandable">--%>
                                                                            <%--<div class="hitarea expandable-hitarea"></div>--%>
                                                                            <%--<div><input type="checkbox" disabled="disabled">系统管理</div>--%>
                                                                            <%--<ul>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<div><input type="checkbox" disabled="disabled">用户管理</div>--%>
                                                                                <%--</li>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<div><input type="checkbox" disabled="disabled">权限管理</div>--%>
                                                                                <%--</li>--%>
                                                                                <%--<li class="last">--%>
                                                                                    <%--<div><input type="checkbox" disabled="disabled">角色管理</div>--%>
                                                                                <%--</li>--%>
                                                                            <%--</ul>--%>
                                                                        <%--</li>--%>

                                                                        <%--<li class="expandable"><div class="hitarea expandable-hitarea"></div>--%>
                                                                            <%--<input type="checkbox">数据管理--%>
                                                                            <%--<ul>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">数据类型管理--%>
                                                                                <%--</li>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">数据源管理--%>
                                                                                <%--</li>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">数据项管理--%>
                                                                                <%--</li>--%>
                                                                                <%--<li class="last">--%>
                                                                                    <%--<input type="checkbox">定时任务配置--%>
                                                                                <%--</li>--%>
                                                                            <%--</ul>--%>
                                                                        <%--</li>--%>

                                                                        <%--<li class="expandable"><div class="hitarea expandable-hitarea"></div>--%>
                                                                            <%--<input type="checkbox">航班动态查询--%>
                                                                            <%--<ul>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">航班查询--%>
                                                                                <%--</li>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">航线查询--%>
                                                                                <%--</li>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">票价查询--%>
                                                                                <%--</li>--%>

                                                                                <%--<li class="last">--%>
                                                                                    <%--<input type="checkbox">机场天气查询--%>
                                                                                <%--</li>--%>
                                                                            <%--</ul>--%>
                                                                        <%--</li>--%>

                                                                        <%--<li class="expandable"><div class="hitarea expandable-hitarea"></div>--%>
                                                                            <%--<input type="checkbox">国内航空统计--%>
                                                                            <%--<ul>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">机场位置分布--%>
                                                                                <%--</li>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">各省机场统计--%>
                                                                                <%--</li>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">航空航班统计--%>
                                                                                <%--</li>--%>

                                                                                <%--<li class="last">--%>
                                                                                    <%--<input type="checkbox">飞机机型统计--%>
                                                                                <%--</li>--%>
                                                                            <%--</ul>--%>
                                                                        <%--</li>--%>

                                                                        <%--<li class="expandable lastExpandable"><div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>--%>
                                                                            <%--<input type="checkbox">个人信息管理--%>
                                                                            <%--<ul>--%>
                                                                                <%--<li>--%>
                                                                                    <%--<input type="checkbox">查看个人信息--%>
                                                                                <%--</li>--%>
                                                                                <%--<li class="last">--%>
                                                                                    <%--<input type="checkbox">修改个人信息--%>
                                                                                <%--</li>--%>
                                                                            <%--</ul>--%>
                                                                        <%--</li>--%>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                        <button id="confirm" type="button" class="btn btn-success" onclick="addRole()">增加</button>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal -->
                                        </div>
                                    </div>

                                </div>

                                <table id="footable-res2" class="demo" data-filter="#filter" data-filter-text-only="true" data-page-size="2">
                                    <thead>
                                    <tr>
                                        <th class="footable-sortable">
                                            选择
                                            <span class="footable-sort-indicator"></span></th>
                                        <th class="footable-sortable">
                                            角色名称
                                            <span class="footable-sort-indicator"></span></th>
                                        <th class="footable-sortable">
                                            权限详情
                                            <span class="footable-sort-indicator"></span></th>
                                        <th class="footable-sortable">
                                            操作
                                            <span class="footable-sort-indicator"></span></th>
                                    </tr>
                                    </thead>
                                    <tbody id="roleList" class="demo footable metro-blue footable-res" data-page-size="3" data-filter="#filter" data-filter-text-only="true">

                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="3">
                                            <div id="pageIndex" class="pagination pagination-centered"></div>
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
    <!--END OF CONTENT-->
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


<!-- MAIN EFFECT -->
<script type="text/javascript" src="/resource/assets/js/preloader.js"></script>
<script type="text/javascript" src="/resource/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="/resource/assets/js/app.js"></script>
<script type="text/javascript" src="/resource/assets/js/load.js"></script>
<script type="text/javascript" src="/resource/assets/js/main.js"></script>

<!-- /MAIN EFFECT -->
<script type="text/javascript" src="/resource/assets/js/stackable/stacktable.js"></script>
<!-- /MAIN EFFECT -->
<!-- GAGE -->
<script type="text/javascript" src="/resource/assets/js/toggle_close.js"></script>
<script src="/resource/assets/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
<script src="/resource/assets/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
<script src="/resource/assets/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
<script src="/resource/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
<script src="/resource/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>

<!-- /MAIN EFFECT -->
<script src="/resource/assets/js/tree/lib/jquery.cookie.js" type="text/javascript"></script>
<script src="/resource/assets/js/tree/jquery.treeview.js" type="text/javascript"></script>


<script src="/resource/assets/js/tree/tabelizer/jquery-ui-1.10.4.custom.min.js"></script>
<script src="/resource/assets/js/tree/tabelizer/jquery.tabelizer.js"></script>

<script type="text/javascript">
    $(function() {
        $("#browser, #browser2").treeview({
            animated: "fast",
            collapsed: false,
            unique: true,
            persist: "cookie",
            toggle: function() {
                window.console && console.log("%o was toggled", this);
            }
        });
    });
</script>

<script>
    $(document).on('click', '#run', function(e) {
        e.preventDefault();
        $('#simple-example-table').stacktable({
            hideOriginal: true
        });
        $(this).replaceWith('<span>ran</span>');
    });
    $('#responsive-example-table').stacktable({
        myClass: 'stacktable small-only'
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
<form id="form" style="display: none"></form>
<div id="numberOfVisits" style="display: none"></div>
</body>
<script>
    function generateTrItem(roleId, roleName, privilegeList, privilegeDict) {
        var tr = document.createElement("tr");
        tr.style = "display: table-row;";
        tr.id = roleId;

        // Checkbox Td
        var checkTd = document.createElement("td");
        checkTd.innerHTML = '<input id="' + roleId + '_checkbox" class="role_checkbox" type="checkbox">';

        // 名称Td
        var nameTd  = document.createElement("td");
        nameTd.innerHTML = roleName;
        nameTd.id = roleId + "_name";

        // 权限Td
        var privilegeTd = document.createElement("td");
        var rootUl = document.createElement("ul");

        var html = "";
        for (var rootPrivilege in privilegeList){
            var subPrivilegeList = privilegeList[rootPrivilege];
            html += "<li>" + privilegeDict["0"][rootPrivilege]["name"] + "<ul>";
            for (var i in subPrivilegeList){
                var subPrivilege = subPrivilegeList[i];
                var privilege = privilegeDict[rootPrivilege][subPrivilege];
                html += "<li id='" + privilege["id"] + "_list' class='" + roleName + "'>" + privilege["name"] + "</li>"
            }
            html += "</ul>" + "</li>";
        }

        rootUl.innerHTML = html;
        privilegeTd.appendChild(rootUl);

        // 操作Td
        var operateTd = document.createElement("td");
        operateTd.innerHTML = '<button' + ' id="' + roleId + '_change"' + ' type="button" class="btn btn-success" data-toggle="modal" data-target="#add"' + ' onclick="changeRow(this.id)"' + '>' +
            '<span class="entypo-pencil"></span>' +
            '</button>' +
            '<button' + ' id="' + roleId + '_delete"' + ' type="button" class="btn btn-info" data-toggle="tooltip" title="删除" data-placement="top"' + ' onclick="deleteRow(this.id)"' + '>' +
            '<span class="entypo-trash"></span>' +
            '</button>';

        tr.appendChild(checkTd);
        tr.appendChild(nameTd);
        tr.appendChild(privilegeTd);
        tr.appendChild(operateTd);

        return tr;
    }

    // 角色信息
    var roleList = '${requestScope.get('roleJson')}';
    roleList = JSON.parse(roleList);
    console.log(roleList);

    // 权限信息
    var privilegeJson = '${requestScope.get('privilegeJson')}';
    var privilegeDict = JSON.parse(privilegeJson);

    // 获取table
    var table = document.getElementById("roleList");

    for (var roleId in roleList){
        // 获取Id
        var roleName = roleList['name'][roleId][0];
        var privilegeList = roleList[roleId];

        var tr = generateTrItem(roleId, roleName, privilegeList, privilegeDict);
        table.appendChild(tr);
    }
</script>
<script>
    function deleteRow(id) {
        var roleId = id.split('_')[0];
        if (roleId == "6"){
            alert("你不能删除超级管理员的信息");
            return;
        }

        var OK = confirm("要删除该角色吗？");

        if (OK == true){
            $.ajax({
                type: "post",
                url: "/systemManage/deleteRole",
                async: false,
                data: {roleId: roleId},
                dataType: "text",
                success:function (data) {
                    alert("删除完成");
                    console.log(data);
                    var roleList = document.getElementById("roleList");
                    var tr = document.getElementById(roleId);
                    roleList.removeChild(tr);
                },
                error:function (data) {
                    alert("error");
                    console.log(data);
                }
            });
        }
    }

    function deleteRowBatch(){
        var inputList = document.getElementsByClassName("role_checkbox");
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
                url: "/systemManage/deleteRoleBatch",
                async: false,
                data: {id: id},
                dataType: "text",
                success:function () {
                    alert("删除完成");
                    var roleList = document.getElementById("roleList");
                    var idList = id.split(',');
                    for (var i = 0; i < idList.length; i++){
                        var tr = document.getElementById(idList[i]);
                        roleList.removeChild(tr);
                    }
                },
                error:function (data) {
                    alert("error");
                    console.log(data);
                }
            });
        }
    }

    function addRow() {
        // 修改控件值
        var label = document.getElementById("myModalLabel");
        label.innerHTML = "添加角色";
        var nameInput = document.getElementById("name");
        nameInput.value = "";
        nameInput.disabled = "";
        var confirm = document.getElementById("confirm");
        confirm.innerHTML = "添加";
        confirm.onclick = function () {
            addRole();
        };

        var checkboxList = document.getElementsByClassName("subPrivilege");
        for (var i = 0; i < checkboxList.length; i++){
            checkboxList[i].checked = false;
        }
    }

    function changeRow(id) {
        var roleId = id.split('_')[0];
        if (roleId == "6"){
            alert("你不能修改超级管理员的信息");
            return;
        }

        // 修改控件值
        var label = document.getElementById("myModalLabel");
        label.innerHTML = "修改角色";
        // 设置名称
        var nameInput = document.getElementById("name");
        nameInput.value = document.getElementById(roleId + "_name").innerHTML;
        nameInput.disabled = "disabled";

        var confirm = document.getElementById("confirm");
        confirm.innerHTML = "更新";
        confirm.onclick = function () {
            updateRole(roleId);
        };

//        var inputList = document.getElementById("subPrivilege");
        var liList = document.getElementsByClassName(document.getElementById(roleId + "_name").innerHTML);
        console.log(liList);

        for (var i = 0; i < liList.length; i++){
            var id = liList[i].id.split("_")[0];
            document.getElementById(id).checked = true;
        }
    }

    function addRole() {
        var name = document.getElementById("name").value;
        var browser = document.getElementById("browser");
        var inputList = browser.getElementsByClassName("subPrivilege");
        console.log(inputList);

        var privilege = {};
        for (var i in inputList){
            var input = inputList[i];
            if (input['checked'] == true){
                var id = input["id"];
                var key = id.substring(0, 2);
                if (privilege[key] == undefined){
                    privilege[key] = [id];
                }else{
                    privilege[key].push(id);
                }
            }
        }

        console.log(privilege);
        console.log(JSON.stringify(privilege));

        $.ajax({
            type: "post",
            url: "/systemManage/addRole",
            async: false,
            data: {name: name, privilege: JSON.stringify(privilege)},
            dataType: "text",
            success:function (roleId) {
                if (roleId == "No"){
                    alert("该角色已存在");
                }else{
                    alert("角色添加成功");
                    var tbody = document.getElementById("roleList");

                    var privilegeJson = '${requestScope.get('privilegeJson')}';
                    var privilegeDict = JSON.parse(privilegeJson);
                    var tr = generateTrItem(roleId, name, privilege, privilegeDict);

                    tbody.appendChild(tr);
                }
            },
            error:function (data) {
                alert("error");
                console.log(data);
            }
        });
    }

    function updateRole(roleId) {
//        var roleId = document.getElementById("name");
//        console.log("以下是权限：");
        console.log(document.getElementById("name"));
        var browser = document.getElementById("browser");
        var inputList = browser.getElementsByClassName("subPrivilege");
        console.log(inputList);

        var privilege = {};
        for (var i in inputList){
            var input = inputList[i];
            if (input['checked'] == true){
                var id = input["id"];
                var key = id.substring(0, 2);
                if (privilege[key] == undefined){
                    privilege[key] = [id];
                }else{
                    privilege[key].push(id);
                }
            }
        }

//        console.log(privilege);
//        console.log(JSON.stringify(privilege));

        $.ajax({
            type: "post",
            url: "/systemManage/updateRole",
            async: false,
            data: {roleId: roleId, privilege: JSON.stringify(privilege)},
            dataType: "text",
            success:function (data) {
                if (data == "Yes"){
                    alert("角色修改成功");

                }else{
                    alert("该角色不存在");
                }
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
