<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a id="findEmail" href="" target="main"
	onclick="$('div#main').load(this.href);return false;"></a>
	<table class="table">
				<caption>
					<div style="float: left; line-height: 10px; padding: 10px 10px;">信息情况</div>
					<div class="col-lg-6" style="width: 30%; float: left;">
						<div class="input-group">
							<input placeholder="输入标题" id="content" type="text" class="form-control" > <span
								class="input-group-btn">
								<button class="btn btn-default" onclick="findByContent()" type="button">查询</button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
					<c:if test="${sessionScope.user.role==3 }">
					<button style="float: left;" class="btn btn-default" type="button" onclick="addEmail()">发送信息</button>
					</c:if>
					<div class="dropdown" style="float: right; margin-right: 10%">
						<button type="button" class="btn dropdown-toggle"
							id="dropdownMenu1" data-toggle="dropdown">
							查看状态 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu"
							aria-labelledby="dropdownMenu1">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/findAllEmail?tag=4"
								onclick="$('div#main').load(this.href);return false;">全部</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/findAllEmail?tag=2"
								onclick="$('div#main').load(this.href);return false;">发送</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/findAllEmail?tag=0"
								onclick="$('div#main').load(this.href);return false;">未读</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/findAllEmail?tag=1"
								onclick="$('div#main').load(this.href);return false;">已读</a></li>
						</ul>
					</div>
				</caption>
				<tr>
					<th>序号</th>
					<th>发送人</th>
					<th>收件人</th>
					<th>标题</th>
					<th>发送时间</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${emails.pages }" var="item" varStatus="status">
					<tr>
						<td>${status.index+1 }</td>
						<td>${item.sendUsername }</td>
						<td>${item.toUsername==''?'管理员':item.toUsername }</td>
						<td>${item.title }</td>
						<td>${item.time }</td>
						<td>${item.isSend==1?'发送':item.isRead==0?'未读':item.isRead==1?'已读':'已回复' }</td>
						<td><input class="btn btn-default" type="button" onclick="findDetail(${item.id })" value="查看"><input class="btn btn-default" type="button" onclick="deleteEmail(${item.id})" value="删除"></td>
					</tr>
					</c:forEach>
			</table>
			<ul class="pagination">
				
				<li><a href="${APP_PATH }/index/findAllEmail?page=${emails.current}&&tag=${tag}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&laquo;</a></li>
				<li><a href="${APP_PATH }/index/findAllEmail?page=${emails.current+1}&&tag=${tag}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">${emails.current+1}</a></li>
				<c:if test="${emails.current+1>=emails.countPage}">
				<li><a href="${APP_PATH }/index/findAllEmail?page=${emails.current+1}&&tag=${tag}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
				<c:if test="${emails.current+1<emails.countPage}">
				<li><a href="${APP_PATH }/index/findAllEmail?page=${emails.current+2}&&tag=${tag}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
			</ul>
