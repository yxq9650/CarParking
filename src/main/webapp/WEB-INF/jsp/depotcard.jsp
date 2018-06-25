<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a id="findDepotcard" href="" target="main"
					onclick="$('div#main').load(this.href);return false;"></a>
	<table class="table">
				<caption>
					<div style="float: left; line-height: 10px; padding: 10px 10px;">停车卡管理</div>
					<c:if test="${sessionScope.user.role!=3 }">
					<div class="col-lg-6" style="width: 30%; float: left;">
						<div class="input-group">
							<input id="cardnum2" placeholder="请输入卡号" type="text" class="form-control" > <span
								class="input-group-btn">
								<button class="btn btn-default" type="button" onclick="findDepotcardByCardnum()">查询</button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
					<button style="float: left;" class="btn btn-default" type="button" onclick="addDepotCard()">添加停车卡</button>
					</c:if>
					<button style="float: right; margin-right: 30px" class="btn btn-default" type="button" onclick="rechargeDepotCard()">充值停车卡</button>
				</caption>
				<tr>
					<th>序号</th>
					<th>卡号</th>
					<th>卡类型</th>
					<th>余额</th>
					<th>持卡人</th>
					<th>发卡时间</th>
					<th>挂失</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${depotcardManagerDatas.pages }" var="item" varStatus="status">
					<tr>
						<td>${status.index+1 }</td>
						<td id="alert_cardnum${status.count}">${item.cardnum }</td>
						<td>${item.type }</td>
						<td>${item.money }</td>
						<td>${item.username }</td> 	
						<td>${item.time }</td>
						<td>${item.islose==0?"否":"是" }</td>
						<td><input class="btn btn-default" type="button" onclick="alertCard(${status.count})" value="修改"><c:if test="${sessionScope.user.role!=3 }"><input class="btn btn-default" type="button" onclick="deleteCard(${status.count})" value="删除"></c:if></td>
					</tr>
					</c:forEach>
			</table>
			<ul class="pagination">
				
				<li><a href="${APP_PATH }/index/toDepotcardIndex?tag=${depotcardManagerDatas.tag}&&page=${depotcardManagerDatas.current}&&cardnum=${depotcardManagerDatas.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&laquo;</a></li>
				<li><a href="${APP_PATH }/index/toDepotcardIndex?tag=${depotcardManagerDatas.tag}&&page=${depotcardManagerDatas.current+1}&&cardnum=${depotcardManagerDatas.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">${depotcardManagerDatas.current+1}</a></li>
				<c:if test="${depotcardManagerDatas.current+1>=depotcardManagerDatas.countPage}">
				<li><a href="${APP_PATH }/index/toDepotcardIndex?tag=${depotcardManagerDatas.tag}&&page=${depotcardManagerDatas.current+1}&&cardnum=${depotcardManagerDatas.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
				<c:if test="${depotcardManagerDatas.current+1<depotcardManagerDatas.countPage}">
				<li><a href="${APP_PATH }/index/toDepotcardIndex?tag=${depotcardManagerDatas.tag}&&page=${depotcardManagerDatas.current+2}&&cardnum=${depotcardManagerDatas.extra}"
				target="main"
					onclick="$('div#main').load(this.href);return false;">&raquo;</a></li>
				</c:if>
			</ul>
			
<script type="text/javascript">
/* 添加停车卡模态框显示*/
function addDepotCard() {
	$.ajax({
		type:'get',
		url:'/depot-system/index/card/findAllCardType',
		datatype:'json',
		data:'',
		success:function(data){
			debugger;
			var option="";
			if(data.code==100)
				{
				for(var i=0;i<(data.extend.cardTypes).length;i++)
					{
					option+="<option value=\""+(i+1)+"\">"+data.extend.cardTypes[i].type+"</option>";
					}
	var html = "<input id=\"payid\" name=\"payid\"  value=\"1\" hidden=\"hidden\"/>"
			+"<label>用户手机：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<input id=\"username\" name=\"username\" placeholder=\"请输入用户手机\" type=\"text\" class=\"form-control\">"
			+ "</div>"
			+ "</div>"
			+"<label>用户姓名：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<input id=\"name\" name=\"name\" placeholder=\"请输入用户姓名\" type=\"text\" class=\"form-control\">"
			+ "</div>"
			+ "</div>"
			+ "<label>金额：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<input id=\"money\" name=\"money\" placeholder=\"输入金额\" type=\"text\" class=\"form-control\">"
			+ "</div></div>"
			+ "<label>类型：</label>"
			+"<select id=\"type\" name=\"type\" style=\"width:100px\" class=\"form-control\"> "
			+option;
			+"</select>";
	$("#myModalLabel").html("添加停车卡");
	$("#checkSubmit").html("添加");
	$("#checkSubmit").attr("onclick","addDepotCardPay()");
	$(".modal-body").append(html);
	$("#myModal").modal('show');
				}
		}
	}) 
}

