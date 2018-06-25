<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a id="findAllIllegalinfo" href="" target="main"
	onclick="$('div#main').load(this.href);return false;"></a>
	<table class="table">
				<caption>
					<div style="float: left; line-height: 10px; padding: 10px 10px;">违规管理</div>
					<c:if test="${sessionScope.user.role!=3 }">
					<div class="col-lg-6" style="width: 30%; float: left;">
						<div class="input-group">
							<input id="name" placeholder="请输入卡号/车牌号" type="text" class="form-control" > <span
								class="input-group-btn">
								<button class="btn btn-default" onclick="findIllegalByName()" type="button">查询</button>
								<a id="findIllegal" href="" target="main"
					onclick="$('div#main').load(this.href);return false;"></a>
							</span>
						</div>
						<!-- /input-group -->
					</div>
					<button style="float: left;" class="btn btn-default" type="button" onclick="addIllegal()">添加违规</button>
					</c:if>
				</caption>
				<tr>
					<th>序号</th>
					<th>卡号</th>
					<th>车牌号</th>
					<th>违规时间</th>
					<th>记录人员</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${illegalInfo.pages }" var="item" varStatus="status">
					<tr>
						<td>${status.index+1 }</td>
						<td>${item.cardnum }</td>
						<td>${item.carnum }</td>
						<td>${item.formatDate }</td>
						<td>${item.username }</td>
						<td><input class="btn btn-default" type="button" onclick="findIllegalInfo(${item.id })" value="查看"><input class="btn btn-default" type="button" onclick="deleteIllegalInfo(${item.id})" value="删除"></td>
					</tr>
					</c:forEach>
			</table>
			<ul class="pagination">
				
				<li><a href="${APP_PATH }/index/findAllIllegalinfo?tag=${illegalInfo.tag}&&page=${illegalInfo.current}&&name=${illegalInfo.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&laquo;</a></li>
				<li><a href="${APP_PATH }/index/findAllIllegalinfo?tag=${illegalInfo.tag}&&page=${illegalInfo.current+1}&&name=${illegalInfo.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">${illegalInfo.current+1}</a></li>
				<c:if test="${illegalInfo.current+1>=illegalInfo.countPage}">
				<li><a href="${APP_PATH }/index/findAllIllegalinfo?tag=${illegalInfo.tag}&&page=${illegalInfo.current+1}&&name=${illegalInfo.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
				<c:if test="${illegalInfo.current+1<illegalInfo.countPage}">
				<li><a href="${APP_PATH }/index/findAllIllegalinfo?tag=${illegalInfo.tag}&&page=${illegalInfo.current+2}&&name=${illegalInfo.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
			</ul>
			
