<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<div class="left-tree fl">
			<div class="title">
				<a href="personalCenter/">我的丝芙兰</a>
			</div>
			<dl class="content ">
				<div>
					<dt class="clearfix">
						<span class="text">交易管理</span> <span class="arrow bottom"></span>
					</dt>
					<dd>
						<a href="myOrder/${user.rowId }">我的订单</a>
					</dd>
					<dd>
						<a href="">我的优惠券</a>
					</dd>
					<dd>
						<a href="">我的兑礼订单</a>
					</dd>
				</div>
				<div>
					<dt class="clearfix">
						<span class="text">个人信息管理</span> <span class="arrow bottom"></span>
					</dt>
					<dd>
						<a href="personalData/">编辑个人资料</a>
					</dd>
					<dd>
						<a href="address/">收货地址管理</a>
					</dd>
					<dd>
						<a href="">更改密码</a>
					</dd>
				</div>

			</dl>
		</div>
		<div class="right-bg fr">
			<div class="title">我的SEPHORA</div>
			<div class="right-content ">
				<ul class="nav clearfix">
					<li><span>全部</span></li>
					<li><span>待支付</span></li>
					<li><span>处理中</span></li>
					<li><span>配送中</span></li>
					<li><span>已完成</span></li>
				</ul>
				<ul class="MyOreder-title clearfix">
					<li><select class="OrderState" name="">
							<option value="">最近三个月订单</option>
							<option value="">今年订单</option>
							<option value="">2018年订单</option>
					</select></li>
					<li>商品</li>
					<li>数量</li>
					<li>单价</li>
					<li></li>
					<li>收货人</li>
					<li>合计</li>
					<li><select class="OrderState1" name="">
							<option value="">待支付</option>
							<option value="">已完成</option>
							<option value="">处理中</option>
					</select></li>
					<li>操作</li>
				</ul>
				<c:if test="${!empty order}">
					<c:forEach items="${order}" var="order">
						<div class="MyOreder-content clearfix">
							<div class="contentLeft fl">
								<div class="number">
									<span>订单号 :</span> <span>${order.rowId }</span> <span>${order.createBy }</span>
								</div>
								<c:if test="${!empty orderList }">
									<c:forEach items="${orderList}" var="list">
										<c:if test="${order.rowId==list.orderId}">
											<ul class="shopingList clearfix">
												<li class="clearfix"><img class="fl" src="${list.imgPath}">
													<div class="productName ">${list.brandName }</div>
													<div class="productTitle">${list.brandName }</div>
													<div class="productSize">规格：瓶</div></li>
												<li>${list.buyCount }</li>
												<li>￥${list.sumPrice }</li>
												<li></li>
											</ul>
										</c:if>
									</c:forEach>
								</c:if>
							</div>
							<ul class="contentRight fl">
								<li>${order.addressName}</li>
								<li>
									<p>￥${order.sumPrice}</p>
									<p>(含运费￥0.00)</p>
									<p>在线支付</p>
								</li>
								<li>已取消</li>
								<li>
									<c:choose>
										<c:when test="${order.orderStatus==4}">
											<p>再次购买</p>
											<p>订单详情</p>
										</c:when>
										<c:otherwise>
											<p class="payButton">立即支付</p>
											<p>订单详情</p>
											<p id="offOrder">取消订单</p>
										</c:otherwise>
									</c:choose>
								</li>
							</ul>
						</div>
					</c:forEach>
				</c:if>

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
				<div class="clearfix">
					<div class="buttonTeam fr">
						<span class="paging"> &lt;上一页 </span> <span class="pageNumber">1 </span> <span class="paging"> 下一页&gt; </span> <span class="skip">到第<input type="text">页
						</span>
						<button type="button">确定</button>
					</div>
				</div>
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

				})
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
