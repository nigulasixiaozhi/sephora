<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 头部 -->
<div class="top">
	<!-- 标题 -->
	<div class="top-wrapper">
		<div class="container">
			<!-- 左侧 -->
			<div class="top-wrapper-left fl">
				<span class="top-wrapper-left-logo">欢迎来到丝芙兰</span>
				<c:choose>
					<c:when test="${!empty user}">
						<span>${user.userName}</span>
						 <i class="top-wrapper-left-i"></i> 
						 <a href="exitUser">退出</a>
					</c:when>
					<c:when test="${empty user}">
						<a href="login/" class="top-wrapper-left-login">请登录</a>
						 <i class="top-wrapper-left-i"></i> 
						 <a href="registered/">免费注册</a>
					</c:when>
				</c:choose>
				
			</div>
			<!-- 轮播 -->
			<div class="txtScroll-top fl">
				<div class="bd">
					<ul class="infoList">
						<li><a href="">丝芙兰正品承诺</a></li>
						<li><a href="">常见问题</a></li>
					</ul>
				</div>
			</div>
			<!-- 右侧 -->
			<div class="top-wrapper-right fr">
				<img src="assert/img/head/my-sephora.png" class="my-sephora">
				<div class="top-wrapper-right-indent">
					<a href="personalCenter/" class="top-wrapper-right-content-my">我的丝芙兰</a>
					<!-- 箭头 -->

					<div class="top-wrapper-order">
						<img src="assert/img/head/top_angle_w2.png" class="top-wrapper-right-img"> <a href="myOrder/${user.rowId }">我的订单</a>
					</div>
				</div>


				<img src="assert/img/head/vip-club.png" class="vip-club"> <a href="#" class="top-wrapper-right-content-vip">会员俱乐部</a> <img src="assert/img/head/mobile-sephora.png" class="mobile-sephora"> <a href="#" class="top-wrapper-right-content-pho">手机丝芙兰</a> <a href="#" class="top-wrapper-right-content">美力事业</a> <a href="#" class="top-wrapper-right-content">帮助中心</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- 搜索框一行 -->
	<div class="top_search">
		<div class="container">
			<!-- logo -->
			<div class="top_search_logo fl">
				<a href="index/"><img src="assert/img/head/download1.png" class="top_search_logo_img"></a>
			</div>
			<!-- 搜索 -->
			<div class="top_search_int fl">
				<!-- 上面 -->
				<div class="top_search_int_up">
					<input type="text" class="int fl" placeholder="玩趣护肤" />
					<!-- 点击框 -->
					<div class="top_search_int_arise">
						<div class="top_search_int_arise_txt">
							<!-- 热门搜索 -->
							<div class="top_search_int_arise_seek">
								<div class="top_search_int_arise_seek_up">热门搜索</div>
								<div class="top_search_int_arise_seek_down">
									<div class="recomm fl">
										<a href="#">热销好屋榜</a>
									</div>
									<div class="recomm fl">
										<a href="#">热门防晒盘点</a>
									</div>
									<div class="recomm fl">
										<a href="#">网红底妆</a>
									</div>
									<div class="recomm fl">
										<a href="#">精选面膜大赏</a>
									</div>
									<div class="recomm fl">
										<a href="#">焕彩越焕越美</a>
									</div>
									<div class="recomm fl">
										<a href="#">春日奇思妙香</a>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="top_search_int_up_txt fl">
						<a href="#">搜索</a>
					</div>
					<div class="clear"></div>
				</div>
				<!-- 下面 -->
				<div class="top_search_int_below">
					<span><a href="#">热销好物榜</a></span> <span><a href="#">拯救熬夜脸</a></span> <span><a href="#">OMG口红清单</a></span> <span><a href="#">热销护肤套组</a></span> <span><a href="#">光感肌底妆</a></span> <span><a href="#">都市新香</a></span>
				</div>
			</div>
			<!-- 购物袋 -->
			<div class="top_search_bag fr">
				<img src="assert/img/head/shopping_bag.png" class="shopping-bag"> <a href="${!empty user?'shoppingCart':'login' }"> <span class="top_search_bag_txt">购物袋<span class="shopping-num">0</span>件
				</span>
				</a>
				<!-- 购物车 -->
				<div class="top_search_bag_trolley">
					<div class="top_search_bag_trolley_img fl">
						<img src="assert/img/head/package.png">
					</div>
					<div class="top_search_bag_trolley_message fl">
						<span>购物车内暂时没有商品，登录后将显示您之前加入的商品 </span> <a href="login" class="top_search_bag_trolley_message_ding">登陆</a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- 全部商品类目 -->
	<div class="top_allproducts">
		<div class="container">
			<!-- 全部商品类目，左侧 -->
			<div class="top_allproducts_left  fl">
				<!-- 商品类目背景图 -->
				<div class="top_allproducts_left_img">
					<a href="#"> 全部商品类目 </a>
				</div>
				<!-- 下拉导航栏 -->
				<div class="top_allproducts_navigation">
					<ul class="top_allproducts_navigation_ul">
						<c:if test="${!empty category }">
							<c:forEach items="${category }" var="category">
								<c:if test="${category.parId==-1 }">
									<!-- 第一块，热门 -->
									<li class="top_allproducts_navigation_ul_li_one">
										<div class="hot">
											<a href="#">${category.listName}</a>
										</div>
										<div class="lip">
											<span class="description"><a href="#">魅惑美唇</a></span> <span class="description"><a href="#">塑造立体轮廓</a></span> <span class="description"><a href="#">热销气垫</a></span>
										</div> <!-- 右侧展出 -->
										<div class="expansion">
											<!-- 左侧 -->
											<div class="bigleft fl">
												<!-- 上面热门 -->
												<div class="hotup">${category.listName}</div>
												<!-- 化妆品描述 -->
												<div class="cosmetic">
													<c:if test="${!empty category.childList}">
														<c:forEach items="${category.childList}" var="level2List">
															<!-- 左块 -->
															<div class="cosmeticleft fl">
																<div class="detailed">
																	<div class="smallcosup">
																		<a href="#">${level2List.listName }</a>
																	</div>
																	<div class="smallcosdown">
																		<c:if test="${!empty level2List.childList}">
																			<c:forEach items="${level2List.childList}" var="level3List">
																				<span><a href="#">${level3List.listName}</a></span>
																			</c:forEach>
																		</c:if>
																	</div>
																</div>
															</div>
														</c:forEach>
													</c:if>
													<div class="clear"></div>
												</div>
												<!-- 品牌图片 -->
												<div class="brandpicture">
													<img src="assert/img/head/Brand2.png"> <img src="assert/img/head/Brand2.png"> <img src="assert/img/head/Brand2.png"> <img src="assert/img/head/Brand2.png">
												</div>
											</div>
											<!-- 右侧 -->
											<div class="billing fr">
												<img src="assert/img/head/Sidebar1.jpg">
											</div>
											<div class="clear"></div>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</c:if>
					</ul>
					<i class="icon_top_allproducts icon_navigation_le"></i> <i class="icon_top_allproducts icon_navigation_ri"></i>
				</div>

			</div>

			<!-- 中间 -->
			<div class="top_allproducts_middle fl">
				<div class="top_allproducts_middle_exclusive fl">
					<a href="#">畅销榜单</a>
				</div>
				<div class="top_allproducts_middle_exclusive fl">
					<a href="Weekly.html">独家发售</a>
				</div>
				<div class="top_allproducts_middle_exclusive fl">
					<a href="#">礼物套装</a>
				</div>
				<div class="top_allproducts_middle_exclusive fl">
					<a href="#">全部品牌</a>
				</div>
				<div class="top_allproducts_middle_exclusive fl">
					<a href="#">预约中心</a>
				</div>
				<div class="top_allproducts_middle_exclusive fl">
					<a href="#">美力学院</a>
				</div>
				<div class="clear"></div>
			</div>
			<!-- 右侧 -->
			<div class="top_allproducts_right fr">
				<img src="assert/img/head/download3.png">
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
