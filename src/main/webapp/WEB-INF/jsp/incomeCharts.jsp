<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>收入来源分析</title>
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
			var weixin = 1;//收入
			var zhifubao = 1;
			var cash = 1;
			$.ajax({
				type : "post",
		
			url : "${pageContext.request.contextPath}/index/incomeCharts1", //请求发送到TestServlet处
			data : {},
			dataType : "json", //返回数据形式为json
			success : function(result) {
				if(result){
					weixin=result.weixin;
					zhifubao=result.zhifubao;
					cash=result.cash;
				}
				myChart.hideLoading(); //隐藏加载动画
					myChart.setOption({ //加载数据图表
					backgroundColor: '#2c343c',

    title: {
        text: '收入分析',
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

    visualMap: {
        show: false,
        min: 80,
        max: 20000,
        inRange: {
            colorLightness: [0, 1]
        }
    },
    series : [
        {
            name:'访问来源',
            type:'pie',
            radius : '55%',
            center: ['50%', '50%'],
            data:[
                {value:weixin, name:'微信收入'},
                {value:zhifubao, name:'支付宝收入'},
                {value:cash, name:'现金收入'}

            ].sort(function (a, b) { return a.value - b.value; }),
            roseType: 'radius',
            label: {
                normal: {
                    textStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    }
                }
            },
            labelLine: {
                normal: {
                    lineStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    },
                    smooth: 0.2,
                    length: 10,
                    length2: 20
                }
            },
            itemStyle: {
                normal: {
          		   color: '#c23531', 
                    shadowBlur: 200,
                    shadowColor: 'rgba(254, 255, 254, 0.5)'
                }
            },

            animationType: 'scale',
            animationEasing: 'elasticOut',
            animationDelay: function (idx) {
                return Math.random() * 200;
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