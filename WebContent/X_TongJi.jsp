<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="t" uri="http://www.nwnu.cn/common/"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>二级部门疫情防控</title>

<style type="text/css">
body{
	color:white;
	background:#003366;
}

#header {
    background-color: #FFF7FB;
    padding: 1px 5%;
}

#header a {
    text-decoration: none;
    color: #000000;
}

#header a:hover {
    color:#003D79;
}
/* 导航栏按钮 */
.btn {
    display: none;
    float:right;
    margin-top: 5px;
    border: 0;
    border-radius: 5px;
    width: 40px;
    height: 20px;
}
/* 文字Logo */
#header a.logo {
    float:left;
    font-weight: bold;
    font-size: 20px;
    line-height: 50px;
}

#header div.nav {
    height: 50px;
}

#header ul.nav-bar {
    list-style: none;
    float: right;
    line-height: 20px;
}
#header ul.nav-bar li {
    float:left;
    padding: 0 10px;
}

@media screen and (max-width: 768px){
    #header {
        padding: 10px 5%;
        height: 50px;
        overflow: hidden;
    }
    #header a.logo {
        line-height: 20px;
        font-size: 30px;
    }
    .btn {
        display: block;
    }
    #header ul.nav-bar {
        margin-top: 10px;
        border-top: solid 1px #111;
        width:100%;
    }
    #header ul.nav-bar li {
        float: none;
        padding: 0 5px;
    }
}

</style>
</head>
<body>

<div id="header">
	<div class="nav">
        <a href="#" class="logo">西北师范大学疫情防控信息统计</a>
        <ul class="nav-bar">
            <li><a href="census_miss.jsp">高级查询</a></li>
            <li><a href="census.jsp">退出</a></li>
            <li><a href="#">导出</a></li>
        </ul>
    </div>
</div>

<div id="center" style="margin-top:80px;" >
	<span style="margin-left:200px;">当天各个学院有疫情疑似症状的人数统计</span>
	<span style="margin-left:500px;">填报情况数据统计</sapn>
</div>

<div id="footer" style="margin-top:50px">
	<img src="plug-in/system/img/my1.png" alt="" style="width:650px;height:400px;margin-top:20px;margin-left:50px"/>
	<img src="plug-in/system/img/my2.png" alt="" style="width:500px;height:400px;margin-top:20px;margin-left:100px"/>
</div>

</body>
</html>