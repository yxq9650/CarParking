<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a id="findUser" href="" target="main"
	onclick="$('div#main').load(this.href);return false;"></a>
<table class="table">
	<caption>
		<div style="float: left; line-height: 10px; padding: 10px 10px;">用户管理</div>
		<c:if test="${sessionScope.user.role!=3 }">
		<button class="btn btn-default" type="button" onclick="addUser()">添加用户</button>
		<input id="user_role" value="${sessionScope.user.role!=3 }" hidden="hidden"/>
		<div class="dropdown" style="float: right; margin-right: 10%">
			<button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
				data-toggle="dropdown">
				查看用户 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="${APP_PATH }/index/findAllUser?tag=3" target="main"
					onclick="$('div#main').load(this.href);return false;">用户</a></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="${APP_PATH }/index/findAllUser?tag=2" target="main"
					onclick="$('div#main').load(this.href);return false;">管理员</a></li>
				<c:if test="${sessionScope.user.role==1 }">
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="${APP_PATH }/index/findAllUser?tag=1" target="main"
					onclick="$('div#main').load(this.href);return false;">超级管理员</a></li>
				</c:if>
			</ul>
		</div>
		</c:if>
	</caption>
	<tr>
		<th>序号</th>
		<th>用户名</th>
		<th>真实姓名</th>
		<th>性别</th>
		<th>联系电话</th>
		<c:if test="${sessionScope.user.role!=3 }">
		<th>权限</th>
		</c:if>
		<th>用户卡</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${users.pages }" var="item" varStatus="status">
		<tr>
			<td>${status.index+1 }</td>
			<td>${item.username }</td>
			<td>${item.name }</td>
			<td>${item.sex }</td>
			<td>${item.tel }</td>
			<td>${item.role==1?"超级管理员":item.role==2?"管理员":"用户" }</td>
			<c:if test="${sessionScope.user.role!=3 }">
			<td>${item.cardnum }</td>
			</c:if>
			<td><input class="btn btn-default" type="button" onclick="editUser(${item.id})" value="修改">
			<c:if test="${sessionScope.user.role!=3 }">
			<input
				class="btn btn-default" type="button" onclick="deleteUser( '${item.username }',${item.id})" value="删除">
			</c:if>
				</td>
		</tr>
	</c:forEach>
</table>
<ul class="pagination">
				
				<li><a href="${APP_PATH }/index/findAllUser?tag=${users.tag}&&page=${users.current}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&laquo;</a></li>
				<li><a href="${APP_PATH }/index/findAllUser?tag=${users.tag}&&page=${users.current+1}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">${users.current+1}</a></li>
				<c:if test="${users.current+1>=users.countPage}">
				<li><a href="${APP_PATH }/index/findAllUser?tag=${users.tag}&&page=${users.current+1}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
				<c:if test="${users.current+1<users.countPage}">
				<li><a href="${APP_PATH }/index/findAllUser?tag=${users.tag}&&page=${users.current+2}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
			</ul>