/* 添加停车卡付款 */
function addDepotCardPay()
{
	var username=$("#username").val();
	var name=$("#name").val();
	var money=$("#money").val();
	var type=$("#type").val();
	if(username.trim()=="")
		{
		alert("用户手机不能为空！");
		return false;
		}
	if(name.trim()=="")
	{
	alert("用户姓名不能为空！");
	return false;
	}
	if(money.trim()=="")
	{
	alert("金额不能为空！");
	return false;
	}
	if(type==2)
	{
		if(money<1920)
			{
			alert("月卡扣费为1920，金额需要大于1920.");
			return false;
			}
	}
	if(type==3)
	{
		if(money<21120)
		{
		alert("年卡扣费为21120，金额需要大于21120.");
		return false;
		}
	}
	$("#pay_zfb").click();
	$("#myModal1").modal('show');
	$("#zfb_text").text(money);
	$("#wx_text").text(money);
	$("#cash_text").text(money);
	$("#pay_money").val(money);
	$("#paySubmit").attr("onclick","addDepotCardSubmit()");
}

/* 添加停车卡提交 */
function addDepotCardSubmit(){
	$.ajax({
		type:'post',
		url:'/depot-system/index/card/addDepotCard',
		datatype:'json',
		data:$("#checkForm").serializeArray(),
		success:function(data){
			if(data.code==100)
				{
				alert("添加成功！您的卡号为："+data.extend.depotcard.cardnum+"。<br/>账号密码为："+data.extend.username+"。");
				}else{
				alert("添加失败！账号已存在，请重新输入。");
				return false;
				}
			$("#myModal").modal('hide');
			$("#myModal1").modal('hide');
			$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex");
			$("#findDepotcard").click();
		}
	})
}

function findDepotcardByCardnum()
{
	var cardnum=$("#cardnum2").val();
			$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex?cardnum="+cardnum);
			$("#findDepotcard").click();
	
}

/* 修改模态框显示*/
function alertCard(status) {
	var cardnum=$("#alert_cardnum"+status).text();
	var losebutton='';
	$.ajax({
		type:'get',
		url:'/depot-system/index/card/findDepotCardByCardnum',
		datatype:'json',
		data:{'cardnum':cardnum},
		success:function(data){
			debugger;
			var option="";
			if(data.code==100)
				{
				for(var i=0;i<(data.extend.cardTypes).length;i++)
					{
					option+="<option value=\""+(i+1)+"\">"+data.extend.cardTypes[i].type+"</option>";
					}
	var html = // 用什么方式支付（0现金，1支付宝，2微信，9从卡中扣费）
			"<input id=\"alertpayid\" name=\"alertpayid\" value=\""+9+"\" hidden=\"hidden\"/>"
			// 需要支付金额 
			+"<input id=\"alertpay_money\" name=\"alertpay_money\" value=\""+0+"\" hidden=\"hidden\"/>"
			// 扣费还是月卡或年卡未到期 (0扣费，1不用扣费，9付钱)
			+"<input id=\"alertpay_type\" name=\"alertpay_type\" value=\""+9+"\" hidden=\"hidden\"/>"
			+"<label>卡号：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<input id=\"cardnum\" name=\"cardnum\" value=\""+data.extend.depotcard.cardnum+"\" type=\"text\" class=\"form-control\" readonly >"
			+ "</div>"
			+ "</div>"
			+ "<label>持卡人：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<input id=\"username\" name=\"username\" value=\""+data.extend.user.username+"\" type=\"text\" class=\"form-control\" readonly>"
			+ "</div></div>"
			+ "<label>挂失：</label>"
			+"<select id=\"islose\" name=\"islose\" style=\"width:100px\" class=\"form-control\"> "
			+"<option value=\"0\">否</option><option value=\"1\">是</option> </select>";
			if(data.extend.user_role!=3)
			{
			html+="<label>卡类型：</label>"
			+"<select id=\"type\" name=\"type\" style=\"width:100px\" class=\"form-control\"> "
			+option
			+" </select>";
			}
	$("#myModalLabel").html("修改停车卡");
	$("#checkSubmit").html("修改");
	if(data.extend.depotcard.islose==1)
	{
	$("#loseSubmit").show();
	$("#loseSubmit").attr("onclick","changeLoseCardSubmit()");
	}
	$("#checkSubmit").attr("onclick","isAlertType()");
	$(".modal-body").append(html);
	$("#myModal").modal('show'); 
	$("#type").val(data.extend.cardType.id);
	$("#islose").val(data.extend.depotcard.islose);
		}
	$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex");
	$("#findDepotcard").click();
		}
		
	}) 
}

