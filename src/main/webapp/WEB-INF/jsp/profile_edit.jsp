<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/3
  Time: 14:15
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

    <link rel="stylesheet" href="/resource/assets/css/profile.css">
    <link rel="stylesheet" type="text/css" href="/resource/assets/js/tag/jquery.tagsinput.css">
    <link rel="stylesheet" href="/resource/assets/js/timepicker/bootstrap-timepicker.css">
    <link rel="stylesheet" href="/resource/assets/js/datepicker/datepicker.css">
    <link rel="stylesheet" href="/resource/assets/js/datepicker/clockface.css">

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
            <!-- PROFILE -->
            <div class="row">

                <div class="row">


                    <div class="col-sm-12">
                        <!-- BLANK PAGE-->

                        <div style="margin:-20px 15px;" class="nest" id="Blank_PageClose">
                            <div class="title-alt">
                                <h6>
                                    修改个人信息</h6>
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




                                <div class="row">


                                    <!-- left column -->
                                    <div class="col-md-3">
                                        <div class="text-center">
                                            <img src="/resource/assets/img/info/logo.jpg" class="avatar img-circle" alt="avatar">
                                            <h6>上传图片</h6>

                                            <div class="input-group">
                                                    <span class="input-group-btn">
                                                        <span class="btn btn-primary btn-file">
                                                            浏览
                                                            <input type="file" multiple="">
                                                        </span>
                                                    </span>
                                                <input type="text" class="form-control">
                                            </div>

                                        </div>
                                    </div>

                                    <!-- edit form column -->
                                    <div class="col-md-9 personal-info">
                                        <h3>个人信息</h3>

                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">用户名</label>
                                                <div class="col-lg-8">
                                                    <input id="username" class="form-control" value="二狗" type="text">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">性别</label>
                                                <div class="col-lg-8">
                                                    <div class="ui-select">
                                                        <select id="gender" class="form-control">
                                                            <option value="男" selected="selected">男
                                                            <option value="女">女
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">生日</label>
                                                <div class="col-lg-8">
                                                    <input id="birthday" class="form-control" value="" type="text">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">身份</label>
                                                <div class="col-lg-8">
                                                    <div class="ui-select">
                                                        <select id="identity" class="form-control">
                                                            <option value="学生" selected="selected">学生
                                                            <option value="工作">工作
                                                            <option value="退休">退休
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-lg-3 control-label">邮箱</label>
                                                <div class="col-lg-8">
                                                    <input id="email" class="form-control" value="dengyiran2008@126.com" type="text">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">新密码</label>
                                                <div class="col-md-8">
                                                    <input id="password" class="form-control" value="${password}" type="password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">确认密码</label>
                                                <div class="col-md-8">
                                                    <input id="passwordAgain" class="form-control" value="${password}" type="password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">常飞城市</label>
                                                <div class="col-md-8" id="tagInput">
                                                    <!--<div class="body-nest" id="tagInput">-->
                                                    <div>
                                                        <!--<div class="well">-->
                                                        <input id="city" type="text" class="form-control city" value="${city}">
                                                        <!--</div>-->
                                                    </div>
                                                    <!--</div>-->
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label"></label>
                                                <div class="col-md-8">
                                                    <input class="btn btn-primary" value="保存" type="button" onclick="changeProfileData()">
                                                    <span></span>
                                                    <input class="btn btn-default" value="取消" onclick="init()">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END OF BLANK PAGE -->

                </div>
            </div>
            <!-- END OF PROFILE -->


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

    <script type="text/javascript" src="/resource/assets/js/tag/jquery.tagsinput.js"></script>
    <!-- /MAIN EFFECT -->

    <script type="text/javascript" src="/resource/assets/js/colorPicker/bootstrap-colorpicker.min.js"></script>
    <script type="text/javascript" src="/resource/assets/js/inputMask/jquery.maskedinput.js"></script>
    <script type="text/javascript" src="/resource/assets/js/switch/bootstrap-switch.js"></script>
    <script type="text/javascript" src="/resource/assets/js/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/resource/assets/js/idealform/jquery.idealforms.js"></script>

    <script type="text/javascript" src="/resource/assets/js/timepicker/bootstrap-timepicker.js"></script>
    <script type="text/javascript" src="/resource/assets/js/datepicker/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="/resource/assets/js/datepicker/clockface.js"></script>
    <script type="text/javascript" src="/resource/assets/js/datepicker/bootstrap-datetimepicker.js"></script>
