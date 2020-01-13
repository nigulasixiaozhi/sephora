<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>香水</title>
<jsp:include page="/base.jsp"></jsp:include>
<!-- 默认样式表 -->
<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
<!-- 自定义 -->
<link rel="stylesheet" type="text/css" href="assert/css/Details/Details.css" />
<link rel="stylesheet" type="text/css" href="assert/css/head/Genhead.css" />

</head>
<body>
	<div class="SepProductDetail">
		<div class="mainCenter clearfix">
			<div class="crumbs ">
				<ul class="clearfix">
					<li><a href="index">首页</a> <span> > </span></li>
					<li><a href="list">香水</a> <span> > </span></li>
					<li><a href="#">女士</a> <span> > </span></li>
					<li><a href="#">淡香</a> <span> > </span></li>
					<li><a href="#">迪奥</a> <span> > </span></li>
					<li>${product.productName }</li>
				</ul>
			</div>
			<div class="mainMustO clearfix">
				<div class="productImageChange fl">
					<div class="mast fl">
						<div class="imgOrVideo">
							<div class="bigIcon"></div>
							<img class="picture" src="${product.imgPath}">
							<div class="float-box"></div>
						</div>
						<!-- 放大镜 -->
						<div class="magnifier-container">
							<img class="pictures" src="assert/img/Details/1.jpg">
						</div>
					</div>
					<div class="controlModule clearfix">
						<div class="Arrow fl">
							<div class="leftArrow cant"></div>
						</div>
						<ul class="picture">
							<li class="noOpacity_1"><img src="${product.imgPath}" class="photo"></li>
							<li class="noOpacity_2"><img src="assert/img/Details/2.jpg" class="photo"></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<div class="Arrow fr">
							<div class="rightArrow"></div>
						</div>
					</div>

				</div>
				<div class="ProductMainMixture fr">
					<div class="title clearfix">
						<div class="title_left fl">
							<h1>${product.productName}</h1>
							<p>MISS DIOR BLOOMING BOUQUET</p>
							<span class="type">${product.productInfo }</span>
						</div>
						<img src="assert/img/Details/Dior.png" class="title_right_dior fr">
					</div>
					<div class="price clearfix">
						<p class="one fl">价格</p>
						<p class="two fl">￥</p>
						<span id="productPrice" class="three fl">${product.productPrice }</span>
						<p class="eight fr"></p>
					</div>
					<div class="capacity clearfix">
						<p class="capacity_title fl">规格</p>
						<ul class="boxList fl clearfix">
							<li class="now">50ml</li>
							<li class="normal">30ml</li>
							<li class="normal">100ml</li>
						</ul>
					</div>
					<div class="fourButton clearfix">
						<div class="number fl clearfix">
							<!-- <input type="text" readonly="readonly" id="txt1" class="txt1 fl" value=""> -->
							<input type="button" readonly="readonly" id="txt1" class="txt1 fl" value="1"></input>
							<div class="arrow fl">
								<div class="topArrow clearfix">
									<div class="icon1 fl"></div>
								</div>

								<div class="buttomArrow clearfix">
									<div class="icon2 fl"></div>
								</div>
							</div>
						</div>

						<a class="shoppingCart" href="">
							<div class="redButton fl clearfix">
								<input type="hidden" id="userId" value="${userLogin.rowId}" />
								<input type="hidden" id="productId" value="${product.rowId}" />
								<p class="fl">加入购物车</p>
								<div class="icon3 fl"></div> 
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="mainMustT clearfix">
				<!-- 猜你喜欢 -->
				<div class="guessYouLike fl clearfix">
					<div class="title fl">
						<span>猜你喜欢</span>
					</div>
					<div class="product fl">
						<a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike1.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥迪奥小姐漫舞花漾香氛</div>
								<div class="price">
									<span>￥</span> <span>900</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike2.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥全新迪奥小姐淡香氛</div>
								<div class="price">
									<span>￥</span> <span>750</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike3.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥小姐香氛</div>
								<div class="price">
									<span>￥</span> <span>680</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike4.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥迪奥小姐香发喷雾</div>
								<div class="price">
									<span>￥</span> <span>900</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike5.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥迪奥小姐漫舞花漾香氛</div>
								<div class="price">
									<span>￥</span> <span>380</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike6.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥迪奥小姐随行香氛系列</div>
								<div class="price">
									<span>￥</span> <span>380</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike7.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥全新真我香水</div>
								<div class="price">
									<span>￥</span> <span>680</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike8.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥真我心悦香水</div>
								<div class="price">
									<span>￥</span> <span>750</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike9.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥真我发香喷雾</div>
								<div class="price">
									<span>￥</span> <span>380</span>
								</div>
							</div>
						</a> <a href="#">
							<div class="guess">
								<img src="assert/img/Details/youLike10.jpg">
								<p class="header">DIOR</p>
								<div class="mainText">克丽丝汀迪奥真我淡香氛</div>
								<div class="price">
									<span>￥</span> <span>750</span>
								</div>
							</div>
						</a>
					</div>

				</div>
				<!-- 右边主要 -->
				<div class="mainModule fr">
					<!-- 弹出窗口 -->
					<div class="center clearfix">
						<div class="rightMainNavT fl">
							<ul>
								<li id="all1" class="now">基本信息</li>
								<li id="all2">所有评论</li>
								<li id="all3">产品咨询</li>
								<li id="all4">配送信息</li>
							</ul>
						</div>
						<a href="" class="fixedDis fr shoppingCart">
							<div class="redButton fl clearfix">
								<p class="fl">加入购物车</p>
								<div class="icon3 fl"></div>
							</div>
						</a>

					</div>
					<!-- 头部评论 -->
					<div class="rightMainNav">
						<ul>
							<li class="now">基本信息</li>
							<li>所有评论</li>
							<li>产品咨询</li>
							<li>配送信息</li>
						</ul>
					</div>
					<!-- 主要页面 -->
					<div class="leftLine">
						<div class="sku">
							<ul class="clearfix">
								<li class="fl">规格: 50.0ml</li>
								<li class="fl">货号: 221756</li>
							</ul>
						</div>
						<div class="skuDetail"></div>
						<!-- 大图片 -->
						<div class="PDI">
							<div class="loadingHtml">
								<div class="maxPhoto">
									<div class="mBanner">
										<img src="assert/img/Details/MainModule0.jpg">
									</div>
									<div class="mBanner">
										<img src="assert/img/Details/MainModule1.jpg">
									</div>
									<div class="mBanner">
										<img src="assert/img/Details/MainModule2.jpg">
									</div>
									<div class="mBanner">
										<img src="assert/img/Details/MainModule3.jpg">
									</div>
									<div class="mBanner">
										<img src="assert/img/Details/MainModule4.jpg">
									</div>
									<div class="mBanner">
										<img src="assert/img/Details/MainModule5.jpg">
									</div>
									<div class="mBanner">
										<img src="assert/img/Details/MainModule6.jpg">
									</div>
									<div class="mBanner">
										<img src="assert/img/Details/MainModule7.jpg">
									</div>
								</div>
							</div>
						</div>
						<!-- 评论 -->
						<div class="comments">
							<div class="ModuleTitle_title">
								<p>商品评论</p>
								<p>COMMENTS</p>
								<div class="shortLine"></div>
							</div>
							<!-- 好评度 -->
							<div class="titleTab">
								<div class="header">好评度</div>
								<div class="nowPoint">4.6</div>
								<div class="star clearfix">
									<div class="grayStar fl"></div>
									<div class="redStar fl"></div>
								</div>

							</div>
							<!-- 评论 -->
							<div class="mainComment clearfix">
								<ul class="ulNone_1 ">
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user1.jpg" class="fl"></a>
											<div class=" sep fl">九月的榛生</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">瓶子整体设计好美，香味是我喜欢的，甜而不腻</p>
											<div class="time fr">
												<p>2019-03-13</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user2.png" class="fl"></a>
											<div class=" sep fl">九月的榛生</div>
											<div class="cardGold fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">完美，一辈子用不腻的香水</p>
											<div class="time fr">
												<p>2019-03-02</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user3.png" class="fl"></a>
											<div class=" sep fl">九月的榛生</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">目前为止用过最好闻的香水</p>
											<div class="time fr">
												<p>2019-02-26</p>
											</div>
										</div>
									</li>
								</ul>
								<ul class="ulNone_2">
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user4.jpg" class="fl"></a>
											<div class=" sep fl">A-LIq</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">没有包装袋！哭了</p>
											<div class="time fr">
												<p>2019-02-19</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user2.png" class="fl"></a>
											<div class=" sep fl">水调歌头</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">媳妇很喜欢。</p>
											<div class="time fr">
												<p>2019-02-13</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user5.png" class="fl"></a>
											<div class=" sep fl">Kimi</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">第一次在丝芙兰网上购物，大过年的顺丰还按时配送，东西正品保证，值得购买！</p>
											<div class="time fr">
												<p>2019-02-12</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user3.png" class="fl"></a>
											<div class=" sep fl">暗香浮动夜黄昏</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">买来送人的</p>
											<div class="time fr">
												<p>2019-01-30</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user2.png" class="fl"></a>
											<div class=" sep fl">🐈🐱🐱</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">斩男香，公认的</p>
											<div class="time fr">
												<p>2019-01-20</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user2.png" class="fl"></a>
											<div class=" sep fl">helen小周</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">一直都是用这款香水，不知道还有什么推荐的吗</p>
											<div class="time fr">
												<p>2019-01-01</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user6.jpg" class="fl"></a>
											<div class=" sep fl">CxGLeng`</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">感觉还行 没打开</p>
											<div class="time fr">
												<p>2018-12-29</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user7.jpg" class="fl"></a>
											<div class=" sep fl">晗哈哈～</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">真的很好闻，第一次买香水，感觉上瘾了!</p>
											<div class="time fr">
												<p>2018-12-22</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user2.png" class="fl"></a>
											<div class=" sep fl">马格南打不死人🔝</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">香水还不错哦!</p>
											<div class="time fr">
												<p>2018-12-21</p>
											</div>
										</div>
									</li>
									<li class="clearfix">
										<div class="userInformation fl clearfix">
											<a href="#"><img src="assert/img/Details/user2.png" class="fl"></a>
											<div class=" sep fl">185****4769</div>
											<div class="cardBlack fl"></div>
										</div>
										<div class="talking fl clearfix">
											<p class="title">送表妹的生日礼物，她说喜欢</p>
											<div class="time fr">
												<p>2018-12-18</p>
											</div>
										</div>
									</li>
								</ul>
								<div class="listMain fr clearfix">
									<a class="buttonLast"> &lt;上一页</a>
									<div class="listpage ">
										<a class="current1 current">1</a> <a class="current2">2</a> <a class="">3</a> <a class="">4</a> <a class="">5</a>
									</div>
									<a class="buttonNext active">下一页&gt;</a>
								</div>
							</div>
						</div>
						<!-- 咨询 -->
						<div class="question clearfix">
							<div class="ModuleTitle_title">
								<p>产品咨询</p>
								<p>Q&A</p>
								<div class="shortLine"></div>
							</div>
							<div class="mySay">
								<div class="button">我要咨询</div>
							</div>
							<ul class="ulNone_3 ">
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">请问现在还可不可以刻字？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，刻字活动截止到8/30号，具体活动细则，您可以咨询在线客服或微信客服，感谢您对丝芙兰官网的关注和支持，祝您购物愉快！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">迪奥小姐花漾淡香水和迪奥小姐花漾淡香水限量礼套是同一款吗？为什么两种颜色不一样，一种是淡紫色，一种是粉色？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，套装中的香水和单瓶香水是同一款，感谢您对丝芙兰官网的关注和支持，祝您购物愉快！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">盒子里的呆粘的上面是丝芙兰的字是什么？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，这个是丝芙兰的防盗码。感谢您对丝芙兰官网的支持，祝您购物愉快！</p>
									</div>
								</li>
							</ul>
							<ul class="ulNone_4 ">
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">迪奥小姐淡香没有预售活动？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，预售活动已经结束了，如果您在活动期间遇到问题，建议您及时拨打4006700055客服热线咨询，感谢您对丝芙兰官网的关注和支持，祝您购物愉快！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">准备买香水送给女朋友做为五周年礼物，请问可以包装么</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，满300可以选择黑色礼盒。感谢您对丝芙兰官网的关注和支持，祝您购物愉快！！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">迪奥小姐淡香没有预售活动？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，预售活动已经结束了，如果您在活动期间遇到问题，建议您及时拨打4006700055客服热线咨询，感谢您对丝芙兰官网的关注和支持，祝您购物愉快！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">请问迪奥花样甜心是那一款香水了？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，就是克丽丝汀迪奥迪奥小姐花漾淡香水，感谢您对丝芙兰官网的支持，谢谢选购！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">请问我的香水是从哪个货源发的货?真假可靠吗？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">作为全球领先的化妆品零售商，我们丝芙兰承诺为我们的顾客只提供高品质优秀的化妆品品牌，我们承诺丝芙兰官网以及国内每一家门店售卖的产品均由正规代理商提供货源，具有进口化妆品批准证书的正版商品，由于生产批次不同，具体产品的有效期/生产日期也会有所差异， 包装上也会有所不同的，但丝芙兰官网销售的产品都是较新鲜的，请您放心购买，谢谢。</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">保质期到哪年？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，由于生产批次不同，具体产品的有效期/生产日期也会有所差异，包装上也会有所不同的，但丝芙兰官网销售的产品都是较新鲜的，请您放心购买，谢谢。</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">你好，你这送东西吗？还有我买女香能给我包装好吗？我要送人</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，官网购物满300元可以免费挑选丝芙兰黑色礼盒包装的。由于官网活动和品牌活动折扣是会不定期会举行的，目前还没有大型折扣活动。 但官网满赠活动是有的。现在官网全场购物满699元赠价值140元好礼，全场购物满全场购物满999元赠价值333元好礼。 如有喜欢请您尽快购买。数量有限，赠完即止。品牌活动赠品需要您将产品添加入购物车后点击立即结算，赠品信息会以结算页面中显示，如已赠完就不会有显示了。感谢您对丝芙兰官网的支持，谢谢选购！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">快递最快需要五天吗，我发的是顺丰不应该很快吗？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，请问您的订单号是多少，发往哪个城市的？您可以联系我们的会员中心提供您的订单号查询您的物流信息400 670 0055.我们合作的2家快递顺丰和EMS。当天下午3点前在线支付可以当天发货， 3点后支付是隔天发货，货到付款订单是48小时内发货。感谢您对丝芙兰官网的支持，谢谢选购！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">我今天三点前定的单现在怎么还没发货？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，我们合作的2家快递顺丰和EMS。当天下午3点前在线支付可以当天发货，3点后支付是隔天发货，货到付款订单是48小时内发货。 您可以提供您的订单号联系我们会员中心为您查询400 670 0055感谢您对丝芙兰官网的支持，谢谢选购！</p>
									</div>
								</li>
								<li>
									<div class="questionList clearfix">
										<div class="icon fl"></div>
										<p class="fl">有新老包装这一说么？</p>
									</div>
									<div class="answer clearfix">
										<div class="icon fl"></div>
										<p class="fl">您好，产品信息正在和仓库确认中，信息确认后我们会及时回复给到您，感谢您对丝芙兰官网的支持，谢谢选购！</p>
									</div>
								</li>
							</ul>
							<div class="listMain fr clearfix">
								<a class="buttonLast"> &lt;上一页</a>
								<div class="listpage ">
									<a class="current1 current">1</a> <a class="current2">2</a>
								</div>
								<a class="buttonNext active">下一页&gt;</a>
							</div>
						</div>
						<!-- 工资物流 -->
						<div class="payLogistic">
							<div class="ModuleTitle_title">
								<p>支付及配送</p>
								<p>PAYMENT&SHIPPING</p>
								<div class="shortLine"></div>
							</div>
							<div class="mainText">
								<p class="title">选择支付方式</p>
								<p class="smallTitle">目前我们提供以下2种支付方式</p>
								<ul>
									<li class="type">1. 在线支付</li>
									<li class="main">支持支付宝、微信、及目前市场所有主流银行卡的在线支付。请在确认订单后选择相应支付界面进行支付。</li>
									<li class="type">2. 货到付款</li>
									<li class="main">您的货款将在订单送达后，由送货员直接收取，请在签收后付款，并在送货员在场情况下开箱验货。(货到付款金额不能超过2万元)</li>
									<li class="type">3. EMS配送公告</li>
									<li class="main">由于安检升级，接到快递公司通知，已禁止收寄发往新疆地区的包裹，故即日起上述地区暂停发货，具体发货时间另行通知，给您造成的不变，敬请谅解。</li>

								</ul>
							</div>
						</div>
						<!-- 价格 -->
						<div class="price_Statement">
							<div class="ModuleTitle_title">
								<p>价格声明</p>
								<p>PRICE STATEMENT</p>
								<div class="shortLine"></div>
							</div>
							<p class="price_p">本店商品标注的促销价，为此商品的实际售价。本店标注的其他价格信息， 如划线价、专柜价、建议零售价、价值等，为仅供消费者参考的市场价格信息， 来源为有关商品实体店的柜台售价、品牌方建议零售价或者根据有关商品正装产品售价和容量推算的价值等， 便于您了解市场行情和价格变动。但是，由于地区、时间和行情波动因素， 这些价格的实际情况可能与本店标注的其他价格信息有所不同。</p>
						</div>
						<!-- 退换货 -->
						<div class="returned_Doods">
							<div class="ModuleTitle_title">
								<p>退换货规定</p>
								<p>RETURN PROVISIONS</p>
								<div class="shortLine"></div>
							</div>
							<div class="rult">
								<ul>
									<li>1. 我们不接受包装盒已被开封的商品的退换货（商品外包装盒上的透明封装胶纸已被撕开同样视为开封），请您谅解！</li>
									<li>2. 所有未开封的商品如需退换请于签收日算起14日内办理，退货收到并确认无误后于一周内办理退款。</li>
									<li>3. 如您需整单退换，请您务必将当次订单中所有商品（包括免费赠品、包装礼盒）全部退回。</li>
									<li>4. 因顾客自身原因造成退换货时，由顾客承担商品退回时的邮资和再次发送时的运费。</li>
									<li>5. 如该商品曾被积分，退货后，该笔金额产生的积分将被从积分数中扣除。</li>
									<li>6. 如您希望调换其它等价商品，请您先为需要退回的订单办理退货，我们收到退货并确认无误后，将为您发送新的商品。若您希望调换的为非等价商品， 请您先为您的订单办理退货及退款，然后至网站另行订购您喜欢的其它商品，我们将另行发送。</li>
									<li>7. 如您在使用了于丝芙兰网站购买的产品后出现过敏症状，在提供相关医院出具的有效证明后，我们将接受此产品的退货。</li>
								</ul>
							</div>

						</div>



					</div>

				</div>
			</div>

		</div>
	</div>
	<!-- 右侧导航栏 -->
	<ul class="toolbar">
		<li><a href="personalCenter"> <span class="toolbar-text">个人信息</span> <em class="sprite-toolbar person"></em>
		</a></li>
		<li><a href="shoppingCart"> <span class="toolbar-text">购物车</span> <em class="sprite-toolbar shoping"></em>
		</a></li>
		<li><a href=""> <span class="toolbar-text">联系客服</span> <em class="sprite-toolbar service"></em>
		</a></li>
		<li><a href=""> <span class="toolbar-text">移动丝芙兰</span> <em class="sprite-toolbar mobile"></em>
		</a></li>
		<li><a href="javascript:;"> <span class="toolbar-text">返回顶部</span> <em class="sprite-toolbar return"></em>
		</a></li>
	</ul>
	<!-- 脚部 -->
	<%@ include file="/foot.jsp" %>


	<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="assert/js/Details.js/Details-jq.js" type="text/javascript" charset="utf-8"></script>
	<script src="assert/js/Details.js/Details-js.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		jQuery(".txtScroll-top").slide({
			mainCell : ".bd ul",
			autoPage : true,
			effect : "topLoop",
			autoPlay : true,
			vis : 1,
			delayTime : 1000,
		});
	</script>
	<script type="text/javascript">
		//搜索框
		$(".int").click(function() {
			$(".top_search_int_arise").css("display", "block")
		})
		$(".top_search_int_arise").mouseleave(function() {
			$(".top_search_int_arise").css("display", "none")
		});
		//左侧导航栏+右侧工具栏
		var sprite = document.querySelectorAll(".sprite-title");
		$(window)
				.scroll(
						function() {
							scrollTop = $(this).scrollTop();
							var spriteTitle = $(".sprite-title");
							// console.log(offsetTop);
							// console.log(scrollTop);
							if (scrollTop > 663) {
								$(".toolbar").show();
							} else {
								$(".toolbar").stop().fadeOut(50);
							}
							if (scrollTop > 713) {
								$(".fixedTop").stop().slideDown();
							} else {
								$(".fixedTop").stop().slideUp();
							}
							if (scrollTop > 1418) {
								$(".fixed-left").show();
							} else {
								$(".fixed-left").hide();
							}
							for (var i = 2; i < sprite.length - 1; i++) {
								if (scrollTop > (spriteTitle.eq(i).offset().top - 370)) {
									$(".fixed-left li").eq(i - 2).addClass(
											"active").siblings("li")
											.removeClass("active");
								}
							}
							if (scrollTop > 6452) {
								$(".fixed-left li").removeClass("active");
							}
						})
		$(".toolbar li").eq(4).click(function() {
			$("html,body").stop().animate({
				scrollTop : 0,
			})
		})
		//加入购物车
		$(".shoppingCart").click(function(){
			var userId = $("#userId").val();
			var productId = $("#productId").val();
			var payCount = $("#txt1").val();
			if($("#userId").val()!=""){
				$.ajax({
					type:"post",
					url:"shopping/add",
					data:{
						userId,productId,payCount
					},
					success:function(res){
						if(res){
							if(confirm("是否去购物车结算？")){
								window.location.href="shoppingCart";
							}
						}
					}
				})
			}else{
				window.location.href="login";
			}
			 
			return false;
		})
		
		//java
			//添加头部
			addHead();
			function addHead(){
				$.ajax({
					post:"get",
					url:"findCategoryChild/",
					success:function(res){
						$("body").prepend(res);
					}
				})
			}
	</script>

</body>
</html>
