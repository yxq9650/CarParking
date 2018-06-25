<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>停车位情况</title>
    <!-- 引入 echarts.js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
    <!-- 引入jquery.js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
</head>

<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 1260px;height:580px;"></div>

<script type="text/javascript">

   var myChart = echarts.init(document.getElementById('main'));
    // 显示标题，图例和空的坐标轴
 
			myChart.showLoading();
			var ispark = 0;//情况
			var nopark = 0;
			//var cash = 1;
			$.ajax({
				type : "post",
		
			url : "${pageContext.request.contextPath}/index/line1", //请求发送到TestServlet处
			data : {},
			dataType : "json", //返回数据形式为json
			success : function(result) {
				if(result){
					ispark=result.ispark;
					nopark=result.nopark;
				}
				myChart.hideLoading(); //隐藏加载动画
					myChart.setOption({ //加载数据图表
					//backgroundColor: '#2c343c',

    title: {
        text: '停车场停车情况',
        left: 'center',
        top: 20,
        textStyle: {
            color: '#ccc'
        }
    },


    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
     toolbox: {
        feature: {
            dataView: {show: true, readOnly: false},
            restore: {show: true},
            saveAsImage: {show: true}          
        },
         top: 80,
         right: 180
    },
    legend: {
        orient: 'vertical',
        top: 80,
        left: 180,
        data: ['已停车位','未停车位']
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
    
                {value:ispark, name:'已停车位'},
                {value:nopark, name:'未停车位'}
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 200,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]



});
			}
			}
				
			)
</script>
</body>
</html>