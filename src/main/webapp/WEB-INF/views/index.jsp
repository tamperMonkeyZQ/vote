<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>登录</title>

    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="/static/css/animate.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">

    <script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>

</head>

<body class="gray-bg">

<div class="loginColumns animated fadeInDown">
    <div class="row">

        <div class="col-md-6">
            <h2 class="font-bold">学生工作考核问卷调查系统</h2>

            <p>
                填表说明：1.本问卷调查系统共包括4组问卷，点击左上角图标切换4组问卷，依次作答4组问卷所有题目并提交。
            </p>

            <p>
                2.第四组问卷（辅导员考核学生测评表），答题前需在问卷上方选择所在学院和辅导员。
            </p>

        </div>
        <div class="col-md-6">
            <div class="ibox-content">
                <div class="m-t">
                    <p style="text-align: right;color: red" id="info"></p>
                    <div class="form-group">
                        <input id="username" class="form-control" placeholder="学号">
                    </div>
                    <div class="form-group">
                        <input type="password" id="password" class="form-control" placeholder="身份证后六位">
                    </div>
                    <button id="loginButton" class="btn btn-primary block full-width m-b">Login</button>
                </div>
                <p class="m-t">
                    <small>沈阳工业大学</small>
                </p>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-6">
            沈阳工业大学
        </div>
        <div class="col-md-6 text-right">
            <small></small>
        </div>
    </div>
</div>
<script>
    $("#loginButton").click(function () {
        if($("#username").val()==''&&$("#password").val()==''){
            $("#info").text("提示:账号和密码不能为空");
        }
        else if ($("#username").val()==''){
            $("#info").text("提示:账号不能为空");
        }
        else if($("#password").val()==''){
            $("#info").text("提示:密码不能为空");
        }
        else {
            $.ajax({
                type: "POST",
                url: "/loginCheck",
                data: {
                    username:$("#username").val() ,
                    password: $("#password").val()
                },

                dataType: "json",
                success: function(data) {
                    if(data.stateCode.trim() == "0") {
                        $("#info").text("提示:用户名或密码错误");
                    } else if(data.stateCode.trim() == "1"){
                        $("#info").text("提示:登录成功，跳转中...");
                        window.location.href="/main";
                    }
                    else if(data.stateCode.trim() == "2"){
                        $("#info").text("提示:登录成功，跳转中...");
                        window.location.href="/adminSearch";
                      }
                }
            });
        }
    })
</script>
</body>
</html>
