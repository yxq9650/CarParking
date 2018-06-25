<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>基于java的停车场管理系统</title>
<!-- Bootstrap -->
<link href="${APP_PATH }/bootstrap-3.3.5-dist/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link href="${APP_PATH }/bootstrap-3.3.5-dist/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
	<link href="${APP_PATH }/bootstrap-3.3.5-dist/css/fileinput.css"
	rel="stylesheet" media="screen">
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/jquery-3.0.0.min.js"></script>
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/fileinput.js"></script>
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/zh.js"></script>
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/bootstrap-datetimepicker.min.js"></script>
<script src="${APP_PATH }/bootstrap-3.3.5-dist/js/bootstrap-datetimepicker.zh-CN.js"></script>
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
	min-height: 55px;
	background-color: #79d39b;
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
	padding-right: 40px;
}
.dropdown-menu{
	background-color: #79d39b;
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
td {
	text-align: center;
}
tr {
	text-align: center;
}
th {
	text-align: center;
}
</style>
</head>
<body>
	<div class="topscan">
		<div class="top-left"><span class="glyphicon glyphicon-home"></span><b> 基于java的停车场管理系统</b></div>
		
		<div class="user-click">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" style="color: white;"> <span class="glyphicon glyphicon-user"></span>欢迎,
						${sessionScope.user.name } <b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="${APP_PATH }/index/exit"><span class="glyphicon glyphicon-remove"></span>注销</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div>
		<div class="leftscan"
			style="width: 20%; min-height: 100%; float: left; background-color: #eee;">
			<ul style="list-style: none; color: #1963aa;">
				<c:if test="${sessionScope.user.role!=3 }">
				<li><a href="${APP_PATH }/index/toindex?tag=0"><span class="glyphicon glyphicon-log-in"></span> 停车位管理</a></li>
				</c:if>
				<li><a id="depotcardIndex" href="${APP_PATH }/index/toDepotcardIndex" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="glyphicon glyphicon-credit-card"></span> 停车卡管理</a></li>
				<li><a href="${APP_PATH }/index/findAllCoupon" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="	glyphicon glyphicon-usd"></span> 优惠券管理</a></li>
				<li><a href="${APP_PATH }/index/findAllEmail" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="	glyphicon glyphicon-send"></span> 邮箱管理</a></li> 
				<li><a href="${APP_PATH }/index/findAllIllegalinfo" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="glyphicon glyphicon-th-large"></span> 违规管理</a></li>
				<c:if test="${sessionScope.user.role==1 }">
				<li><a href="${APP_PATH }/index/findAllIncome" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="glyphicon glyphicon-yen"></span> 收入管理</a></li>
				</c:if>
				<li><a href="${APP_PATH }/index/findAllUser" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="	glyphicon glyphicon-user"></span> 用户管理</a></li>
				<li><a href="${APP_PATH }/index/findAllDepot" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="glyphicon glyphicon-tags"></span> 历史停车</a></li>
				<c:if test="${sessionScope.user.role==1 }">
				<li><a href="${APP_PATH }/index/system" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="	glyphicon glyphicon-circle-arrow-down"></span> 导出功能</a></li>
				</c:if>
				
			</ul>
		</div>
		<div id="main"
			style="float: left; width: 80%; min-height: 100%; margin-right: 0; border: 1px solid #ccc; background-color: white;">

		<c:if test="${sessionScope.user.role!=3 }">
			<table class="table">
				<caption>
					<div style="float: left; line-height: 10px; padding: 10px 10px;">停车位管理</div>
					<div class="col-lg-6" style="width: 30%; float: left;">
						<div class="input-group">
							<input id="inputcardnum" placeholder="请输入卡号" type="text" class="form-control">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button" onclick="checkOutByCardnum()">出库</button>
							</span>
						</div>
						
						<!-- /input-group -->
					</div>
						<span><input type="button" value="停车情况" onclick="nowCar()" class="btn btn-default"></span> 
						<%-- <a id="depotcardIndex" href="${APP_PATH }/index/line" target="main"
					onclick="$('div#main').load(this.href);return false;"><span class="glyphicon glyphicon-credit-card"></span> 停车情况</a> --%>
					<div class="dropdown" style="float: right; margin-right: 10%">
						<button type="button" class="btn dropdown-toggle"
							id="dropdownMenu1" data-toggle="dropdown">
							查看车位 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu"
							aria-labelledby="dropdownMenu1">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/toindex?tag=0">全部车位</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/toindex?tag=1">正常车位</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/toindex?tag=2">临时车位</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/toindex?tag=3">紧急车位</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
								href="${APP_PATH }/index/toindex?tag=4">置空车位</a></li>
						</ul>
					</div>

				</caption>
				<tr>
					<th>车位号</th>
					<th>状态</th>
					<th>类型</th>
					<th>操作</th>
					<th>查看</th>
				</tr>
				<c:forEach items="${parkspaces.pages }" var="item">
					<tr>
						<td>${item.parkid }</td>
						<td>${item.status==0?"空":"已停" }</td>
						<td>${item.tag==1?"正常车位":item.tag==2?"临时车位":"紧急车位" }</td>
						<td><c:if test="${item.status==0 }">
								<input class="btn btn-default" type="button"
									onclick="checkIn(${item.parkid},${item.id })" value="手动入库">
  										   <!--    <div class="file-container" style="display:inline-block;position:relative;overflow: hidden;vertical-align:middle">
        <button class="btn btn-success fileinput-button" type="button">上传</button>
        <input type="file"   style="position:absolute;top:0;left:0;font-size:34px; opacity:0">
    </div>
 -->
 						<button type="button" class="btn btn-default" data-toggle="modal" data-target="#fileModal" onclick="fileUpload(${item.parkid})">
 							自动入库
						</button>
							</c:if> <c:if test="${item.status!=0 }">
								<input onclick="checkOut(${item.parkid})"
									class="btn btn-default" type="button" value="出库"/>
								<input onclick="addIllegal(${item.parkid})"
									class="btn btn-default" type="button" value="违规"/>
							</c:if>
							</td>
						<td><input class="btn btn-default" type="button" onclick="checkDetail(${item.parkid})" value="查看"></td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				
				<li><a href="${APP_PATH }/index/toindex?tag=${parkspaces.tag}&&page=${parkspaces.current}">&laquo;</a></li>
				<li><a href="${APP_PATH }/index/toindex?tag=${parkspaces.tag}&&page=${parkspaces.current+1}">${parkspaces.current+1}</a></li>
				<c:if test="${parkspaces.current+1>=parkspaces.countPage}">
				<li><a href="${APP_PATH }/index/toindex?tag=${parkspaces.tag}&&page=${parkspaces.current+1}">&raquo;</a></li>
				</c:if>
				<c:if test="${parkspaces.current+1<parkspaces.countPage}">
				<li><a href="${APP_PATH }/index/toindex?tag=${parkspaces.tag}&&page=${parkspaces.current+2}">&raquo;</a></li>
				</c:if>
			</ul>
			</c:if>
		</div>
	</div>
	<!-- 模态框（Modal） -->
	<form id="checkForm">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel"></h4>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button id="loseSubmit" style="display:none" type="button" class="btn btn-primary">更换卡</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="checkSubmit" type="button" class="btn btn-primary">提交更改</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	</form>
	
	<div class="modal fade" id="fileModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog " role="document" style="width:900px" >
    <div class="modal-content" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">上传车辆车牌照片</h4>
      </div>
     	<form action="${pageContext.request.contextPath}/fileUpload1" method="POST" enctype="multipart/form-data"  id="fileUploadForm">
      	<div class="modal-body" >
       	<input  id='id' name='id' value='$(id)' type='hidden'>
		    <input type="file" name="file" class="file" /> 
      	</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="submit" class="btn btn-primary"  >上传云端识别</button>
      </div>
      </form> 
         
    </div>
  </div>
</div>
	
	<div id="payForm">
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">
						<button type="button" onclick="pay_zfb()" style="width: 30%" class="btn btn-default" >支付宝
						</button>
						<button type="button" onclick="pay_wx()" style="width: 30%" class="btn btn-default" >微信
						</button>
						<button type="button" onclick="pay_cash()" style="width: 30%" class="btn btn-default" >现金
						</button>
						</h4>
					</div>
					<div class="modal-body1">
					<div id="pay_zfb">
					<h4>支付宝：<span id="zfb_text"></span>元</h4>
					<img alt="" style="width: 300px;height: 300px;margin-left: 20%" src="${APP_PATH }/pic/zfb.png">
					</div>
					<div id="pay_wx" hidden="hidden">
					<h4>微信：<span id="wx_text"></span>元</h4>
					<img alt="" style="width: 300px;height: 300px;margin-left: 20%" src="${APP_PATH }/pic/wx.png">
					</div>
					<div id="pay_cash" hidden="hidden">
					<h4>现金：<span id="cash_text"></span>元</h4>
					</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="paySubmit" type="button" onclick="" class="btn btn-primary">支付</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
		</div>
	</div>
	<!-- /.modal -->
</body>
<script type="text/javascript">
$(document).ready(function(){
	var role=$("#role").val();
	if(role==3)
		{
			$("#depotcardIndex").click();
		}
	}); 
	$('#myModal').on('hidden.bs.modal', function () {
		$("#checkSubmit").show();
		$(".modal-body").empty();
		$("#loseSubmit").hide();
	})
	$('#myModal1').on('hidden.bs.modal', function () {
		$("#pay_zfb").show();
		$("#pay_cash").hide();
		$("#pay_wx").hide();
		$("#loseSubmit").hide();
	})
	/* 入库模态框显示*/
	function checkIn(parknum,id) {
	    var tem=0;
        $.ajax({
            type: 'post',
            url: '/depot-system/index/depot/checkTem',
            async:false,
            success: function (data) {
                if(data.code==100)
                {
                    tem=1;
                }
            }
        })

		var html = "<input id=\"id\" name=\"id\" value=\""+id+"\" hidden=\"hidden\"/>"
				+"<input id=\"parkNum\" name=\"parkNum\" value=\""+parknum+"\" hidden=\"hidden\"/><label>入库卡号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"cardNum\" name=\"cardNum\" placeholder=\"请输入卡号\" type=\"text\" class=\"form-control\">"
				+ "</div>"
				+ "</div>"
				+ "<label>车牌号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"carNum\" name=\"carNum\" placeholder=\"请输入车牌号\" type=\"text\" class=\"form-control\">"
				+ "</div></div>"
				+ "<label>是否临时停车：</label>"
				+"<select onchange=\"changeParkTem()\" id=\"parkTem\" name=\"parkTem\" style=\"width:100px\" class=\"form-control\"> "
				+"<option value=\"0\">否</option>";
                if(tem==1)
                {
                    html+="<option value=\"1\">是</option>";
                }
                html+="</select>";
		$("#myModalLabel").html("车辆入库");
		$("#checkSubmit").html("入库");
		$("#checkSubmit").attr("onclick","checkInSubmit()");
		$(".modal-body").append(html);
		$("#myModal").modal('show');
	}
	function changeParkTem(){
		var parkTem=$("#parkTem").val();
		if(parkTem==1)
			{
			$("#cardNum").val('');
			$('#cardNum').attr("readonly",true);
			}
		else{
			$('#cardNum').attr("readonly",false);
		}
	}
	/* 文件上传 */
	function fileUpload(parkId)
	 {
		/*  window.location.assign("http://localhost:8080/depot-system/index/incomeCharts") */
		$("#id").val(parkId);
	 }

	/* 自动入库提交 */
	function autoCheckInSubmit(){
		
		$.ajax({
			type:'post',
			url:'/depot-system/fileUpload1',
			datatype:'multipart/form-data',
			data:$("#fileUploadForm").serializeArray(),
			contentType:'application/x-www-form-urlencoded',
			success:function(data){
				if(data.code==100)
					{
					alert("入库成功！");
			
				window.location.href="/depot-system/index/toindex";
					}else{
						alert(data.extend.va_msg);
					}
			}
		})
	}
	
	/* 入库提交 */
	function checkInSubmit(){
		var parkTem=$("#parkTem option:selected").val();
		var carNum=$("#carNum").val();
		var cardNum=$("#cardNum").val();
		if(parkTem==0)
			{
			if(cardNum.trim()=='')
				{
				alert("请输入卡号!");
				return false;
				}
			}
		if(parkTem==1&&cardNum.trim()!='')
			{
				alert("有停车卡不能临时停车!");
			}
		if(carNum.trim()=='')
			{
				alert("请输入车牌号!");
				return false;
			}
		$.ajax({
			type:'post',
			url:'/depot-system/index/check/checkIn',
			datatype:'text',
			data:$("#checkForm").serializeArray(),
			contentType:'application/x-www-form-urlencoded',
			success:function(data){
				if(data.code==100)
					{
					alert("入库成功！");
				$("#myModal").modal('hide');
				window.location.href="/depot-system/index/toindex";
					}else{
						alert(data.extend.va_msg);
					}
			}
		})
	}
	/* 出库模态框显示 */
	function checkOut(parknum) {
		 $.ajax({
			type:'get',
			url:'/depot-system/index/check/findParkinfoByParknum',
			datatype:'json',
			data:{parkNum:parknum},
			success:function(data){
				debugger;
				if(data.code==100)
					{
				var parkTem="否";
				if(data.extend.parkInfo.parktem==1)
					{
					parkTem="是";
					}
				var html = 
				// 用什么方式支付
				"<input id=\"payid\" name=\"payid\" value=\"9\" hidden=\"hidden\"/>"
				// 需要支付金额 
				+"<input id=\"pay_money\" name=\"pay_money\" value=\"0\" hidden=\"hidden\"/>"
				// 扣费还是月卡或年卡未到期 (0扣费，1不用扣费，9付钱)
				+"<input id=\"pay_type\" name=\"pay_type\" value=\"9\" hidden=\"hidden\"/>"
				+"<input id=\"parkNum\" name=\"parkNum\" value=\""+parknum+"\" hidden=\"hidden\"/><label>停车位：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"parknum\" name=\"parknum\" value=\""+parknum+"\" type=\"text\" class=\"form-control\" readonly>"
				+ "</div>"
				+ "</div>"
				+"<label>出库卡号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"cardNum\" name=\"cardNum\" value=\""+data.extend.parkInfo.cardnum+"\" type=\"text\" class=\"form-control\" readonly>"
				+ "</div>"
				+ "</div>"
				+ "<label>车牌号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input id=\"carNum\" name=\"carNum\" value=\""+data.extend.parkInfo.carnum+"\" type=\"text\" class=\"form-control\" readonly >"
				+ "</div></div>"
/* 				+ "<label>是否临时停车：</label><br>"
				+parkTem */
				$("#myModalLabel").html("车辆出库");
				$("#checkSubmit").html("出库");
				$("#checkSubmit").attr("onclick","ispay("+parknum+")");
				$(".modal-body").append(html);
				$("#myModal").modal('show');
					}
			}
		}) 
	}
	/*显示支付宝支付*/
	function pay_zfb()
	{
		$("#pay_zfb").show();
		$("#pay_cash").hide();
		$("#pay_wx").hide();
		$("#payid").val(1);
		
	}
	/*显示微信支付*/
	function pay_wx()
	{
		$("#pay_cash").hide();
		$("#pay_zfb").hide();
		$("#pay_wx").show();
		$("#payid").val(2);
	}
	/*显示现金支付*/
	function pay_cash()
	{
		$("#pay_wx").hide();
		$("#pay_zfb").hide();
		$("#pay_cash").show();
		$("#payid").val(0);
	}
	/*是否扫码支付*/
	function ispay(parknum)
	{
		 $.ajax({
			type:'post',
			url:'/depot-system/index/check/ispay',
			datatype:'json',
			data:{parknum:parknum},
			success:function(data){
				if(data.code==100)
					{
					$("#myModal1").modal('show');
					$("#zfb_text").text(data.extend.money_pay);
					$("#wx_text").text(data.extend.money_pay);
					$("#cash_text").text(data.extend.money_pay);
					$("#pay_money").val(data.extend.money_pay);
					alert(data.extend.va_msg);
					}
				else{
					alert(data.extend.money_pay);
					$("#pay_type").val(data.extend.type);
					$("#pay_money").val(data.extend.money_pay);
					if(data.extend.type==9)
						{
						alert("系统出错！");
						return false;
						}
					//直接用卡扣费
					if(data.extend.type==0)
						{
						checkOutSubmit();
						}
					//月卡或年卡还没到期
					else{
						checkOutSubmit();
					}
				}
				$("#paySubmit").attr("onclick","checkOutSubmit()");
			}
		}) 
	}
	/* 出库提交 */
	function checkOutSubmit(){
		$.ajax({
			type:'post',
			url:'/depot-system/index/check/checkOut',
			datatype:'text',
			data:$("#checkForm").serializeArray(),
			contentType:'application/x-www-form-urlencoded',
			success:function(data){
				$("#myModal").modal('hide');
				window.location.href="/depot-system/index/toindex";
			}
		})
	}
	
	/* 通过卡号/车牌号出库模态框显示 */
	function checkOutByCardnum() {
		var cardnum=$("#inputcardnum").val();
		if(cardnum=="")
			{
			alert("输入不能为空!");
			return false;
			}
		 $.ajax({
			type:'get',
			url:'/depot-system/index/check/findParkinfoByCardnum',
			datatype:'json',
			data:{cardnum:cardnum},
			success:function(data){
				debugger;
				if(data.code==100)
					{
				var parkTem="否";
				if(data.extend.parkInfo.parktem==1)
					{
					parkTem="是";
					}
				var html = "<input id=\"parkNum\" name=\"parkNum\" value=\""+data.extend.parkInfo.parknum+"\" hidden=\"hidden\"/><label>车位号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input readonly id=\"parkNum\" name=\"parkNum\" value=\""+data.extend.parkInfo.parknum+"\" type=\"text\" class=\"form-control\">"
				+ "</div>"
				+ "</div>"
				+"<label>出库卡号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input readonly id=\"cardNum\" name=\"cardNum\" value=\""+data.extend.parkInfo.cardnum+"\" type=\"text\" class=\"form-control\">"
				+ "</div>"
				+ "</div>"
				+ "<label>车牌号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input readonly id=\"carNum\" name=\"carNum\" value=\""+data.extend.parkInfo.carnum+"\" type=\"text\" class=\"form-control\">"
				+ "</div></div>"
		/* 		+ "<label>是否临时停车：</label><br>"
				+parkTem */
				$("#myModalLabel").html("车辆出库");
				$("#checkSubmit").html("出库");
				$("#checkSubmit").attr("onclick","checkOutSubmit()");
				$(".modal-body").append(html);
				$("#myModal").modal('show');
					}
			}
		}) 
	}
	
	
	/* 查看详情模态框显示 */
	function checkDetail(parknum) {
		 $.ajax({
			type:'get',
			url:'/depot-system/index/check/findParkinfoDetailByParknum',
			datatype:'json',
			data:{parkNum:parknum},
			success:function(data){
				var username="";
				if(data.extend.user!=null){
					username=data.extend.user.username;
				}
				if(data.code==100)
					{
				var parkTem="否";
				if(data.extend.parkInfo.parktem==1)
					{
					parkTem="是";
					}
				var html = "<label>停车位号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input value=\""+data.extend.parkInfo.parknum+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
				+ "</div>"
				+ "</div>"
				+"<label>停车用户：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input value=\""+username+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
				+ "</div>"
				+ "</div>"
				+"<label>停车卡号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input value=\""+data.extend.parkInfo.cardnum+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
				+ "</div>"
				+ "</div>"
				+ "<label>车牌号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input value=\""+data.extend.parkInfo.carnum+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
				+ "</div></div>"
				+ "<label>停入时间：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input value=\""+data.extend.parkin+"\" type=\"text\" class=\"form-control\" readonly  unselectable=\"on\">"
				+ "</div></div>"
/* 				+ "<label>是否临时停车：</label><br>"
				+parkTem */
				$("#myModalLabel").html("停车位详情");
				$("#checkSubmit").hide();
				$(".modal-body").append(html);
				$("#myModal").modal('show');
					}
				else{
					alert("该停车位没有停车！");
				}
			}
		}) 
	}
	
	/* 违规模态框显示*/
	function addIllegal(parknum) {
		$.ajax({
			type:'get',
			url:'/depot-system/index/check/findParkinfoByParknum',
			datatype:'json',
			data:{parkNum:parknum},
			success:function(data){
		var html ="<label>车位号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+"<input readonly type=\"text\" class=\"form-control\" name=\"parknum\" value=\""+parknum+"\" />"
				+"</div>"
				+"</div>"
				+"<label>入库卡号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input readonly id=\"cardNum\" name=\"cardNum\" value=\""+data.extend.parkInfo.cardnum+"\" placeholder=\"请输入卡号\" type=\"text\" class=\"form-control\">"
				+ "</div>"
				+ "</div>"
				+ "<label>车牌号：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<input readonly id=\"carNum\" name=\"carNum\" value=\""+data.extend.parkInfo.carnum+"\" placeholder=\"请输入车牌号\" type=\"text\" class=\"form-control\">"
				+ "</div></div>"
				+ "<label>违规原因：</label><div style=\"width: 30%;\">"
				+ "<div class=\"input-group\">"
				+ "<textarea id=\"illegalInfo\" name=\"illegalInfo\" placeholder=\"请输入违规原因\" type=\"text\" class=\"form-control\" ></textarea>"
				+ "</div></div>"
				/*  + "<label>是否临时停车：</label>"
				+"<select id=\"parkTem\" name=\"parkTem\" style=\"width:100px\" class=\"form-control\"> "
				+"<option value=\"0\">否</option><option value=\"1\">是</option> </select>";  */
		$("#myModalLabel").html("添加违规");
		$("#checkSubmit").html("添加");
		$("#checkSubmit").attr("onclick","illegalSubmit()");
		$(".modal-body").append(html);
		$("#myModal").modal('show');
			}
		})
	}
	
	
	/*查看停车情况*/
		function nowCar(){
 			window.location.assign("http://localhost:8080/depot-system/index/line")
 			}
	
	/* 违规提交*/
	function illegalSubmit()
	{
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
				window.location.href="/depot-system/index/toindex";
					}else{
					alert(data.extend.va_msg)
					}
			}
		})
	}
	
	
</script>
</html>