<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>识别失败</title>
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<link rel="stylesheet" href="css/style.css">
	<!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="htmleaf-container">
		<header class="htmleaf-header">
			<h1>车牌识别失败 <span>missing cardNum</span></h1>
			<div class="htmleaf-links">
				<a class="htmleaf-icon icon-htmleaf-home-outline" href="http://localhost:8080/depot-system/index/toindex" title="主页" ><span> 主页</span></a>
				<a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="#" title="返回" target="_blank"><span> 返回</span></a>
			</div>
		</header>
		
	</div>
	<nav class="shelf">
	  <a class="book home-page">Home page</a>
	  <a class="book about-us">About us</a>
	  <a class="book contact">Contact</a>
	  <a class="book faq">F.A.Q.</a>
	  
	  <span class="book not-found"></span>
	 
	  <span class="door left"></span>
	  <span class="door right"></span>
	</nav>
	<h1>您上传的车牌让狗子叼走了，不如换张图片试试？或者手动上传</h1>
	
	
</body>
</html>
