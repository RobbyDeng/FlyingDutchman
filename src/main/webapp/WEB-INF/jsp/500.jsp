<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/6
  Time: 14:25
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
    <style type="text/css">
        body {
            overflow:hidden!important;
            padding-top: 120px;
        }
    </style>
    <!-- Le styles -->
    <script type="text/javascript" src="/resource/assets/js/jquery.min.js"></script>

    <link rel="stylesheet" href="/resource/assets/css/style.css">
    <link rel="stylesheet" href="/resource/assets/css/loader-style.css">
    <link rel="stylesheet" href="/resource/assets/css/bootstrap.css">
    <link rel="stylesheet" href="/resource/assets/css/signin.css">
    <link rel="stylesheet" href="/resource/assets/css/extra-pages.css">






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


<div class="logo-error">
    <h1>
        <span>v1.0</span>
    </h1>
</div>

<!-- Main content -->
<section class="page-error">

    <div class="error-page">
        <h2 class="headline text-info">500</h2>
        <div class="error-content">
            <h3><i class="fa fa-warning text-yellow"></i> 哦豁，页面找不到了:(</h3>
            <p>
                我们找不到您想找的页面，但是您可以 <a class="error-link" onclick="backToLogin()" href='#'>返回登录界面</a> 或者尝试使用搜索框
            </p>
            <form class='search-form'>
                <input type="text" name="search" class='form-control' placeholder="Search">
            </form>
        </div>
        <!-- /.error-content -->
    </div>
    <!-- /.error-page -->

</section>
<!--  END OF PAPER WRAP -->
<!-- MAIN EFFECT -->
<script type="text/javascript" src="/resource/assets/js/preloader.js"></script>
<script type="text/javascript" src="/resource/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="/resource/assets/js/app.js"></script>
<script type="text/javascript" src="/resource/assets/js/load.js"></script>
<script type="text/javascript" src="/resource/assets/js/main.js"></script>

<form id="form" style="display: none"></form>
</body>
<script>
    function backToLogin() {
        var form = document.getElementById("form");
        form.method = "post";
        form.action = "/basicFunction/toLogin";
        form.submit();
    }
</script>
</html>
