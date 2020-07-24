<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta author="zrong.me 曾荣">
    <title>登录 - 千寻 - Thousands Find</title>
    <link rel="stylesheet" type="text/css" href="/static/css/login/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box">
    <div class="cent-box-header">
        <h1 class="main-title hide">千寻</h1>
        <h2 class="sub-title">生活热爱分享 - Thousands Find</h2>
    </div>

    <div class="cont-main clearfix">
        <div class="index-tab">
            <div class="index-slide-nav">
                <a href="login.html" class="active">登录</a>
                <div class="slide-bar"></div>
            </div>
        </div>

        <div class="login form">
            <div class="group">
                <div class="group-ipt email">
                    <input type="text" name="email" id="email" class="ipt" placeholder="邮箱地址" required>
                </div>
                <div class="group-ipt password">
                    <input type="password" name="password" id="password" class="ipt" placeholder="输入您的登录密码" required>
                </div>
            </div>
        </div>

        <div class="button">
            <button type="button" class="login-btn register-btn" id="button">登录</button>
        </div>

        <div class="remember clearfix">
            <label class="remember-me"><span class="icon"><span class="zt"></span></span><input type="checkbox" name="remember-me" id="remember-me" class="remember-mecheck" checked>记住我</label>
            <label class="forgot-password">
                <a href="#">忘记密码？</a>
            </label>
        </div>
    </div>
</div>

<div class="footer">
    <p>千寻 - Thousands Find</p>
    <p>Designed By ZengRong & <a href="zrong.me">zrong.me</a> 2016</p>
</div>

<script src='/static/js/login/particles.js' type="text/javascript"></script>
<script src='/static/js/login/background.js' type="text/javascript"></script>
<script src='/static/js/login/jquery.min.js' type="text/javascript"></script>
<script src='/static/js/login/layer/layer.js' type="text/javascript"></script>
<script src='/static/js/login/index.js' type="text/javascript"></script>

</body>
</html>

<script>
    $(function() {
        $("#button").click(function() {
            var email = $("#email").val()
            var password = $("#password").val()
            $.ajax({
                url: "http://127.0.0.1:8080/login",
                data: {email, password},
                dataType: "json",
                method: "post",
                success: function(res) {
                    console.log(res)
                }
            })
        })
    })
</script>