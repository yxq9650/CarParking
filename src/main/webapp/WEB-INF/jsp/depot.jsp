<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<table class="table">
				<caption>
					<div style="float: left; line-height: 10px; padding: 10px 10px;">历史停车管理</div>
					<div class="col-lg-6" style="width: 30%; float: left;">
						<div class="input-group">
						<c:if test="${sessionScope.user.role!=3 }">
							<input id="number" placeholder="请输入车位号/卡号/车牌号" type="text" class="form-control" >
						</c:if>
						<c:if test="${sessionScope.user.role==3 }">
							<input id="number" placeholder="车牌号" type="text" class="form-control" >
						</c:if>
							 <span
								class="input-group-btn">
								<button class="btn btn-default" onclick="findDepotNum()" type="button">查询</button>
								<a id="findAllDepot" href="" target="main"
					onclick="$('div#main').load(this.href);return false;"></a>
							</span>
						</div>
						<!-- /input-group -->
					</div>
				</caption>
				<tr>
					<th>序号</th>
					<th>车位号</th>
					<th>卡号</th>
					<th>车牌号</th>
					<th>入库时间</th>
					<th>出库时间</th>
					<th>查看</th>
				</tr>
				<c:forEach items="${parkinfoallDatas.pages }" var="item" varStatus="status">
					<tr>
						<td>${status.index+1 }</td>
						<td>${item.parknum }</td>
						<td>${item.cardnum }</td>
						<td>${item.carnum }</td>
						<td>${item.parkin }</td>
						<td>${item.parkout }</td>
						<td><input class="btn btn-default" onclick="findParkinfoById(${item.id})" type="button" value="查看"></td>
					</tr>
					</c:forEach>
			</table>
			<ul class="pagination">
				
				<li><a href="${APP_PATH }/index/findAllDepot?tag=${parkinfoallDatas.tag}&&page=${parkinfoallDatas.current}&&name=${parkinfoallDatas.extra}" 
				target="main"
					onclick="$('div#main').load(this.href);return false;">&laquo;</a></li>
				<li><a href="${APP_PATH }/index/findAllDepot?tag=${parkinfoallDatas.tag}&&page=${parkinfoallDatas.current+1}&&name=${parkinfoallDatas.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">${parkinfoallDatas.current+1}</a></li>
				<c:if test="${parkinfoallDatas.current+1>=parkinfoallDatas.countPage}">
				<li><a href="${APP_PATH }/index/findAllDepot?tag=${parkinfoallDatas.tag}&&page=${parkinfoallDatas.current+1}&&name=${parkinfoallDatas.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
				<c:if test="${parkinfoallDatas.current+1<parkinfoallDatas.countPage}">
				<li><a href="${APP_PATH }/index/findAllDepot?tag=${parkinfoallDatas.tag}&&page=${parkinfoallDatas.current+2}&&name=${parkinfoallDatas.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
			</ul>
<script type="text/javascript">
	//查看详情
	function findParkinfoById(item){
		$.ajax({
			type:'post',
			datatype:'json',
			data:{id:item},
			url:'/depot-system/index/depot/findParkinfoById',
			success:function(data){
				if(data.code==100)
					{
					var html = "<label>车牌号：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input value=\""+data.extend.parkinfoall.carnum+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div>"
						+ "</div>"
						+"<label>停车卡号：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input value=\""+data.extend.parkinfoall.cardnum+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div>"
						+ "</div>"
						+"<label>入库时间：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input value=\""+data.extend.parkinfoall.parkin+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div>"
						+ "</div>"
						+ "<label>出库时间：</label><div style=\"width: 30%;\">"
						+ "<div class=\"input-group\">"
						+ "<input value=\""+data.extend.parkinfoall.parkout+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
						+ "</div></div>";
						$("#myModalLabel").html("收入详情");
						$("#checkSubmit").hide();
						$(".modal-body").append(html);
						$("#myModal").modal('show');
					}
				else{
					alert(data.extend.va_msg);
					return false;
				}
			}
		})
	}
	
	
	function findDepotNum()
	{
		var number=$("#number").val();
				$("#findAllDepot").attr("href","${APP_PATH }/index/findAllDepot?name="+number);
				$("#findAllDepot").click();
		
	}
</script>