<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<jsp:include page="/base.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
<link rel="stylesheet" type="text/css" href="assert/css/head/Genhead.css" />
<link rel="stylesheet" type="text/css" href="assert/css/MyOrder/MyOrder.css" />
</head>
<body>
	<div class="body container clearfix">
		<!-- 左侧树状导航 -->
		<jsp:include page="/leftTree.jsp"></jsp:include>
		<div class="right-bg fr">
			<div class="title">我的SEPHORA</div>
			<div class="right-content ">
				<ul class="nav clearfix">
					<li><span class="boder">全部</span></li>
					<li><span>待支付</span></li>
					<li><span>处理中</span></li>
					<li><span>配送中</span></li>
					<li><span>已完成</span></li>
				</ul>
				<div id="orderList"></div>
				<!-- <div class="MyOreder-content clearfix">
					<div class="contentLeft fl">
						<div class="number">
							<span>订单号 :</span> <span>1198585318134689</span> <span>2019-03-22 10:10</span>
						</div>
						<ul class="shopingList clearfix">
							<li class="clearfix"><img class="fl" src="assert/img/MyOrder/1_n_06273_350x350.jpg">
								<div class="productName ">MIUMIU</div>
								<div class="productTitle">缪缪粉漾女士香水</div>
								<div class="productSize">规格：瓶</div></li>
							<li>1</li>
							<li>￥620.00</li>
							<li></li>
						</ul>

					</div>
					<ul class="contentRight fl">
						<li>xxx</li>
						<li>
							<p>￥620.00</p>
							<p>(含运费￥0.00)</p>
							<p>在线支付</p>
						</li>
						<li>已取消</li>
						<li>
							<p>再次购买</p>
							<p>订单详情</p>
						</li>
					</ul>
				</div>
				<div class="MyOreder-content clearfix">
					<div class="contentLeft fl">
						<div class="number">
							<span>订单号 :</span> <span>1198585318101562</span> <span>2019-03-21 23:10</span>
						</div>
						<ul class="shopingList clearfix">
							<li class="clearfix"><img class="fl" src="assert/img/MyOrder/1_n_06812_350x350.jpg">
								<div class="productName ">DIOR</div>
								<div class="productTitle">克丽丝汀迪奥迪奥小姐花漾淡香水</div>
								<div class="productSize">规格：瓶</div></li>
							<li>1</li>
							<li>￥540.00</li>
							<li></li>
						</ul>
					</div>
					<ul class="contentRight fl">
						<li>xxx</li>
						<li>
							<p>￥540.00</p>
							<p>(含运费￥0.00)</p>
							<p>在线支付</p>
						</li>
						<li>已取消</li>
						<li>
							<p>再次购买</p>
							<p>订单详情</p>
						</li>
					</ul>
				</div> -->
				
				<div class="like">
					<i class="likeImg"></i>
					<ul class="likeProduct clearfix">
						<li><img src="assert/img/MyOrder/1_n_06859_280x280.jpg">
							<div class="productName">WEI</div>
							<div class="productTitle">蔚蓝之美新年焕新颜节日限...</div>
							<div class="productPrice">￥670</div></li>
						<li><img src="assert/img/MyOrder/1_n_06978_280x280.jpg">
							<div class="productName">WEI</div>
							<div class="productTitle">蔚蓝之美双重亮肤糖面膜元...</div>
							<div class="productPrice">￥380</div></li>
						<li><img src="assert/img/MyOrder/1_n_06983_280x280.jpg">
							<div class="productName">WEI</div>
							<div class="productTitle">蔚蓝之美膜力全开节日套装</div>
							<div class="productPrice">￥790</div></li>
						<li><img src="assert/img/MyOrder/1_n_07106_280x280.jpg">
							<div class="productName">GIVENCHY</div>
							<div class="productTitle">纪梵希高定香榭丝润唇膏</div>
							<div class="productPrice">￥320</div></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 脚部 -->
	<%@ include file="/foot.jsp"%>

	<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					//文本轮播
					$(".txtScroll-top").slide({
						mainCell : ".bd ul",
						autoPage : true,
						effect : "topLoop",
						autoPlay : true,
						vis : 1,
						delayTime : 1000,
					});
					//侧栏
					$(".top_allproducts_navigation").hide();
					$(".top_allproducts_left").hover(function() {
						$(".top_allproducts_navigation").show();
					}, function() {
						$(".top_allproducts_navigation").hide();

					})
					//左侧树状导航
					$(".left-tree .content dt").click(
							function() {
								$(this).siblings("dd").toggle();
								var flag = $(this).find(".arrow").is(".bottom")
								if (flag) {
									$(this).find(".arrow").addClass("top")
											.removeClass("bottom");
								} else {
									$(this).find(".arrow").addClass("bottom")
											.removeClass("top");
								}
							})
					$(".left-tree .content dd").eq(0).find("a").css({
						color : "#EE0000",
					})
					//右侧全部导航栏
					$(".nav li span").click(
							function() {
								$(this).addClass("boder").parents("li")
										.siblings("li").find("span")
										.removeClass("boder");
							})

					// 搜索框
					$(".int").click(function() {
						$(".top_search_int_arise").css("display", "block")
					})
					$(".top_search_int_arise").mouseleave(function() {
						$(".top_search_int_arise").css("display", "none")
					})
					
					//取消订单
				$(".right-content").on("click", ".offOrder",function(){
					var rowId =$(this).parents(".MyOreder-content").attr("data-id");
					$.ajax({
						type:"post",
						url:"order/update",
						data:{
							"rowId":rowId,
							"orderStatus":0
						},
						success:function(res){
							if(res){
								initOrderList();
							}
						}
					})
				})
				
				//点击分页
				$(".right-content").on("click",".pageNumber",function(){
					var pageCurrent = $(this).text();
					initOrderList(pageCurrent);
				})
				//点击上一页和下一页
				$(".right-content").on("click",".paging",function(){
					var $page = $(".buttonTeam .pageNumber");
					var pageCurrent=0;
					for(var i=0;i<$page.length;i++){
						if($page.eq(i).hasClass("active")){
							 pageCurrent =$page.eq(i).text();
						}
					}
					 if($(this).hasClass("prev")){
						pageCurrent--;
						
					}else if($(this).hasClass("next")){
						pageCurrent++;
					} 
					if(pageCurrent>0&&pageCurrent<=$page.length){
						initOrderList(pageCurrent);
					}
				})
				
				//输入数字跳转
				$(".right-content").on("click","#submit",function(){
					var pageCurrent = $(".buttonTeam .skip input").val();
					 if(pageCurrent>$(".buttonTeam .pageNumber").length){
						alert("没有那么多页");
					}else if(!(/(^[1-9]\d*$)/.test(pageCurrent))){
						alert("请输入大于0的正整数")
					}else{
						initOrderList(pageCurrent);
					} 
				})
				
				initOrderList(1);
					
				})//document.ready end
				
			//插入订单列表	
			function initOrderList(pageCurrent){
				$.ajax({
					type:"get",
					url:"myOrder/orderList/"+pageCurrent,
					success:function(html){
						$("#orderList").html(html);
					}
				})
			}
				
		//java
		//添加头部
		addHead();
		function addHead() {
			$.ajax({
				post : "get",
				url : "findCategoryChild/",
				success : function(res) {
					$("body").prepend(res);
				}
			})
		}
	</script>
</body>
</html>