<script type="text/javascript">
	/* 添加用户模态框显示*/
	function addUser() {
        var user_role=$("#user_role").val();
		var html = "<input id=\"judgeusername\" name=\"judgeusername\" value=\"0\" hidden=\"hidden\"/>"
				+ "<label>用户账号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"username\" name=\"username\" placeholder=\"请输入用户账号\" type=\"text\" onblur='findUser()' class=\"form-control\">"
				+ "<span style=\"color: red;\"></span>"
				+ "</div>"
				+ "</div>"
				+ "<label>密码：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"password\" name=\"password\" placeholder=\"输入密码\" type=\"password\" class=\"form-control\">"
				+ "</div></div>"
				+ "<label>确认密码：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"confrimPass\" placeholder=\"输入确认密码\" type=\"password\" class=\"form-control\">"
				+ "</div></div>"
				+ "<label>类型：</label>"
				+ "<select id=\"role\" name=\"role\" style=\"width:150px\" class=\"form-control\"> "
				+ "<option value=\"3\">用户</option>"
				+ "<option value=\"2\">管理员</option>";
			if(user_role==1)
			{
			    html+=+ "<option value=\"1\">超级管理员</option>";
			}
				html+="</select>";
		$("#myModalLabel").html("添加用户");
		$("#checkSubmit").html("添加");
		$("#checkSubmit").attr("onclick", "addUserSubmit()");
		$(".modal-body").append(html);
		$("#myModal").modal('show');
	}
	function findUser() {
		debugger;
		var username = $("#username").val();
		if (username == "") {

		} else {
			$.ajax({
				type : 'get',
				url : '/depot-system/index/user/checkUsername',
				datatype : 'json',
				data : {
					username : username
				},
				success : function(data) {
					if (data.code == 100) {
						$("#username").next("span").text("该账号已存在，请重新输入！");
						$("#judgeusername").val(1);
					} else {
						$("#username").next("span").text("");
						$("#judgeusername").val(0);
					}
				}
			})
		}
	}
	function addUserSubmit() {
		var username = $("#username").val();
		var confrimPass = $("#confrimPass").val();
		var password = $("#password").val();
		var judgeusername = $("#judgeusername").val();
		if (username == "") {
			alert("用户名不能为空!");
			return false;
		}
		if (password == "") {
			alert("密码不能为空!");
			return false;
		}
		if (confrimPass == "") {
			alert("确认密码不能为空!");
			return false;
		}
		if (judgeusername == 1) {
			alert("该账号已存在，请重新输入!");
			return false;
		}
		if (password != confrimPass) {
			alert("两次密码输入不一样!");
			return false;
		}
		$.ajax({
			type : 'post',
			url : '/depot-system/index/user/addUser',
			datatype : 'json',
			data : $("#checkForm").serializeArray(),
			success : function(data) {
				alert(data.extend.va_msg);
				$("#findUser").attr("href", "${APP_PATH }/index/findAllUser");
				$("#findUser").click();
				$("#myModal").modal('hide');
			}
		})
	}
	
	
	/* 编辑用户模态框显示*/
	function editUser(uid) {
        var user_role=$("#user_role").val();
		$.ajax({
			type:'get',
			url:'/depot-system/index/user/findUserById',
			data:{uid:uid},
			dataType:'json',
			success:function(data){
				if(data.code==100){
				var root="<label>权限：</label>"
					+ "<select id=\"role\" name=\"role\" style=\"width:150px\" class=\"form-control\"> "
                    + "<option value=\"2\">管理员</option>";
				if(user_role==1)
				{
                    root+= "<option value=\"1\">超级管理员</option>";
				}
                    root+= "</select>";
				var html ="<input  name=\"id\" value=\""+data.extend.user.id+"\" hidden=\"hidden\">"
					+"<label>用户账号：</label><div style=\"width: 30%;\">"
					+ "<div class=\"input-group\">"
					+ "<input id=\"username\" name=\"username\" value=\""+data.extend.user.username+"\" type=\"text\" readonly class=\"form-control\">"
					+ "</div>"
					+ "</div>"
					+"<label>真实姓名：</label><div style=\"width: 30%;\">"
					+ "<div class=\"input-group\">"
					+ "<input id=\"name\" name=\"name\" value=\""+data.extend.user.name+"\" type=\"text\"  class=\"form-control\">"
					+ "</div>"
					+ "</div>"
					+ "<label>联系电话：</label><div style=\"width: 30%;\">"
					+ "<div class=\"input-group\">"
					+ "<input id=\"tel\" name=\"tel\" value=\""+data.extend.user.tel+"\" type=\"text\" class=\"form-control\">"
					+ "</div></div>"
					+"<label>性别：</label>"
					+ "<select id=\"sex\" name=\"sex\" style=\"width:150px\" class=\"form-control\"> "
					+ "<option value=\"男\">男</option>"
					+ "<option value=\"女\">女</option>" + "</select>";
					if(data.extend.user.role!=3&&data.extend.role==1)
						{
						html+=root;
						}
			$("#myModalLabel").html("修改用户");
			$("#checkSubmit").html("修改");
			$("#checkSubmit").attr("onclick", "editUserSubmit("+data.extend.user.id+")");
			$(".modal-body").append(html);
			$("#myModal").modal('show');
			$("#sex").val(data.extend.user.sex);
			if(data.extend.user.role!=3&&data.extend.role==1)
			{
				$("#role").val(data.extend.user.role);
			}
				}
				else{
					alert(data.extend.va_msg);
				}
			}
		})
	}
	
	function editUserSubmit(uid) {
		$.ajax({
			type : 'post',
			url : '/depot-system/index/user/editUser',
			datatype : 'json',
			data : $("#checkForm").serializeArray(),
			success : function(data) {
				alert(data.extend.va_msg);
				$("#findUser").attr("href", "${APP_PATH }/index/findAllUser");
				$("#findUser").click();
				$("#myModal").modal('hide');
			}
		})
	}
	
	
	/* 删除用户模态框显示*/
	function deleteUser(username,id) {
		var html = "<label>确认删除,"+username+"吗？</br>删除用户会把该用户所有相关信息删除！</label><div style=\"width: 30%;\">";
		$("#myModalLabel").html("删除用户");
		$("#checkSubmit").html("删除");
		$("#checkSubmit").attr("onclick","deleteUserSubmit("+id+")");
		$(".modal-body").append(html);
		$("#myModal").modal('show'); 
	}
	
	/* 删除用户提交 */
	function deleteUserSubmit(uid){
		$.ajax({
			type:'post',
			url:'/depot-system/index/user/deleteUser',
			datatype:'json',
			data:{"uid":uid},
			success:function(data){
				if(data.code==100)
					{
					$("#myModal").modal('hide');
					$("#findUser").attr("href","${APP_PATH }/index/findAllUser");
					$("#findUser").click();
					alert("删除成功！");
					}
				else{
					$("#myModal").modal('hide');
					$("#findUser").attr("href","${APP_PATH }/index/findAllUser");
					$("#findUser").click();
					alert(data.extend.va_msg);
				}
			}
		})
	}
</script>