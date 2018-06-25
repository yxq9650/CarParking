<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>车牌识别系统</title>
</head>
<body>
	<form method="POST" enctype="multipart/form-data" action="${pageContext.request.contextPath}/fileUpload2">
          文件：<input type="file" name="file" />
       <input type="submit" value="上传云端识别" />
     </form>
</html>
