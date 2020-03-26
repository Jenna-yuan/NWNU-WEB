<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面</title>

<style type="text/css">
body{
	font-size:15px;
	color:white;

}
h1{
	color:white;
	margin-top:70px;
	margin-left:250px;
}
.loginTable{
	margin:auto auto; 
	margin-top:200px;
	margin-left:280px;
}
</style>
</head>
<body background="plug-in/system/img/back.jpg">
${msg}
	<h1>西北师范大学疫情上报系统</h1>
	<form id="loginform" action="admin" method="post" style="text-align:center">
		<table style="border:0;cellpadding:4;" class="loginTable">
			<tr>
				<td>账号：
					<input id="code" name="code" style="width: 200px;height: 25px;top: 200px;left: 250px; border-bottom-right-radius: 20px;  border-bottom-left-radius: 20px;    border-top-left-radius: 20px;    border-top-right-radius: 20px;" />
				</td>
			</tr>
			<tr>
				<td>密码：
					<input id="password" name="password" style="width: 200px;height: 25px;top: 220px;left: 250px; border-bottom-right-radius: 20px;  border-bottom-left-radius: 20px;    border-top-left-radius: 20px;    border-top-right-radius: 20px;" />
				</td>
			</tr>
			<tr>
				<td>
					<label style="margin-left:70px;"><input type="radio" name="RadioGroup" id="RadioGroup_0">学院</label>
  					<label style="margin-left:53px;"><input type="radio" name="RadioGroup" id="RadioGroup_1">学校</label>
				</td>
			</tr>
			<tr>
				<td>
					<a href="census.jsp"><input class="btn btn-primary" style="color:white;margin-left:70px;font-size:15px;background-color:#4189E1;" type="submit" value="登录" ></a>
					<input class="btn btn-primary" style="color:white;margin-left:60px;font-size:15px;background-color:#4189E1;" type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>