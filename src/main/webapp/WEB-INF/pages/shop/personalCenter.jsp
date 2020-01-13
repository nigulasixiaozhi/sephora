<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<jsp:include page="/base.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
<link rel="stylesheet" type="text/css" href="assert/css/head/Genhead.css" />
<link rel="stylesheet" type="text/css" href="assert/css/PersonalCenter/PersonalCenter.css" />
</head>
<body>
	<div class="body container clearfix">
		<!-- 左侧树状导航 -->
		<jsp:include page="/leftTree.jsp"></jsp:include>
		<div class="right-bg fr">
			<div class="title">我的SEPHORA</div>
			<div class="right-content">
				<!-- 我的丝芙兰 -->
				<div class="my-sephora clearfix">
					<div class="name fl clearfix">
						<img src="assert/img/PersonalCenter/g.gif"> <span>${userLogin.userName }</span>
					</div>
					<div class="card fr clearfix">
						<em class="fl"></em>
						<div class="card-number fl">
							<p>粉卡卡号</p>
							<p>8136693440</p>
						</div>
						<div class="change-card">
							<a href="">更换会员卡</a>
						</div>
					</div>
					<div class="discount fl clearfix">
						<div class="point fl">
							<p>购物积分</p>
							<p>
								<span>200</span>分
							</p>
						</div>
						<div class="myDiscount fl">
							<p>已有优惠劵</p>
							<p>
								<span>0</span>张
							</p>
						</div>
						<div class="nextDiscount fl">
							<p>距离获得下一张优惠券</p>
							<div class="nextBuy">
								再购物次数<span>4</span>次
							</div>
							<p class="or">或</p>
							<div class="nextBuy-point">
								再累计购物积分<span>1300</span>分
							</div>
						</div>
					</div>
					<div class="order fr clearfix">
						<p>订单提醒</p>
						<div class="model">
							待支付订单
							<p>
								<span>1</span>&nbsp;单
							</p>

						</div>
						<div class="model">
							已配送订单
							<p>
								<span>0</span>&nbsp;单
							</p>

						</div>
						<div class="model">
							处理中订单
							<p>
								<span>0</span>&nbsp;单
							</p>

						</div>
						<div class="model">
							已完成订单
							<p>
								<span>2</span>&nbsp;单
							</p>

						</div>
					</div>
				</div>
				<!-- 我的优惠券 -->
				<div class="MyCoupons">
					<div class="title">我的优惠券</div>
					<div class="MyCoupons-content">您目前没有优惠券</div>
				</div>
				<!-- 我的订单 -->
				<div class="MyOrder">
					<div class="title clearfix">
						我的订单 <a href="">查看全部></a>
					</div>
					<table class="order-table" border="0" cellspacing="0" cellpadding="0">
						<thead class="table-title">
							<tr>
								<th>订单号</th>
								<th>收货人</th>
								<th>支付方式</th>
								<th>金额</th>
								<th>购买时间</th>
								<th>全部状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody class="table-content">
							<c:if test="${!empty order}">
								<c:forEach items="${order}" var="order">
									<tr>
										<td>${order.rowId}</td>
										<td>${order.addressName}</td>
										<td><c:choose>
												<c:when test="${order.pay==0}">
													<p>未支付</p>
												</c:when>
												<c:when test="${order.pay==1}">
													<p>微信</p>
												</c:when>
												<c:when test="${order.pay==2}">
													<p>支付宝</p>
												</c:when>
												<c:when test="${order.pay==3}">
													<p>银行卡</p>
												</c:when>
											</c:choose></td>
										<td>￥${order.sumPrice }</td>
										<td><fmt:formatDate value="${order.createDate}" type="both"/> </td>
										<td><c:choose>
												<c:when test="${order.orderStatus==0}">
													<p>已取消</p>
												</c:when>
												<c:when test="${order.orderStatus==1}">
													<p>待发货</p>
												</c:when>
												<c:when test="${order.orderStatus==2}">
													<p>已发货</p>
												</c:when>
												<c:when test="${order.orderStatus==3}">
													<p>已签收</p>
												</c:when>
												<c:when test="${order.orderStatus==4}">
													<p>待支付</p>
												</c:when>
											</c:choose></td>
										<td><c:choose>
												<c:when test="${order.orderStatus==0||order.orderStatus==3}">
													<div class="again">再次购买</div>
													<div class="OrderDetails">订单详情</div>
												</c:when>
												<c:when test="${order.orderStatus==4}">
													<span class="PayButton">立即支付</span>
													<div class="OrderDetails">订单详情</div>
													<div class="NotOrder">取消订单</div>
												</c:when>
												<c:otherwise>
													<div class="OrderDetails">订单详情</div>
													<div class="NotOrder">取消订单</div>
												</c:otherwise>
											</c:choose></td>
									</tr>
								</c:forEach>
							</c:if>

						</tbody>
					</table>
					<div class="bg"></div>
					<div class="alert">
						<div class="alert-title">
							取消订单 <i class="closeButton">X</i>
						</div>
						<div class="alert-content">
							<div class="select clearfix">
								<p class="fl">
									取消原因 <i>*</i>
								</p>
								<div class="selectBox fl">
									<span class="txt">请选择您取消订单的原因</span> <i class="down"></i>
									<div class="selectBox-hide">
										<span>更换或添加新商品</span> <span>错过促销活动</span> <span>重复下单</span>
									</div>
								</div>
							</div>
							<ul class="tips">
								<li><i class="icon_hint vertical-midlle"></i> <span class="vertical-midlle">温馨提示</span></li>
								<li>您的订单取消操作需要进过审核，请耐心等待。</li>
								<li>1、已发货的订单将不能取消;</li>
								<li>2、请在"已取消订单"列表中查看订单是否取消成功</li>
							</ul>
							<div class="center-button">
								<span class="true">确定</span> <span class="flase">取消</span>
							</div>
							<div class="NotNull">请选择原因</div>
						</div>
					</div>
					<div class="audit">正在审核中...</div>
				</div>
				<!-- 我买过的商品 -->
				<div class="OrderHistory">
					<div class="title">我买过的商品</div>
					<ul class="History-title clearfix">
						<li>商品</li>
						<li>数量</li>
						<li>金额</li>
						<li>购买时间</li>
						<li>操作</li>
					</ul>
					<ul class="History-content clearfix">
						<li class="clearfix"><img class="productImg fl" src="assert/img/PersonalCenter/1_n_06178_350x350.jpg">
							<div class="product-content fl">
								<div class="productBrands">MARC JACOBS</div>
								<div class="productTitle">莫杰雏菊梦境女士淡香水</div>
								<div class="productSize">规格：瓶</div>
							</div></li>
						<li>1</li>
						<li>￥690.00</li>
						<li>2019-03-21 21:19</li>
						<li>再次购买</li>
					</ul>
					<ul class="History-content clearfix">
						<li class="clearfix"><img class="productImg fl" src="assert/img/PersonalCenter/1_n_06273_350x350.jpg">
							<div class="product-content fl">
								<div class="productBrands">MIUMIU</div>
								<div class="productTitle">缪缪粉漾女士香水</div>
								<div class="productSize">规格：瓶</div>
							</div></li>
						<li>1</li>
						<li>￥620.00</li>
						<li>2019-03-21 23:19</li>
						<li>再次购买</li>
					</ul>
					<ul class="History-content clearfix">
						<li class="clearfix"><img class="productImg fl" src="assert/img/PersonalCenter/1_n_06812_350x350.jpg">
							<div class="product-content fl">
								<div class="productBrands">DIOR</div>
								<div class="productTitle">克丽丝汀迪奥迪奥小姐花漾淡香水</div>
								<div class="productSize">规格：瓶</div>
							</div></li>
						<li>1</li>
						<li>￥540.00</li>
						<li>2019-03-22 10:19</li>
						<li>再次购买</li>
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
		$(document)
				.ready(
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
										var flag = $(this).find(".arrow").is(
												".bottom")
										if (flag) {
											$(this).find(".arrow").addClass(
													"top")
													.removeClass("bottom");
										} else {
											$(this).find(".arrow").addClass(
													"bottom")
													.removeClass("top");
										}
									})
							//我的订单通用
							//右侧订单
							$(".order-table .table-content .again").eq(0)
									.hide();
							$(".order-table .NotOrder").click(function() {
								index = $(this).parents("tr").index();
								$(".MyOrder .bg").fadeIn(100);
								$(".MyOrder .alert").fadeIn(100);
							})
							//弹窗
							$(".alert-content .selectBox").click(
									function() {
										$(this).find(".selectBox-hide")
												.toggle();
										var flag = $(this).find("i")
												.is(".down")
										if (flag) {
											$(this).find("i").addClass("up")
													.removeClass("down");
										} else {
											$(this).find("i").addClass("down")
													.removeClass("up");
										}
									})
							//阻止事件冒泡
							$(" .selectBox .selectBox-hide").click(
									function(event) {
										event.stopPropagation()
									})
							//下拉框事件
							$(" .selectBox .selectBox-hide").on(
									"click",
									"span",
									function() {
										$(this).parents(".selectBox").find(
												".txt").text($(this).text());
										$(this).parents(".selectBox").find(
												".txt").css({
											color : "#4a4a4a",
										})
										$(this).parents(".selectBox-hide")
												.hide();
										$(this).parents(".selectBox").find("i")
												.addClass("down").removeClass(
														"up");
									})
							//确定,取消,关闭按钮
							var timer1
							var timer2
							$(".center-button .true")
									.click(
											function() {
												var text = $(" .alert .txt")
														.text();
												if (text == "请选择您取消订单的原因") {
													$(".alert .NotNull")
															.fadeIn(100);
													clearInterval(timer1);
													timer1 = setInterval(
															function() {
																$(
																		".alert .NotNull")
																		.fadeOut();
															}, 1100)
												} else {
													$(" .bg").fadeOut();
													$(" .alert").fadeOut();
													$(
															".alert-content .selectBox .txt")
															.text("请选择您取消订单的原因");
													$(
															".alert-content .selectBox .txt")
															.css({
																color : "#999",
															})
													$(" .audit").delay(300)
															.fadeIn()
													clearInterval(timer2);
													timer2 = setInterval(
															function() {
																$(".audit")
																		.fadeOut();
																$(
																		".order-table .table-content tr")
																		.eq(
																				index)
																		.find(
																				"td")
																		.eq(5)
																		.text(
																				"已取消");
																$(
																		".order-table .table-content .PayButton")
																		.hide();
																$(
																		".order-table .table-content .NotOrder")
																		.hide();
																$(
																		".order-table .table-content .again")
																		.show();
															}, 1800)
												}
											})
							$(".center-button .flase").click(function() {
								$(" .bg").hide();
								$(" .alert").hide();
							})
							$(" .closeButton").click(function() {
								$(" .bg").hide();
								$(" .alert").hide();
							})
							$(".MyOrder .PayButton").click(function() {
								window.location.href = "index/"
							})
							//搜索框
							$(".int").click(
									function() {
										$(".top_search_int_arise").css(
												"display", "block")
									})
							$(".top_search_int_arise").mouseleave(
									function() {
										$(".top_search_int_arise").css(
												"display", "none")
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
