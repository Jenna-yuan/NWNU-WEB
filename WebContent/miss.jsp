<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="t" uri="http://www.nwnu.cn/common/"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息查询</title>

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


.container {
 
  bottom:0;
  margin: 1rem auto;
  border-radius: 0.1rem;
  counter-reset: pagination;
  text-align:right;
}
.container:after {
  clear: both;
  content: "";
  display: table;
}
.container ul {
  width: 10%;
}

.large {
  width: 85rem;
}


.pagination ul, li {
  list-style: none;
  display: inline;
  padding-left: 0px;
}

.pagination li {
  counter-increment: pagination;
}
.pagination li:hover a {
  color: #fdfdfd;
  background-color: #1d1f20;
  border: solid 1px #1d1f20;
}
.pagination li.active a {
  color: #fdfdfd;
  background-color: #1d1f20;
  border: solid 1px #1d1f20;
}

.pagination li:first-child a:after {
  content: "<";
}

.pagination li:nth-child(2) {
  counter-reset: pagination;
}

.pagination li:last-child a:after {
  content: ">";
}
.pagination li a {
  border: solid 1px #d6d6d6;
  border-radius: 0.2rem;
  color: #7d7d7d;
  text-decoration: none;
  text-transform: uppercase;
  display: inline-block;
  text-align: right;
  padding: 0.5rem 0.9rem;
}
.pagination li a:after {
  content: " " counter(pagination) " ";
}

.large li a {
  display: none;
}
.large li:first-child a {
  display: inline-block;
}
.large li:first-child a:after {
  content: "<";
}
.large li:nth-child(2) a {
  display: inline-block;
}
.large li:nth-child(3) a {
  display: inline-block;
}
.large li:nth-child(4) a {
  display: inline-block;
}
.large li:nth-child(5) a {
  display: inline-block;
}
.large li:nth-child(6) a {
  display: inline-block;
}
.large li:nth-child(7) a {
  display: inline-block;
}
.large li:nth-child(8) a {
  display: inline-block;
}
.large li:last-child a {
  display: inline-block;
}
.large li:last-child a:after {
  content: ">";
}
.large li:nth-last-child(2) a {
  display: inline-block;
}
.large li:nth-last-child(3) {
  display: inline-block;
}
.large li:nth-last-child(3):after {
  padding: 0 1rem;
  content: "...";
}

</style>
</head>
<body>

<div id="header">
	<div class="nav">
        <a href="#" class="logo">计算机科学与工程学院疫情防控信息统计</a>
        <ul class="nav-bar">
            <li><a href="section.jsp">退出</a></li>
            <li><a href="TongJi.jsp">数据统计</a></li>
            <li><a href="#">关于</a></li>
        </ul>
    </div>
</div>

<form action="listStudent" id="addStudentForm">
<div id="center" style="margin-top:80px">
	<div style="margin-left:180px;height:30px">	
		<form id="queryForm" name="queryForm" action="list">	
			上报单位：
			<select style="width:40;">
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
			 &emsp;&emsp;学号\工号：<input type="text" name="code" id="code" size="20" class="input-medium search-query"/>
			 &emsp;&emsp;姓名：<input type="text" name="name" id="name" size="20" class="input-medium search-query"/>	
			 &emsp;&emsp;<button type="submit" class="btn btn-primary btn-sm">查询</button>
			 &emsp;<button type="submit" class="btn btn-primary btn-sm">重置</button>		
		</form> 
	</div>
	<table class="table" border="1" style="font-size:13px;border: 2px;border-color: white;border-collapse: collapse;margin-top:50px;">		
			<thead>
				<tr>
					<th>序号</th>
					<th>上报单位</th>
					<th>上报时间</th>
					<th>填报人</th>
					<th>学号/工号</th>
					<th>联系电话</th>
					<th>当前所在省</th>
					<th>当前所在市</th>
					<th>当前所在区</th>
					<th>是否为湖北籍</th>
					<th>是否近14日与湖北疫区人员接触过</th>
					<th>是否在湖北</th>
					<th>是否今天从外地返校</th>
					<th>是否有疫情疑似症状</th>
					<th>是否已经确认被感染</th>
					<th>其他情况</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>1</td>
						<td>计算机科学与工程学院</td>
						<td>2020-3-24 08:10:03</td>
						<td>王嫄</td>
						<td>201771030120</td>
						<td>17393165057</td>
						<td>甘肃省</td>
						<td>兰州市</td>
						<td>兰州新区</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>1</td>
						<td>0</td>
						<td>无</td>
					</tr>
					<tr>
						<td>2</td>
						<td>计算机科学与工程学院</td>
						<td>2020-3-24 08:10:04</td>
						<td>牛莉梅</td>
						<td>201771030115</td>
						<td>17393165021</td>
						<td>甘肃省</td>
						<td>天水市</td>
						<td>甘谷县</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>无</td>
					</tr>
					
					<tr>
						<td>3</td>
						<td>计算机科学与工程学院</td>
						<td>2020-3-24 08:10:07</td>
						<td>刘颜星</td>
						<td>16710301</td>
						<td>17393165023</td>
						<td>甘肃省</td>
						<td>兰州市</td>
						<td>安宁区</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>无</td>
					</tr>
					
					<tr>
						<td>4</td>
						<td>计算机科学与工程学院</td>
						<td>2020-3-24 08:10:10</td>
						<td>李芬芳</td>
						<td>16710304</td>
						<td>17393165026</td>
						<td>甘肃省</td>
						<td>兰州市</td>
						<td>安宁区</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>无</td>
					</tr>
					
					<tr>
						<td>5</td>
						<td>计算机科学与工程学院</td>
						<td>2020-3-24 08:10:17</td>
						<td>郝占军</td>
						<td>13710304</td>
						<td>17393165034</td>
						<td>甘肃省</td>
						<td>兰州市</td>
						<td>安宁区</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>有家人在国外</td>
					</tr>
			</tbody>
		</table>
</div>
</form>

<div class="container large">
  <div class="pagination">
    <ul>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li class="active"> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
      <li> <a href="javascript:void(0)"></a> </li>
    </ul>
  </div>
</div>

</body>

</html>