//提交更换丢失的卡号
function changeLoseCardSubmit()
{
	$.ajax({
		type:'post',
		url:'/depot-system/index/card/changeLoseCard',
		datatype:'text',
		data:$("#checkForm").serializeArray(),
		contentType:'application/x-www-form-urlencoded',
		success:function(data){
			if(data.code==100)
				{
				$("#myModal").modal('hide');
				$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex");
				$("#findDepotcard").click();
				}else{
				alert("系统错误！");
				}
			
		}
	})
}

function isAlertType(){
	//先判断是否修改卡类型(pay_type  (0扣费，9付钱(默认)))
	$.ajax({
		type:'post',
		url:'/depot-system/index/card/isAlertType',
		datatype:'text',
		async: false,
		data:$("#checkForm").serializeArray(),
		contentType:'application/x-www-form-urlencoded',
		success:function(data){
			if(data.code==100)
				{
				if(data.extend.money_pay==0)
					{
					$("#alertpay_type").val(0);
					$("#alertpay_money").val(0);
					}
				else{
					$("#alertpay_type").val(0);
					$("#alertpay_money").val(data.extend.money_pay);
				}
				//没有改变type或者足够扣费
					alertDepotCardSubmit();
				}
			else{
				$("#myModal1").modal('show');
				$("#zfb_text").text(data.extend.money_pay);
				$("#wx_text").text(data.extend.money_pay);
				$("#cash_text").text(data.extend.money_pay);
				$("#alertpay_money").val(data.extend.money_pay);
                $("#paySubmit").attr("onclick","alertDepotCardSubmit()");
			}
		}
	})
}

/* 修改停车卡提交 */
function alertDepotCardSubmit(){
	var payid=$("#payid").val();
	if(payid!=null&&payid!='')
		{
	$("#alertpayid").val(payid);
		}
	$.ajax({
		type:'post',
		url:'/depot-system/index/card/alertDepotCard',
		datatype:'json',
		data:$("#checkForm").serializeArray(),
		success:function(data){
			if(data.code==100)
				{
				$("#myModal").modal('hide');
				$("#myModal1").modal('hide');
				$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex");
				$("#findDepotcard").click();
				}else{
				alert("停车卡没有修改");
				}
		}
	})
}


/* 删除停车卡模态框显示*/
function deleteCard(status) {
	var cardnum=$("#alert_cardnum"+status).text();
	var html = "<label>确认删除"+cardnum+"这张停车卡吗？</label><div style=\"width: 30%;\">";
	$("#myModalLabel").html("删除停车卡");
	$("#checkSubmit").html("删除");
	$("#checkSubmit").attr("onclick","deleteDepotCardSubmit("+status+")");
	$(".modal-body").append(html);
	$("#myModal").modal('show'); 
}

