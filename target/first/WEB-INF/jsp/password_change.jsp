<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/3/11
  Time: 20:05
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
        input::placeholder {
            /* placeholder颜色  */
            color: #c3cddd;
            /* placeholder字体大小  */
            font-size: 13px;
            /* placeholder位置  */
            /*text-align: left;*/
        }

    </style>
    <!-- Le styles -->
    <script type="text/javascript" src="/resource/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="/resource/assets/js/CheckIntensity.js"></script>


    <link rel="stylesheet" href="/resource/assets/css/style.css">
    <link rel="stylesheet" href="/resource/assets/css/loader-style.css">
    <link rel="stylesheet" href="/resource/assets/css/bootstrap.css">
    <link rel="stylesheet" href="/resource/assets/css/signin.css">
    <link rel="stylesheet" href="/resource/assets/css/extra-pages.css">
    <link rel="stylesheet" href="/resource/assets/css/password.css" />
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="/resource/assets/ico/favicon.ico">
</head>

<body id="lock">
<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<!-- Main content -->
<div id="password_change" align="center" style="height: 800px">
    <div id = "activity" align="center">
        <br><br><br><br><br><br><br><br>
        <!-- START LOCK SCREEN ITEM -->
        <label style=" padding-right:135px;color:#FFFFFF;font-size:22px;">请输入新密码：</label>
        <div class="lockscreen-item">
            <div class="lockscreen-credentials">
                <div class="input-group">
                    <input  id="newPassword"
                            style="font-size:21px!important;
                                   color:#000000!important;
                                   height: 40px!important;
                                   padding-right: 30px;"
                            type="password" maxlength="16"
                            class="form-control"
                            placeholder="6-16位字符，必须包含数字、字母和符号"
                            onKeyUp="CheckIntensity(this.value)">
                    <table border="0" cellpadding="0" cellspacing="0" frame="void" width="290px">
                        <tr align="center">
                            <td id="pwd_Weak" class="pwd pwd_c"> </td>
                            <td id="pwd_Medium" class="pwd pwd_c pwd_f">无</td>
                            <td id="pwd_Strong" class="pwd pwd_c pwd_c_r"> </td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
        <label style=" padding-right:92px;color:#FFFFFF;font-size:22px;">请再次确认新密码：</label>
        <div class="lockscreen-item">
            <div class="lockscreen-credentials">
                <div class="input-group">
                    <input  id="newPasswordCon"
                            style="font-size:21px!important;
                                          color:#000000!important;
                                          height: 40px!important;
                                          padding-right: 30px;"
                            type="password" maxlength="16"
                            class="form-control"
                            placeholder="6-16位字符，必须包含数字、字母和符号">
                </div>
            </div>
        </div>
        <br>
        <button onclick="passwordMatching()"
                class="btn btn-warning"
                style="width:290px;height: 40px;font-size: 20px!important"
                type="submit">确定
        </button>

        <br><br>
        <div class="lockscreen-link">
            <a class="lock-link" href="login.html">以其他账号登录</a>
        </div>
    </div>
</div>
<script>

    function passwordMatching()
    {
        var newPassword_ = document.getElementById("newPassword").value;
        var newPasswordCon_ = document.getElementById("newPasswordCon").value;
        if(newPassword_ != newPasswordCon_)
        {
            alert("两次密码输入不相等，请重新输入");
        }
        else
        {
            if(newPassword_.length < 6)
            {
                alert("密码过短，请重新输入")
            }
            else
            {
                $.ajax({
                    type: "post",
                    url: "/basicFunction/changePassword",
                    async: false,
                    data: {username: '${requestScope.get('username')}', password: newPassword},
                    dataType: "text",
                    success:function (data) {
//                        alert("修改密码成功");
                        document.getElementById("activity").remove();
                        document.getElementById("password_change").innerHTML=
                            '<div class="error-page" style="padding-top: 7%">'+
                            '<h2 class="headline text-info"><i class="fa fa-check-circle text-green"></i>密码修改成功！</h2>'+
                            '<br><br>'+
                            '<div class="error-content">'+
                            '<p style="align-self: center;font-size: 15px"> 密码已修改，您可以 <a class="error-link" href="login.html">返回登录界面</a> 重新登录 </p>'+
                            '</div>'
                    },
                    error:function (data) {
                        alert("error");
                        console.log(data);
                    }
                });

            }
        }
    }
</script>


<script type="text/javascript" src="/resource/assets/js/load.js"></script>
<script type="text/javascript" src="/resource/assets/js/main.js"></script>
<script type="text/javascript"></script>
</body>

</html>
