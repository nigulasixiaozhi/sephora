<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>后台管理</title>
<jsp:include page="/base.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link href="assert/lib/jquery-treetable/css/jquery.treetable.css" rel="stylesheet" type="text/css" />
<link href="assert/lib/jquery-treetable/css/jquery.treetable.theme.default.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="assert/admin/css/index.css" />

</head>
<body>
	<div class="header">
		<span>后台管理</span>
	</div>
	<div class="container-fluid">
		<ul class="nav nav-pills nav-stacked nav-left col-lg-1">
			<li role="presentation" class="active"><a href="admin/userList">用户管理</a></li>
			<li role="presentation"><a href="admin/goCategory">商品目录</a></li>
			<li role="presentation"><a href="admin/goProductList">商品列表</a></li>
			<li role="presentation"><a href="admin/goOrder">订单列表</a></li>
		</ul>
		<div class="content col-lg-11">
			<div class="bg"></div>
			<div id="content">
				<div id="main" style="width: 600px;height:400px;"></div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assert/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assert/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assert/lib/echars-4.6.0/echarts.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".nav-left li a").click(
				function() {
					$(this).parents("li").addClass("active").siblings("li").removeClass("active");
					var url = $(this).attr("href");
					$.ajax({
						type : "post",
						url:url,
						dataType : "html",
						success : function(res) {
							$("#content").html(res);
						}
					})
					return false;
				})
				
				 // 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById('main'));

		        // 指定图表的配置项和数据
		        var option = {
		            title: {
		                text: 'ECharts 入门示例'
		            },
		            tooltip: {},
		            legend: {
		                data:['销量']
		            },
		            xAxis: {
		                data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
		            },
		            yAxis: {},
		            series: [{
		                name: '销量',
		                type: 'bar',
		                data: [5, 20, 36, 10, 10, 20]
		            }]
		        };

		        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption(option);
				
				
	})
	</script>
</body>
</html>