/* 删除停车卡提交 */
function deleteDepotCardSubmit(status){
	var cardnum=$("#alert_cardnum"+status).text();
	$.ajax({
		type:'post',
		url:'/depot-system/index/card/deleteDepotCard',
		datatype:'text',
		data:{"cardnum":cardnum},
		contentType:'application/x-www-form-urlencoded',
		success:function(data){
			if(data.code==100)
				{
				$("#myModal").modal('hide');
				$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex");
				$("#findDepotcard").click();
				alert("删除成功！");
				}
			else{
				$("#myModal").modal('hide');
				$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex");
				$("#findDepotcard").click();
				alert(data.extend.va_msg);
			}
		}
	})
}


/* 充值停车卡模态框显示*/
function rechargeDepotCard() {
	var html = "<input id=\"payid\" name=\"payid\"  value=\"1\" hidden=\"hidden\"/>"
			+"<input  name=\"judge\" value='0' hidden=\"hidden\">"
			+"<label>停车卡：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<input onblur=\"checkDepotCard()\" id=\"cardnum\" name=\"cardnum\" placeholder=\"请输入停车卡\" type=\"text\" class=\"form-control\">"
			+ "<span id=\"spancard\" style=\"color: red;\"></span>"
			+ "</div>"
			+ "</div>"
			+"<label>充值金额：</label><div style=\"width: 30%;\">"
			+ "<div class=\"input-group\">"
			+ "<input id=\"money\" name=\"money\" placeholder=\"请输入金额\" type=\"text\" class=\"form-control\">"
			+ "</div>"
			+ "</div>";
	$("#myModalLabel").html("充值停车卡");
	$("#checkSubmit").html("充值");
	$("#checkSubmit").attr("onclick","rechargeDepotCardPay()");
	$(".modal-body").append(html);
	$("#myModal").modal('show');
}

//充值卡支付
function rechargeDepotCardPay()
{
	var cardnum=$("#cardnum").val();
	var money=$("#money").val();
	var judge=$("#judge").val();
	if(cardnum=="")
	{
	alert("停车卡不能为空!");
	return false;
	}
if(judge==1)
	{
	alert("该停车卡不存在！");
	return false;
	}
if(money.trim()=="")
	{
	alert("充值金额不能为空!");
	return false;
	}
	$.ajax({
		type:'post',
		url:'/depot-system/index/card/findCoupon',
		datatype:'text',
		data:{"cardnum":cardnum},
		contentType:'application/x-www-form-urlencoded',
		success:function(data){
			if(data.code==100)
				{
				money-=data.extend.val;
				if(money<0)
					{
					money=0;
					}
				}
			$("#pay_zfb").click();
			$("#myModal1").modal('show');
			$("#zfb_text").text(money);
			$("#wx_text").text(money);
			$("#cash_text").text(money);
			$("#pay_money").val(money);
			$("#paySubmit").attr("onclick","rechargeDepotCardSubmit()");
		}
		})
}


//检查停车卡是否存在
function checkDepotCard()
{
	var cardnum=$("#cardnum").val();
	$.ajax({
		type:'get',
		url:'/depot-system/index/card/findDepotCardByCardnum',
		datatype:'json',
		data:{"cardnum":cardnum},
		success:function(data){
			if (data.code == 100) {
				$("#cardnum").next("span").text("");
				$("#judge").val(0);
			} else {
				$("#cardnum").next("span").text("该停车卡不存在，请重新输入！");
				$("#judge").val(1);
			}
		}
	})
}

//充值提交
function rechargeDepotCardSubmit()
{
	debugger;
	$.ajax({
		type:'post',
		url:'/depot-system/index/card/rechargeDepotCardSubmit',
		datatype:'json',
		data:$("#checkForm").serializeArray(),
		success:function(data){
			if(data.code==100)
				{
				$("#myModal").modal('hide');
				alert("充值成功！");
				$("#myModal1").modal('hide');
				$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex");
				$("#findDepotcard").click();
				}
			else{
				$("#myModal").modal('hide');
				alert(data.extend.va_msg);
				$("#myModal1").modal('hide');
				$("#findDepotcard").attr("href","${APP_PATH }/index/toDepotcardIndex");
				$("#findDepotcard").click();
			}
		}
	})
}
</script>