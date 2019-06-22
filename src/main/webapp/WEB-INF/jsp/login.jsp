<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/2
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Flying Dutchman航班大数据分析平台</title>
    <meta name="author" content="DeathGhost" />
    <link rel="stylesheet" type="text/css" href="/resource/assets/css/style.login.css" />
    <link rel="stylesheet" href="/resource/assets/css/auth.css">
    <style>
        body{height:100%;width:100%;background: #010101;overflow:hidden;  }
        canvas{z-index:-1;position:absolute;}
    </style>
    <script src="/resource/assets/js/jquery.js"></script>
    <script src="/resource/assets/js/Particleground.js"></script>
    <script>
        $(document).ready(function() {
            //粒子背景特效
            $('body').particleground({
                dotColor: '#9184bd',
                lineColor: '#885bbd'
            });
        });
    </script>
</head>

<body>
<div class="lowin lowin-purple">
    <div class="lowin-brand">
        <img src="/resource/assets/img/info/patrick.jpg" alt="logo">
    </div>
    <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">
            <div class="lowin-box-inner">
                <form id="login">
                    <p>登录</p>
                    <div class="lowin-group">
                        <label id="usernameLabel">用户名<a href="#" class="login-back-link">登录？</a></label>
                        <input id="username" autocomplete="username" name="username" class="lowin-input">
                    </div>
                    <div class="lowin-group password-group">
                        <label id="passwordLabel">密码 <a href="#" class="forgot-link">忘记密码？</a></label>
                        <input id="password" type="password" name="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <button id="loginButton" class="lowin-btn login-btn" onclick="login()">
                        登录
                    </button>
                    <div class="text-foot">
                        没有账号？ <a href="" class="register-link">注册</a>
                    </div>
                </form>

            </div>
        </div>

        <div class="lowin-box lowin-register">
            <div class="lowin-box-inner">
                <form id="register">
                    <p>注册</p>
                    <div class="lowin-group">
                        <label id="usernameRegisterLabel">用户名</label>
                        <input type="text" name="username" autocomplete="name" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>邮箱</label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>密码</label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <button class="lowin-btn" onclick="register()">
                        注册
                    </button>

                    <div class="text-foot">
                        已有账号？ <a href="user" class="login-link">登录</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <footer class="lowin-footer">
        Design By 二狗
    </footer>
</div>
<script src="/resource/assets/js/auth.js"></script>
<script>
    Auth.init({
        login_url: '#login',
        forgot_url: '#forgot'
    });
</script>
<script>
    function login() {
        var button = document.getElementById("loginButton");
        console.log("登录啊");
        console.log(button.innerText);
        if (button.innerText == "登录"){
            var form = document.getElementById("login");
            form.method = "post";
            form.action = "/basicFunction/login";
            form.submit();
        }else if (button.innerText == "忘记密码"){
            $.ajax({
                type: "post",
                url: "/basicFunction/forgetPassword",
                async: false,
                data: {username: document.getElementById("username").value},
                dataType: "text",
                success:function (data) {
                    if (data == "Yes"){
                        alert("邮件发送成功");
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
    }
    function register() {
        var form = document.getElementById("register");
        form.method = "post";
        form.action = "/basicFunction/register";
        form.submit();
    }
    function init() {
        var passwordError = '${requestScope.get('passwordError')}';
        var usernameError = '${requestScope.get('usernameError')}';
        var userExistError = '${requestScope.get('userExistError')}';

        if (passwordError != ""){
            var passwordLabel = document.getElementById("passwordLabel");
            passwordLabel.innerHTML = passwordError;
        }else if (usernameError != ""){
            var usernameLabel = document.getElementById("usernameLabel");
            usernameLabel.innerHTML = usernameError;
        }else if (userExistError != ""){
            var usernameRegisterLabel = document.getElementById("usernameRegisterLabel");
            usernameRegisterLabel.innerHTML = userExistError;
            Auth.register();
//            console.log(usernameRegisterLabel.innerHTML);
        }
    }
    window.onload = init();
</script>
</body>
</html>