<script type="text/javascript">
	function addEmail()
	{
		var html = 
				"<label>标题：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"title\"  name=\"title\" placeholder=\"请输入标题\" type=\"text\" class=\"form-control\">"
				+ "<span style=\"color: red;\"></span>"
				+ "</div>"
				+ "</div>"
				+ "<label>内容：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<textarea id=\"textcontent\" name=\"content\" placeholder=\"请输入内容\" type=\"text\" class=\"form-control\" ></textarea>"
				+ "</div></div>";
		$("#myModalLabel").html("添加信息");
		$("#checkSubmit").html("发送");
		$("#checkSubmit").attr("onclick","addEmailSubmit()");
		$(".modal-body").append(html);
		$("#myModal").modal('show');
	}
	
	
	/* 信息提交*/
	function addEmailSubmit()
	{	
		var title=$("#title").val();
		var content=$("#textcontent").val();
		if(title=="")
			{
			alert("标题不能为空！")
			return false;
			}
		if(content=="")
		{
		alert("内容不能为空！")
		return false;
		}
		$.ajax({
			type:'post',
			url:'/depot-system/index/email/addEmail',
			datatype:'json',
			data:$("#checkForm").serializeArray(),
			success:function(data){
				if(data.code==100)
					{
					alert(data.extend.va_msg);
					$("#myModal").modal('hide');
					$("#findEmail").attr("href","${APP_PATH }/index/findAllEmail");
					$("#findEmail").click();
					}else{
					alert(data.extend.va_msg);
					$("#myModal").modal('hide');
					}
			}
		}) 
	}
	
	function findDetail(item)
	{
		 $.ajax({
			type:'get',
			datatype:'json',
			url:'/depot-system/index/email/detail',
			data:{id:item},
			success:function(data){
				if(data.code==100)
					{
					var html = "<label>标题：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input id=\"sendtitle\" value=\""+data.extend.email.title+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div>"
						+ "</div>"
						+"<label>内容：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<textarea id=\"textcontent\" name=\"content\"  readonly  type=\"text\" class=\"form-control\" >"+data.extend.email.content+"</textarea>"
						+ "</div>"
						+ "</div>";
						$("#myModalLabel").html("信息");
						if(data.extend.respon==1)
							{
							$("#checkSubmit").html("回复");
							$("#checkSubmit").attr("onclick","addEmailRespon("+data.extend.email.id+")");
							}
						else{
							$("#checkSubmit").hide();
						}
						$(".modal-body").append(html);
						$("#myModal").modal('show');
					}
				else{
					alert(data.extend.va_msg);
					$("#myModal").modal('hide');
				}
			}
		}) 
	}
	
	
	function addEmailRespon(id)
	{
		var title=$("#sendtitle").val();
		var html ="<label>标题：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<input id=\"title\" name=\"title\" value=\""+"回复："+title+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
			+ "</div>"
			+ "</div>"
			+"<input id=\"id\" name=\"id\" value="+id+" hidden=\"hidden\"/>" 
			+"<label>内容：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<textarea id=\"textcontent\" name=\"content\" placeholder=\"请输入内容\" type=\"text\" class=\"form-control\" ></textarea>"
			+ "</div>"
			+ "</div>";
			$("#myModalLabel").html("回复信息");
			$(".modal-body").text('');
			$(".modal-body").append(html);
			$("#checkSubmit").html("发送");
			$("#checkSubmit").attr("onclick","responEmailSubmit()");
	}
	
	function responEmailSubmit()
	{
		var content=$("#textcontent").val();
		if(content=="")
			{
			alert("内容不能为空!");
			return false;
			}
		$.ajax({
			type:'post',
			url:'/depot-system/index/email/responEmailSubmit',
			datatype:'json',
			data:$("#checkForm").serializeArray(),
			success:function(data){
				if(data.code==100){
					alert("发送成功!");
					$("#myModal").modal('hide');
					$("#findEmail").attr("href","${APP_PATH }/index/findAllEmail");
					$("#findEmail").click();
				}else{
					alert("发送失败!");
				}
			}
		})
	}

	/* 删除违规模态框显示*/
	function deleteEmail(item) {
		var cardnum=$("#alert_cardnum"+status).text();
		var html = "<label>确认删除该信息吗？</label><div style=\"width: 30%;\">";
		$("#myModalLabel").html("删除信息");
		$("#checkSubmit").html("删除");
		$("#checkSubmit").attr("onclick","deleteEmailSubmit("+item+")");
		$(".modal-body").append(html);
		$("#myModal").modal('show'); 
	}
	
	function deleteEmailSubmit(item)
	{
		$.ajax({
			type:'post',
			datatype:'json',
			data:{id:item},
			url:'/depot-system/index/email/deleteEmai',
			success:function(data){
				if(data.code==100)
					{
					alert("删除成功！");
					$("#myModal").modal('hide');
					$("#findEmail").attr("href","${APP_PATH }/index/findAllEmail");
					$("#findEmail").click();
					}
				else{
					alert("删除失败！");
					$("#myModal").modal('hide');
				}
			}
		})
	}
	
	function findByContent()
	{
		var content=$("#content").val();
		$("#findEmail").attr("href","${APP_PATH }/index/findAllEmail?content="+content);
		$("#findEmail").click();
	}
</script>