</div>
<form id="form" style="display: none"></form>
<div id="numberOfVisits" style="display: none"></div>
</body>
<script>
    <%--var timeOut = 30;--%>
    <%--var timeCount = 0;--%>

    <%--function longTimeNoUse(){--%>
        <%--if (timeCount == timeOut){--%>
            <%--var form = document.getElementById("form");--%>
            <%--var input = document.createElement("input");--%>
            <%--input.name = "username";--%>
            <%--input.value = '${requestScope.get('username')}';--%>
            <%--form.appendChild(input);--%>
            <%--form.method = "post";--%>
            <%--form.action = "/personalInformationManage/toLockScreen";--%>
            <%--form.submit();--%>
        <%--}else{--%>
            <%--timeCount += 1;--%>
        <%--}--%>
        <%--console.log("TimeCount " + timeCount);--%>
    <%--}--%>

    <%--function clear() {--%>
        <%--timeCount = 0;--%>
    <%--}--%>
    <%--document.onmouseover = clear;--%>

    <%--window.setInterval("longTimeNoUse()", 1000);--%>

    <%--function toProfile() {--%>
        <%--var form = document.getElementById("form");--%>
        <%--var input = document.createElement("input");--%>
        <%--input.name = "username";--%>
        <%--input.value = '${requestScope.get('username')}';--%>
        <%--form.appendChild(input);--%>
        <%--form.method = "post";--%>
        <%--form.action = "/personalInformationManage/toProfile";--%>
        <%--form.submit();--%>
    <%--}--%>

    <%--function toProfileEdit() {--%>
        <%--var form = document.getElementById("form");--%>
        <%--var input = document.createElement("input");--%>
        <%--input.name = "username";--%>
        <%--input.value = '${requestScope.get('username')}';--%>
        <%--form.appendChild(input);--%>
        <%--form.method = "post";--%>
        <%--form.action = "/personalInformationManage/toProfileEdit";--%>
        <%--form.submit();--%>
    <%--}--%>
    
    function changeProfileData() {
        if (document.getElementById("password").value != document.getElementById("passwordAgain").value){
            alert("密码不一致");
        }

        var idList = ["username", "email", "gender", "birthday", "identity",
            "city", "password"];
        var data = {};
        idList.forEach(function (id) {
            console.log(id);
            data[id] = document.getElementById(id).value;
        });
//        console.log(data);
        $.ajax({
            type: "post",
            url: "/personalInformationManage/changeProfile",
            async: false,
            data: data,
            dataType: "text",
            success:function (data) {
                alert("密码修改成功");
            },
            error:function () {
                alert("error");
            }
        });
//        var form = document.getElementById("form");
//
//        idList.forEach(function (id) {
//            var input = document.getElementById("input");
//            input.name = id;
//            input.value = document.getElementById(id);
//            form.appendChild(input);
//        });
//
//        form.method = "post";
//        form.action = "/personalInformationManage/changeProfile";
//        form.submit();
    }

    function toLogin() {
        var form = document.getElementById("form");
        form.method = "post";
        form.action = "/personalInformationManage/toLogin";
        form.submit();
    }
    
    function init() {
        var name = document.getElementById("username");
        var email = document.getElementById("email");
        var sexSelect = document.getElementById("gender");
        var birthday = document.getElementById("birthday");
        var identitySelect = document.getElementById("identity");
        var city = document.getElementById("city");
        var password = document.getElementById("password");
        var passwordAgain = document.getElementById("passwordAgain");

        name.value = '${requestScope.get('username')}';
        email.value = '${requestScope.get('email')}';
        birthday.value = '${requestScope.get('birthday')}';

        var sexOption = sexSelect.getElementsByTagName("option");
        var identityOption = identitySelect.getElementsByTagName("option");

        var sex = '${requestScope.get('sex')}';
        if (sex == '男'){
            sexOption[0].selected = "selected";
        }else if (sex == '女'){
            sexOption[1].selected = "selected";
        }

        var identity = '${requestScope.get('identity')}';
        if (identity == '学生'){
            identityOption[0].selected = "selected";
        }else if (identity == '工作'){
            identityOption[1].selected = "selected";
        }else if (identity == '退休'){
            identityOption[2].selected = "selected";
        }

        var numberOfVisits = document.getElementById("numberOfVisits");
        numberOfVisits.innerHTML = '${requestScope.get('numberOfVisits')}';

        var welcome = document.getElementById("welcome");
        welcome.innerHTML = '${requestScope.get('username')}';
    }

    window.onload = init();

    $('#birthday').datepicker();


    $('#toggle-btn').click(function(e) {
        e.stopPropagation();
        $('#t2').clockface('toggle');
    });

    $(function() {
        $('#city').tagsInput({
            width: 'auto'
        });
    });
</script>
</html>
