<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="${APP_PATH }/bootstrap-3.3.5-dist/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/jquery-3.0.0.min.js"></script>
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<style type="text/css">
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

.nav .open>a, .nav .open>a:focus, .nav .open>a:hover {
	background-color: #579ec8;
}

.nav>li>a:focus, .nav>li>a:hover {
	background-color: #579ec8;
}

.topscan {
	width: 100%;
	min-height: 50px;
	background-color: #438eb9;
	position: relative;
}

.top-left {
	color: white;
	line-height: 20px;
	padding: 15px 10px;
	float: left;
}

.user-click {
	float: right;
	padding-right: 20px;
}

.leftscan a:hover {
	color: #1963aa;
	background-color: white;
	display: block;
	background-color: white;
}

.leftscan a {
	color: #585858;
	display: block;
	height: 38px;
	line-height: 36px;
	display: block;
}

.leftscan li {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-left: 1px solid #ccc;
	border-right: hidden;
}

body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	background-color: #e4e6e9;
}

ul, li {
	margin: 0;
	padding: 0;
	text-align: center;
}
</style>
</head>
<body>
	<div class="topscan">
		<div class="top-left">停车场管理系统</div>
		<div class="user-click">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" style="color: white;"> Welcome,Jason <b
						class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">停车管理</a></li>
						<li><a href="#">停车位管理</a></li>
						<li><a href="#">停车卡管理</a></li>
						<li><a href="#">用户管理</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div>
		<div class="leftscan"
			style="width: 190px; min-height: 100%; float: left; background-color: #eee;">
			<ul style="list-style: none; color: #1963aa;">
				<li><a href="#">停车位管理</a></li>
				<li><a href="#">停车卡管理</a></li>
				<li><a href="#">停车管理</a></li>
				<li><a href="#">用户管理</a></li>
			</ul>
		</div>
		<div
			style="width: 100%; min-height: 100%; margin-left: 190px; margin-right: 0; border: 1px solid #ccc; background-color: white;">
			<table class="table">
				<caption>车位状况</caption>
					<tr>
						<th>车位号</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
					<tr>
						<td>Tanmay</td>
						<td>Bangalore</td>
						<td>Bangalore</td>
					</tr>
					<tr>
						<td>Sachin</td>
						<td>Mumbai</td>
						<td>Bangalore</td>
					</tr>
			</table>
			<ul class="pagination">
				<li><a href="#">&laquo;</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
	</div>
</body>
</html>