<script type="text/javascript">
	function addIllegal()
	{
		var html = "<input id=\"judgecarnum\" name=\"judgecarnum\" value=\"0\" hidden=\"hidden\"/>"
				+"<input id=\"parkin\" name=\"parkin\" value=\"\" hidden=\"hidden\"/>"
				+ "<label>车牌号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"carNum\" onblur=\"findCarnum()\" name=\"carNum\" placeholder=\"请输入车牌号\" type=\"text\" class=\"form-control\">"
				+ "<span style=\"color: red;\"></span>"
				+ "</div>"
				+ "</div>"
				+"<label>停车卡号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"cardNum\" name=\"cardNum\" readonly type=\"text\" class=\"form-control\">"
				+ "</div>"
				+ "</div>"
				+ "<label>违规原因：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<textarea id=\"illegalInfo\" name=\"illegalInfo\" placeholder=\"请输入违规原因\" type=\"text\" class=\"form-control\" ></textarea>"
				+ "</div></div>";
		$("#myModalLabel").html("添加违规信息");
		$("#checkSubmit").html("添加");
		$("#checkSubmit").attr("onclick","addIllegalSubmit()");
		$(".modal-body").append(html);
		$("#myModal").modal('show');
	}
	
	function findCarnum() {
		var carnum = $("#carNum").val();
		if (carnum == ""|| carnum==null) {

		} else {
			$.ajax({
				type:'get',
				//调用的是查询车位信息，传参需要传parameter为cardnum。
				url:'/depot-system/index/check/findParkinfoByCardnum',
				datatype : 'json',
				data:{cardnum:carnum},
				success : function(data) {
					if (data.code == 100) {
						$("#carNum").next("span").text("");
						$("#cardNum").val(data.extend.parkInfo.cardnum);
						$("#judgecarnum").val(1);
						$("#parkin").val(data.extend.parkInfo.parkin);
					} else {
						$("#carNum").next("span").text("该车牌号不存在，请重新输入！");
						$("#judgecarnum").val(0);
					}
				}
			})
		}
	}
	
	/* 违规提交*/
	function addIllegalSubmit()
	{	
		var judgecarnum=$("#judgecarnum").val();
		var carnum=$("#carnum").val();
		var illegalInfo=$("#illegalInfo").val();
		if(carnum=="")
			{
			alert("车牌号不能为空！")
			return false;
			}
		if(illegalInfo=="")
		{
		alert("违规原因不能为空！")
		return false;
		}
		if(judgecarnum==0)
		{
			alert("该车牌号没有进行停车！")
			return false;
		}
		$.ajax({
			type:'post',
			url:'/depot-system/index/check/illegalSubmit',
			datatype:'text',
			data:$("#checkForm").serializeArray(),
			contentType:'application/x-www-form-urlencoded',
			success:function(data){
				if(data.code==100)
					{
					alert(data.extend.va_msg);
					$("#myModal").modal('hide');
					$("#findAllIllegalinfo").attr("href","${APP_PATH }/index/findAllIllegalinfo");
					$("#findAllIllegalinfo").click();
					}else{
					alert(data.extend.va_msg);
					$("#myModal").modal('hide');
					}
			}
		}) 
	}
	
	function findIllegalInfo(item)
	{
		$.ajax({
			type:'get',
			datatype:'json',
			url:'/depot-system/index/illegal/findIllegalInfo',
			data:{id:item},
			success:function(data){
				if(data.code==100)
					{
					var html = "<label>车牌号：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input value=\""+data.extend.illegalInfo.carnum+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div>"
						+ "</div>"
						+"<label>停车卡号：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input value=\""+data.extend.illegalInfo.cardnum+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div>"
						+ "</div>"
						+"<label>违规内容：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<textarea  readonly type=\"text\" class=\"form-control\" >"+data.extend.illegalInfo.illegalInfo+"</textarea>"
						+ "</div>"
						+ "</div>"
						+ "<label>记录人员：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input value=\""+data.extend.illegalInfo.username+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div></div>"
						+ "<label>违规时间：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input value=\""+data.extend.illegalInfo.formatDate+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div></div>";
						$("#myModalLabel").html("违规详情");
						$("#checkSubmit").hide();
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

	/* 删除违规模态框显示*/
	function deleteIllegalInfo(item) {
		var cardnum=$("#alert_cardnum"+status).text();
		var html = "<label>确认删除该违规吗？</label><div style=\"width: 30%;\">";
		$("#myModalLabel").html("删除违规");
		$("#checkSubmit").html("删除");
		$("#checkSubmit").attr("onclick","deleteIllegalInfoSubmit("+item+")");
		$(".modal-body").append(html);
		$("#myModal").modal('show'); 
	}
	
	function deleteIllegalInfoSubmit(item)
	{
		$.ajax({
			type:'post',
			datatype:'json',
			data:{id:item},
			url:'/depot-system/index/illegal/deleteIllegalInfo',
			success:function(data){
				if(data.code==100)
					{
					alert("删除成功！");
					$("#myModal").modal('hide');
					$("#findAllIllegalinfo").attr("href","${APP_PATH }/index/findAllIllegalinfo");
					$("#findAllIllegalinfo").click();
					}
				else{
					alert("删除失败！");
					$("#myModal").modal('hide');
				}
			}
		})
	}
	function findIllegalByName()
	{
		var name=$("#name").val();
				$("#findIllegal").attr("href","${APP_PATH }/index/findAllIllegalinfo?name="+name);
				$("#findIllegal").click();
		
	}
</script>