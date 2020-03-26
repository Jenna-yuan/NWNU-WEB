<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息填报</title>
<link type="text/css" rel="stylesheet" href="./css/reset.css" />

<script>

function datetime() {
	 var now = new Date();
	 document.getElementById("time").value = now.getFullYear() + "-"
	 + (now.getMonth() + 1) + "-" + now.getDate();
	 document.getElementById("time").value += " " + now.getHours() + ":"
	 + now.getMinutes() + ":" + now.getSeconds();
	 }
	 window.setInterval("datetime()", 1000);

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

<style type="text/css">
body{
	color:white;
}
h1{
	margin-top:65px;
	margin-left:300px;
}
.table{
	margin-top:60px;
	margin-left:100px;
}

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
    .mini_login .item p{
        display:inline-block;
        height:60%;
        width:70%;
        color:#0000C6;
    }
    /* 登录按钮 */
    .mini_login .item a.btn_login{
        display:block;
        margin:10px 10% 0;
        height:30px;
        line-height:30px;
        width:80%;
        background:#4490F7;
        color:#000000;
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
        opacity:0.5;
    }

</style>
</head>
<body background="plug-in/system/img/back.jpg">

<div id="top">
	<h1>学生疫情登记</h1>
</div>

<div id="center">
<form action="saveStudent">
	<table class="table" style="width:55%;">		
			<thead>
				<tr>
					<th style="text-align:left;">上报单位：</th>
					<td>
						<select>
							<option value="computer">计算机科学与工程学院</option>
							<option value="math">数学与统计学院</option>
							<option value="sport">体育学院</option>
							<option value="english">外国语学院</option>
							<option value="heart">心理学院</option>
							<option value="teacher">教育技术学院</option>
							<option value="math">传媒学院</option>
							<option value="art">美术学院</option>
							<option value="philosophy">哲学院</option>
							<option value="history">历史学院</option>
							<option value="lecture">文学院</option>
						</select>
					</td>
				</tr>
				<tr>
					<th style="text-align:left;">上报时间：</th>
					<td><input id="time" style="text-align: center;width:208px" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">填报人：</th>
					<td><input type="text" name="name" id="name" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">学号：</th>
					<td><input type="text" name="code" id="code" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">联系电话：</th>
					<td><input type="text" name="number" id="number" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">当前所在省：</th>
					<td><input type="text" name="number" id="number" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">当前所在市：</th>
					<td><input type="text" name="number" id="number" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">当前所在区：</th>
					<td><input type="text" name="number" id="number" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">是否为湖北籍：</th>
					<td>
						<input type="radio" name="favorite1" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite1" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否近14日与湖北疫区人员接触过：</th>
					<td>
						<input type="radio" name="favorite2" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite2" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否在湖北：</th>
					<td>
						<input type="radio" name="favorite4" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite4" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否今天从外地返校:</th>
					<td>
						<input type="radio" name="favorite5" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite5" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否有疫情疑似症状：</th>
					<td>
						<input type="radio" name="favorite6" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite6" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否已经确认被感染：</th>
					<td>
						<input type="radio" name="favorite7" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite7" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">其他情况：</th>
					<td>
						<textarea name="eduhistory" cols="30" rows="5" align="center">任何需要说明的情况（如国外详细信息，家庭成员情况等）</textarea>
					</td>	
				</tr>
			</thead>
		</table>	
		
		<!--<a href="home_page.jsp"><button type="button" class="btn btn-primary" style="color:white;margin-left:310px;font-size:15px;background-color:#4189E1;" type="submit">确认提交</button></a>-->	
</form>

<div class="main">
    <a href="javascript:void(0)" class="btn_login" id="btn_showlogin"><button type="submit" class="btn btn-primary btn-sm" style="background-color:#FFECEC;margin-left:350px;">提交</button></a>
</div>

<!-- 弹出登录小窗口 -->
<div class="mini_login" id="mini_login">
    <!-- 表单 -->
<form action="" method="post">
    <div class="item firstLine" id="firstLine">
        <span class="login_title">提示信息</span>
        <span class="login_close" id="close_minilogin">X</span>
    </div>
    <div class="item">
        <p>提交失败</p>
    </div>
</form>
</div>
<!-- 遮罩层 -->
<div class="cover"></div>

</body>
</html>