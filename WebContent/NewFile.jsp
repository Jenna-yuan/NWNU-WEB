<!DOCTYPE html>
<html>
<head>
<title>js制作带有遮罩弹出层实现登录小窗口</title>
<link type="text/css" rel="stylesheet" href="./css/reset.css" />
<script>
window.onload = function(){
    document.getElementById("btn_showlogin").onclick = shogMinLogin;
    document.getElementById("close_minilogin").onclick = closeLogin;
    document.getElementById("firstLine").onmousedown = moveLogin;
    /* 显示登录窗口 */
    function shogMinLogin(){
        var mini_login = document.getElementsByClassName("mini_login")[0];
        var cover = document.getElementsByClassName("cover")[0];
        mini_login.style.display = "block";
        cover.style.display = "block";
        
        mini_login.style.left = (document.body.scrollWidth - mini_login.scrollWidth) / 2 + "px";
        mini_login.style.top = (document.body.scrollHeight - mini_login.scrollHeight) / 2 + "px";
    }

    /* 关闭登录窗口 */
    function closeLogin(){
        var mini_login = document.getElementsByClassName("mini_login")[0];
        var cover = document.getElementsByClassName("cover")[0];
        mini_login.style.display = "none";
        cover.style.display = "none";
    }

    /* 移动登录窗口 */
    function moveLogin(event){
        var moveable = true;

        //获取事件源
        event = event ? event : window.event;
        var clientX = event.clientX;
        var clientY = event.clientY;
        
        var mini_login = document.getElementById("mini_login");
        console.log(mini_login);
        var top = parseInt(mini_login.style.top);
        var left = parseInt(mini_login.style.left);//鼠标拖动
        document.onmousemove = function(event){
            if(moveable){
                event = event ? event : window.event;
                var y = top + event.clientY - clientY;
                var x = left + event.clientX - clientX;
                if(x>0 && y>0){
                    mini_login.style.top = y + "px";
                    mini_login.style.left = x + "px";
                }
            }
        }
        //鼠标弹起
        document.onmouseup = function(){
            moveable = false;
        }
    }
};
</script>

<style>    
    /* 弹出 样式 */
    .mini_login{
        display:none;
        position:absolute;
        z-index:2;
        background:white;
    }
    .mini_login .item{
        width:320px;
        margin:0 auto;
        height:48px;
        line-height:48px;
        padding:0 20px;
    }
    /* 登录窗第一行*/
    .mini_login .firstLine{
        color:#666;
        background:#f7f7f7;
        font-size:18px;
        font-weight:bold;
        cursor:move;
    }
    .mini_login .item .login_close{
        display:inline-block;
        float:right;
        cursor:pointer;
    }
    
    .mini_login .item label{
        font-size:14px;
        margin-right:15px;
    }
    .mini_login .item input{
        display:inline-block;
        height:60%;
        width:70%;
    }
    /* 登录按钮 */
    .mini_login .item a.btn_login{
        display:block;
        margin:10px 10% 0;
        height:30px;
        line-height:30px;
        width:80%;
        background:#4490F7;
        color:white;
        font-size:16px;
        font-weight:bold;
        text-align:center;
    }
    /* 遮罩层样式 */
    .cover{
        display:none;
        width:100%;
        height:100%;
        position:absolute;
        top:0;
        left:0;
        z-index:1;
        background-color:#000;
        opacity:0.3;
    }
</style>
</head>
<body>

<!-- 主体 -->
<div class="main">
    <a href="javascript:void(0)" class="btn_login" id="btn_showlogin">登录框</a>
</div>

<!-- 弹出登录小窗口 -->
<div class="mini_login" id="mini_login">
    <!-- 表单 -->
<form action="" method="post">
    <div class="item firstLine" id="firstLine">
        <span class="login_title">我要登录</span>
        <span class="login_close" id="close_minilogin">X</span>
    </div>
    <div class="item">
        <h3>提示信息</h3>
    </div>
    <div class="item">
        <p>提交成功</p>
    </div>
</form>
</div>
<!-- 遮罩层 -->
<div class="cover"></div>

</body>
</html>