<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<title>停车场管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="${APP_PATH }/bootstrap-3.3.5-dist/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/jquery-3.0.0.min.js"></script>
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div style="width: 100%;height: 100%;background-image: url(${APP_PATH }/pic/login.jpg);position: absolute;background-size:100% 100% ">
	<form id="loginForm" class="form-horizontal" role="form" style="padding-left: 35%;padding-top: 10%;" action="${APP_PATH }/index/toindex" method="post">
		<div class="form-group" style="width: 50%;text-align: center;">
			<h2>停车场管理系统</h2>
		</div>
		<div class="form-group" style="width: 50%;">
			<label for="firstname" class="col-sm-2 control-label">账号</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="username" name="username"
					placeholder="请输入账号" style="width: 80%;" onblur="checkUsernameExit(this)">
					<span style="color: red"></span>
			</div>
		</div>
		<div class="form-group" style="width: 50%;">
			<label for="lastname" class="col-sm-2 control-label">密码</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="password" name="password"
					placeholder="请输入密码" style="width: 80%;" onblur="checkPasswordNull(this)">
					<span style="color: red"></span>
			</div>
		</div>
		<div class="form-group" style="width: 70%;">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="button" onclick="submitForm()" class="btn btn-default" style="width: 40%">登录</button>
			</div>
		</div>
	</form>
</div>
</body>
<script type="text/javascript">

	function submitForm()
	{
		var data=$("#loginForm").serializeArray();
		$.ajax({
			type:'get',
			url:'/depot-system/login/index',
			data:data,
			dataType:'json',
			success:function(result){
				if(result.code==200)
				{
				$("#password").next("span").text(result.extend.va_msg);
				}
			else{
				$("#password").next("span").text("");
				$("#loginForm").submit();
			}
			}
		});
	}
	function clearError(item)
	{
		$(item).next("span").text("");
	}

	function checkPasswordNull(item)
	{
		clearError(item);
		if(item.value=="")
			{
			$(item).next("span").text("密码不能为空");
			}
		else{
			$(item).next("span").text("");
		}
	}
	function checkUsernameExit(item)
	{
		if(item.value=="")
			{
			$(item).next("span").text("用户名不能为空");
			}else{
				$.ajax({
					type:'get',
					url:'/depot-system/login/checkUsernameExit',
					data:{username:item.value},
					dataType:'json',
					success:function(result){
						if(result.code==200)
							{
							$(item).next("span").text(result.extend.va_msg);
							}
						else{
							clearError(item);
						}
					}
				});
			}
	}
</script>
</html>
