<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 头部 -->
		<div class="top">
			<!-- 标题 -->
			<div class="top-wrapper">
				<div class="container">
					<!-- 左侧 -->
					<div class="top-wrapper-left fl">
						<span class="top-wrapper-left-logo">欢迎来到丝芙兰</span>
						<a href="login/" class="top-wrapper-left-login">请登录</a>
						<i class="top-wrapper-left-i"></i>
						<a href="registered/">免费注册</a>
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
								<img src="assert/img/head/top_angle_w2.png" class="top-wrapper-right-img">
								<a href="myOrder/">我的订单</a>
							</div>
						</div>


						<img src="assert/img/head/vip-club.png" class="vip-club">
						<a href="#" class="top-wrapper-right-content-vip">会员俱乐部</a>
						<img src="assert/img/head/mobile-sephora.png" class="mobile-sephora">
						<a href="#" class="top-wrapper-right-content-pho">手机丝芙兰</a>
						<a href="#" class="top-wrapper-right-content">美力事业</a>
						<a href="#" class="top-wrapper-right-content">帮助中心</a>
					</div>
					<div class="clear">

					</div>
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
										<div class="top_search_int_arise_seek_up">
											热门搜索
										</div>
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
							<span><a href="#">热销好物榜</a></span>
							<span><a href="#">拯救熬夜脸</a></span>
							<span><a href="#">OMG口红清单</a></span>
							<span><a href="#">热销护肤套组</a></span>
							<span><a href="#">光感肌底妆</a></span>
							<span><a href="#">都市新香</a></span>
						</div>
					</div>
					<!-- 购物袋 -->
					<div class="top_search_bag fr">
						<img src="assert/img/head/shopping_bag.png" class="shopping-bag">
						<a href="#">
							<span class="top_search_bag_txt">购物袋<span class="shopping-num">0</span>件</span>
						</a>
						<!-- 购物车 -->
						<div class="top_search_bag_trolley">
							<div class="top_search_bag_trolley_img fl">
								<img src="assert/img/head/package.png">
							</div>
							<div class="top_search_bag_trolley_message fl">
								<span>购物车内暂时没有商品，登录后将显示您之前加入的商品 </span>
								<a href="#" class="top_search_bag_trolley_message_ding">登陆</a>
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
							<a href="#">
								全部商品类目
							</a>
						</div>
						<!-- 下拉导航栏 -->
						<div class="top_allproducts_navigation">
							<ul class="top_allproducts_navigation_ul">
							
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_one">
									<div class="hot">
										<a href="#">热门</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">魅惑美唇</a></span>
										<span class="description"><a href="#">塑造立体轮廓</a></span>
										<span class="description"><a href="#">热销气垫</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												热门
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">热销气垫</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">轻巧便携实力派</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">精油护肤巧搭配</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">精油滋养</a></span>
															<span><a href="#">精华呵护</a></span>
															<span><a href="#">乳霜焕能</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">塑造立体轮廓</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">人气腮红</a></span>
															<span><a href="#">明星高光</a></span>
															<span><a href="#">实力修容</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">精选面膜</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">润泽保湿</a></span>
															<span><a href="#">美白亮肤</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">深层清洁</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑电眼</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">眼影线</a></span>
															<span><a href="#">彩妆盘</a></span>
															<span><a href="#">眼线液</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑美唇</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">电光橘唇</a></span>
															<span><a href="#">聚光红唇</a></span>
															<span><a href="#">星光粉唇</a></span>
															<span><a href="#">暖光砖红唇</a></span>
															<span><a href="#">柔光豆沙唇</a></span>
															<span><a href="#">水光透唇</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand2.png">
												<img src="assert/img/head/Brand2.png">
												<img src="assert/img/head/Brand2.png">
												<img src="assert/img/head/Brand2.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_two">
									<div class="hot">
										<a href="#">功效</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">保湿补水</a></span>
										<span class="description"><a href="#">底妆修容</a></span>
										<span class="description"><a href="#">美白</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												功效
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">紧致</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">淡化细纹</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">去眼部浮肿</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">保湿</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">舒缓</a></span>
															<span><a href="#">保湿补水</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">清洁</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">去角质</a></span>
															<span><a href="#">卸妆清洁</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">美白</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">淡斑</a></span>
															<span><a href="#">提亮肤色</a></span>
															<span><a href="#">淡化黑眼圈</a></span>
															<span><a href="#">美白</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">底妆修容</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">提亮肤色</a></span>
															<span><a href="#">遮瑕</a></span>
															<span><a href="#">控油平衡</a></span>
															<span><a href="#">防晒修颜</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">抗老</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">抗污染</a></span>
															<span><a href="#">抗皱</a></span>
															<span><a href="#">抗氧化</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">防晒</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">隔离防晒</a></span>
															<span><a href="#">晒后修复</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">控油</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">控油平衡</a></span>
															<span><a href="#">毛孔细致</a></span>
															<span><a href="#">祛粉刺/祛斑</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">百变妆容</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">炫色金属</a></span>
															<span><a href="#">魅惑哑光</a></span>
															<span><a href="#">亮泽水光</a></span>
															<span><a href="#">清新自然</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand2.png">
												<img src="assert/img/head/Brand2.png">
												<img src="assert/img/head/Brand2.png">
												<img src="assert/img/head/Brand2.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_three">
									<div class="hot">
										<a href="#">热门</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">魅惑美唇</a></span>
										<span class="description"><a href="#">塑造立体轮廓</a></span>
										<span class="description"><a href="#">热销气垫</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												热门
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">热销气垫</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">轻巧便携实力派</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">精油护肤巧搭配</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">精油滋养</a></span>
															<span><a href="#">精华呵护</a></span>
															<span><a href="#">乳霜焕能</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">塑造立体轮廓</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">人气腮红</a></span>
															<span><a href="#">明星高光</a></span>
															<span><a href="#">实力修容</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">精选面膜</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">润泽保湿</a></span>
															<span><a href="#">美白亮肤</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">深层清洁</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑电眼</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">眼影线</a></span>
															<span><a href="#">彩妆盘</a></span>
															<span><a href="#">眼线液</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑美唇</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">电光橘唇</a></span>
															<span><a href="#">聚光红唇</a></span>
															<span><a href="#">星光粉唇</a></span>
															<span><a href="#">暖光砖红唇</a></span>
															<span><a href="#">柔光豆沙唇</a></span>
															<span><a href="#">水光透唇</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_four">
									<div class="hot">
										<a href="#">热门</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">魅惑美唇</a></span>
										<span class="description"><a href="#">塑造立体轮廓</a></span>
										<span class="description"><a href="#">热销气垫</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												热门
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">热销气垫</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">轻巧便携实力派</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">精油护肤巧搭配</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">精油滋养</a></span>
															<span><a href="#">精华呵护</a></span>
															<span><a href="#">乳霜焕能</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">塑造立体轮廓</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">人气腮红</a></span>
															<span><a href="#">明星高光</a></span>
															<span><a href="#">实力修容</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">精选面膜</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">润泽保湿</a></span>
															<span><a href="#">美白亮肤</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">深层清洁</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑电眼</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">眼影线</a></span>
															<span><a href="#">彩妆盘</a></span>
															<span><a href="#">眼线液</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑美唇</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">电光橘唇</a></span>
															<span><a href="#">聚光红唇</a></span>
															<span><a href="#">星光粉唇</a></span>
															<span><a href="#">暖光砖红唇</a></span>
															<span><a href="#">柔光豆沙唇</a></span>
															<span><a href="#">水光透唇</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_five">
									<div class="hot">
										<a href="#">热门</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">魅惑美唇</a></span>
										<span class="description"><a href="#">塑造立体轮廓</a></span>
										<span class="description"><a href="#">热销气垫</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												热门
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">热销气垫</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">轻巧便携实力派</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">精油护肤巧搭配</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">精油滋养</a></span>
															<span><a href="#">精华呵护</a></span>
															<span><a href="#">乳霜焕能</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">塑造立体轮廓</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">人气腮红</a></span>
															<span><a href="#">明星高光</a></span>
															<span><a href="#">实力修容</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">精选面膜</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">润泽保湿</a></span>
															<span><a href="#">美白亮肤</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">深层清洁</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑电眼</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">眼影线</a></span>
															<span><a href="#">彩妆盘</a></span>
															<span><a href="#">眼线液</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑美唇</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">电光橘唇</a></span>
															<span><a href="#">聚光红唇</a></span>
															<span><a href="#">星光粉唇</a></span>
															<span><a href="#">暖光砖红唇</a></span>
															<span><a href="#">柔光豆沙唇</a></span>
															<span><a href="#">水光透唇</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_six">
									<div class="hot">
										<a href="#">热门</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">魅惑美唇</a></span>
										<span class="description"><a href="#">塑造立体轮廓</a></span>
										<span class="description"><a href="#">热销气垫</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												热门
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">热销气垫</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">轻巧便携实力派</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">精油护肤巧搭配</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">精油滋养</a></span>
															<span><a href="#">精华呵护</a></span>
															<span><a href="#">乳霜焕能</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">塑造立体轮廓</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">人气腮红</a></span>
															<span><a href="#">明星高光</a></span>
															<span><a href="#">实力修容</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">精选面膜</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">润泽保湿</a></span>
															<span><a href="#">美白亮肤</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">深层清洁</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑电眼</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">眼影线</a></span>
															<span><a href="#">彩妆盘</a></span>
															<span><a href="#">眼线液</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑美唇</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">电光橘唇</a></span>
															<span><a href="#">聚光红唇</a></span>
															<span><a href="#">星光粉唇</a></span>
															<span><a href="#">暖光砖红唇</a></span>
															<span><a href="#">柔光豆沙唇</a></span>
															<span><a href="#">水光透唇</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_seven">
									<div class="hot">
										<a href="#">热门</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">魅惑美唇</a></span>
										<span class="description"><a href="#">塑造立体轮廓</a></span>
										<span class="description"><a href="#">热销气垫</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												热门
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">热销气垫</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">轻巧便携实力派</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">精油护肤巧搭配</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">精油滋养</a></span>
															<span><a href="#">精华呵护</a></span>
															<span><a href="#">乳霜焕能</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">塑造立体轮廓</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">人气腮红</a></span>
															<span><a href="#">明星高光</a></span>
															<span><a href="#">实力修容</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">精选面膜</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">润泽保湿</a></span>
															<span><a href="#">美白亮肤</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">深层清洁</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑电眼</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">眼影线</a></span>
															<span><a href="#">彩妆盘</a></span>
															<span><a href="#">眼线液</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑美唇</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">电光橘唇</a></span>
															<span><a href="#">聚光红唇</a></span>
															<span><a href="#">星光粉唇</a></span>
															<span><a href="#">暖光砖红唇</a></span>
															<span><a href="#">柔光豆沙唇</a></span>
															<span><a href="#">水光透唇</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_eight">
									<div class="hot">
										<a href="#">热门</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">魅惑美唇</a></span>
										<span class="description"><a href="#">塑造立体轮廓</a></span>
										<span class="description"><a href="#">热销气垫</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												热门
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">热销气垫</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">轻巧便携实力派</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">精油护肤巧搭配</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">精油滋养</a></span>
															<span><a href="#">精华呵护</a></span>
															<span><a href="#">乳霜焕能</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">塑造立体轮廓</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">人气腮红</a></span>
															<span><a href="#">明星高光</a></span>
															<span><a href="#">实力修容</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">精选面膜</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">润泽保湿</a></span>
															<span><a href="#">美白亮肤</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">深层清洁</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑电眼</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">眼影线</a></span>
															<span><a href="#">彩妆盘</a></span>
															<span><a href="#">眼线液</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑美唇</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">电光橘唇</a></span>
															<span><a href="#">聚光红唇</a></span>
															<span><a href="#">星光粉唇</a></span>
															<span><a href="#">暖光砖红唇</a></span>
															<span><a href="#">柔光豆沙唇</a></span>
															<span><a href="#">水光透唇</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
								<!-- 第一块，热门 -->
								<li class="top_allproducts_navigation_ul_li_nine">
									<div class="hot">
										<a href="#">热门</a>
									</div>
									<div class="lip">
										<span class="description"><a href="#">魅惑美唇</a></span>
										<span class="description"><a href="#">塑造立体轮廓</a></span>
										<span class="description"><a href="#">热销气垫</a></span>
									</div>
									<!-- 右侧展出 -->
									<div class="expansion">
										<!-- 左侧 -->
										<div class="bigleft fl">
											<!-- 上面热门 -->
											<div class="hotup">
												热门
											</div>
											<!-- 化妆品描述 -->
											<div class="cosmetic">
												<!-- 一块 -->
												<!-- 左块 -->
												<div class="cosmeticleft fl">
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">热销气垫</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">轻巧便携实力派</a></span>
														</div>
													</div>
													<div class="detailed">
														<div class="smallcosup">
															<a href="#">精油护肤巧搭配</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">精油滋养</a></span>
															<span><a href="#">精华呵护</a></span>
															<span><a href="#">乳霜焕能</a></span>
														</div>
													</div>
												</div>

												<!-- 二块 -->
												<div class="cosmeticcon fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">塑造立体轮廓</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">人气腮红</a></span>
															<span><a href="#">明星高光</a></span>
															<span><a href="#">实力修容</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">精选面膜</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">润泽保湿</a></span>
															<span><a href="#">美白亮肤</a></span>
															<span><a href="#">提拉紧致</a></span>
															<span><a href="#">深层清洁</a></span>
														</div>
													</div>
												</div>

												<!-- 三块 -->
												<div class="cosmeticright fl">
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑电眼</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">眼影线</a></span>
															<span><a href="#">彩妆盘</a></span>
															<span><a href="#">眼线液</a></span>
														</div>
													</div>
													<div class="detailed ">
														<div class="smallcosup">
															<a href="#">魅惑美唇</a>
														</div>
														<div class="smallcosdown">
															<span><a href="#">电光橘唇</a></span>
															<span><a href="#">聚光红唇</a></span>
															<span><a href="#">星光粉唇</a></span>
															<span><a href="#">暖光砖红唇</a></span>
															<span><a href="#">柔光豆沙唇</a></span>
															<span><a href="#">水光透唇</a></span>
														</div>
													</div>
												</div>


												<div class="clear">

												</div>
											</div>
											<!-- 品牌图片 -->
											<div class="brandpicture">
												<img src="assert/img/head/Brand2.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
												<img src="assert/img/head/Brand1.png">
											</div>
										</div>
										<!-- 右侧 -->
										<div class="billing fr">
											<img src="assert/img/head/Sidebar1.jpg">
										</div>
										<div class="clear">

										</div>
									</div>
								</li>
							</ul>
							<i class="icon_top_allproducts icon_navigation_le"></i>
							<i class="icon_top_allproducts icon_navigation_ri"></i>
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
						<div class="clear">

						</div>
					</div>
					<!-- 右侧 -->
					<div class="top_allproducts_right fr">
						<img src="assert/img/head/download3.png">
					</div>
					<div class="clear">

					</div>
				</div>
			</div>
		</div>
