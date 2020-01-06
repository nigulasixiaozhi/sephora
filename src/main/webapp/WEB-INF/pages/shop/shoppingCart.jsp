<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<jsp:include page="/base.jsp"></jsp:include>
		<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="assert/css/head/Genhead.css" />
		<link rel="stylesheet" type="text/css" href="assert/css/shoppingcart/shoppingcart.css" />

	</head>
	<body>
		<!-- 头部 -->
		<div class="top">
			<!-- 标题 -->
			<div class="top-wrapper">
				<div class="container">
					<!-- 左侧 -->
					<div class="top-wrapper-left fl">
						<span class="top-wrapper-left-logo">欢迎来到丝芙兰</span>
						<a href="personalCenter/" class="top-wrapper-left-login">请登录</a>
						<i class="top-wrapper-left-i"></i>
						<a href="registered/">免费注册</a>
						<a href="login/">手机验证码登录</a>
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
							<a href="#" class="top-wrapper-right-content-my">我的丝芙兰</a>
							<!-- 箭头 -->
							<div class="top-wrapper-order">
								<img src="assert/img/head/top_angle_w2.png" class="top-wrapper-right-img">
								<a href="#">我的订单</a>
							</div>
						</div>
						<img src="assert/img/head/vip-club.png" class="vip-club">
						<a href="#" class="top-wrapper-right-content-vip">会员俱乐部</a>
						<img src="assert/img/head/mobile-sephora.png" class="mobile-sephora">
						<a href="#" class="top-wrapper-right-content-pho">手机丝芙兰</a>
						<a href="#" class="top-wrapper-right-content">美力事业</a>
						<a href="#" class="top-wrapper-right-content">帮助中心</a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>

		<!-- 第二大块，logo，白色背景-->
		<div class="logo">
			<div class="container">
				<div class="logo_logo fl">
					<a href="index.html"><img src="assert/img/shoppingcart/download.png" class="photo"></a>
				</div>
				<div class="logo_my fr">
					<div class="logo_my_le fl">
						<i class="icon_shopp icon_my"></i>
					</div>
					<div class="logo_my_con fl">
						<i class="icon_shopp icon_fill"></i>
					</div>
					<div class="logo_my_ri fl">
						<i class="icon_shopp icon_sub"></i>
					</div>
					<div class="clear"></div>
					<div class="logo_my_ri_mark"></div>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!-- 第三大块，提示 -->
		<div class="hint">
			<div class="container">
				<div class="hint_txt">
					您的购物车清单如含近效期产品，该近效期产品不支持7天无理由退货，近效期产品为页面有特别标示有效期信息的产品。
				</div>
			</div>
		</div>
		<!-- 第四块，购物车 -->
		<div class="shop">
			<div class="container">
				<!-- 第一行,全选 -->
				<div class="shop_all">
					<!-- 全选 -->
					<div class="shop_all_whole fl">
						<input type="checkbox" name="" id="checkAll" value="" />
						<span>全选</span>
					</div>
					<!-- 商品信息 -->
					<div class="shop_all_message fl">
						商品信息
					</div>
					<!-- 单价 -->
					<div class="shop_all_mon fl">
						单价(元)
					</div>
					<!-- 数量 -->
					<div class="shop_all_num fl">
						数量
					</div>
					<!-- 小计 -->
					<div class="shop_all_small fl">
						小计(元)
					</div>
					<!-- 操作 -->
					<div class="shop_all_del fl">
						操作
					</div>
					<div class="clear"></div>
				</div>
				<!-- 商品 -->
				<div class="shop_shop">
					<!-- 一个 -->
					<div class="shop_shop_perfume">
						<!-- 选项 -->
						<div class="shop_shop_perfume_choice fl">
							<input type="checkbox" name="" id="" value="" />
						</div>
						<!-- 图片 -->
						<div class="shop_shop_perfume_img fl">
							<img src="assert/img/shoppingcart/download1.jpg">
						</div>
						<!-- 信息 -->
						<div class="shop_shop_perfume_message fl">
							<!-- 名字 -->
							<div class="shop_shop_perfume_message_name">
								<a href="#">MARC JACOBS </a>
							</div>
							<!-- 描述 -->
							<div class="shop_shop_perfume_message_describe ">
								<a href="#">莫杰雏菊梦境女士淡香水</a>
							</div>
							<!-- 规格 -->
							<div class="shop_shop_perfume_message_ml">
								<a href="javascript:">规格：<span class="specifica">50ML</span></a>
								<!-- 更改规格 -->
								<div class="shop_shop_perfume_message_cover">
									<!-- 一行 -->
									<div class="shop_shop_perfume_message_cover_one">
										选择规格
									</div>
									<!-- 二行 -->
									<div class="shop_shop_perfume_message_cover_two">
										<ul>
											<li>50ML</li>
											<li>30ML</li>
										</ul>
									</div>
									<!-- 三行 -->
									<div class="shop_shop_perfume_message_cover_three">
										<div class="shop_shop_perfume_message_cover_three_le fl">
											确定
										</div>
										<div class="shop_shop_perfume_message_cover_three_ri fl">
											取消
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="shop_shop_perfume_message_red">
									<img src="assert/img/shoppingcart/checkout-attr-default.png">
								</div>
							</div>
						</div>
						<!-- 价格 -->
						<div class="shop_shop_perfume_mon fl">
							650.00
						</div>
						<div class="shop_shop_perfume_num fl">
							<div class="subtract fl">
								-
							</div>
							<div class="nums fl">
								1
							</div>
							<div class="plus fl">
								+
							</div>
							<div class="clear"></div>
						</div>
						<div class="shop_shop_perfume_small fl">
							650.00
						</div>
						<div class="shop_shop_perfume_del fl">
							<i class="icon_del icon_delete"></i>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 一个 -->
					<div class="shop_shop_perfume">
						<div class="shop_shop_perfume_up">
							<!-- 选项 -->
							<div class="shop_shop_perfume_choice fl">
								<input type="checkbox" name="" id="" value="" />
							</div>
							<!-- 图片 -->
							<div class="shop_shop_perfume_img fl">
								<img src="assert/img/shoppingcart/download2.jpg">
							</div>
							<!-- 信息 -->
							<div class="shop_shop_perfume_message fl">
								<!-- 名字 -->
								<div class="shop_shop_perfume_message_name">
									<a href="#">MIUMIU</a>
								</div>
								<!-- 描述 -->
								<div class="shop_shop_perfume_message_describe ">
									<a href="#">缪缪粉漾女士香水</a>
								</div>
								<!-- 规格 -->
								<div class="shop_shop_perfume_message_ml">
									<a href="javascript:">规格：<span class="specifica">50ML</span></a>
									<!-- 更改规格 -->
									<div class="shop_shop_perfume_message_cover">
										<!-- 一行 -->
										<div class="shop_shop_perfume_message_cover_one">
											选择规格
										</div>
										<!-- 二行 -->
										<div class="shop_shop_perfume_message_cover_two">
											<ul>
												<li>50ML</li>
												<li>30ML</li>
											</ul>
										</div>
										<!-- 三行 -->
										<div class="shop_shop_perfume_message_cover_three">
											<div class="shop_shop_perfume_message_cover_three_le fl">
												确定
											</div>
											<div class="shop_shop_perfume_message_cover_three_ri fl">
												取消
											</div>
											<div class="clear"></div>
										</div>
									</div>
									<div class="shop_shop_perfume_message_red">
										<img src="assert/img/shoppingcart/checkout-attr-default.png">
									</div>
								</div>
							</div>
							<!-- 价格 -->
							<div class="shop_shop_perfume_mon fl">
								810.00
							</div>
							<div class="shop_shop_perfume_num fl">
								<div class="subtract fl">
									-
								</div>
								<div class="nums fl">
									1
								</div>
								<div class="plus fl">
									+
								</div>
								<div class="clear"></div>
							</div>
							<div class="shop_shop_perfume_small fl">
								810.00
							</div>
							<!-- 删除 -->
							<div class="shop_shop_perfume_del fl">
								<i class="icon_del icon_delete"></i>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- 一个 -->
					<div class="shop_shop_perfume">
						<!-- 选项 -->
						<div class="shop_shop_perfume_choice fl">
							<input type="checkbox" name="" id="" value="" />
						</div>
						<!-- 图片 -->
						<div class="shop_shop_perfume_img fl">
							<img src="assert/img/shoppingcart/download3.jpg">
						</div>
						<!-- 信息 -->
						<div class="shop_shop_perfume_message fl">
							<!-- 名字 -->
							<div class="shop_shop_perfume_message_name">
								<a href="#">MARC JACOBS </a>
							</div>
							<!-- 描述 -->
							<div class="shop_shop_perfume_message_describe ">
								<a href="#">克丽丝汀迪奥迪奥小姐花漾淡香水</a>
							</div>
							<!-- 规格 -->
							<div class="shop_shop_perfume_message_ml">
								<a href="javascript:">规格：<span class="specifica">50ML</span></a>
								<!-- 更改规格 -->
								<div class="shop_shop_perfume_message_cover">
									<!-- 一行 -->
									<div class="shop_shop_perfume_message_cover_one">
										选择规格
									</div>
									<!-- 二行 -->
									<div class="shop_shop_perfume_message_cover_two">
										<ul>
											<li>50ML</li>
											<li>30ML</li>
										</ul>
									</div>
									<!-- 三行 -->
									<div class="shop_shop_perfume_message_cover_three">
										<div class="shop_shop_perfume_message_cover_three_le fl">
											确定
										</div>
										<div class="shop_shop_perfume_message_cover_three_ri fl">
											取消
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="shop_shop_perfume_message_red">
									<img src="assert/img/shoppingcart/checkout-attr-default.png">
								</div>
							</div>
						</div>
						<!-- 价格 -->
						<div class="shop_shop_perfume_mon fl">
							750.00
						</div>
						<div class="shop_shop_perfume_num fl">
							<div class="subtract fl">
								-
							</div>
							<div class="nums fl">
								1
							</div>
							<div class="plus fl">
								+
							</div>
							<div class="clear"></div>
						</div>
						<div class="shop_shop_perfume_small fl">
							750.00
						</div>
						<div class="shop_shop_perfume_del fl">
							<i class="icon_del icon_delete"></i>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- 第五块，优惠卷 -->
		<div class="discounts">
			<div class="container">
				<!-- 规则 -->
				<div class="discounts_sale">
					<div class="discounts_sale_le fl">
						优惠卷
					</div>
					<div class="discounts_sale_con fl">
						*了解优惠卷<a href="#">使用规则</a>
					</div>
					<div class="discounts_sale_ri fr">
						+输入优惠码
					</div>
					<div class="clear"> </div>
				</div>
				<!-- 卷 -->
				<div class="discounts_roll">
					<i class="icon_roll icon_nothing"></i>
					<span>您目前没有优惠券</span>
				</div>
			</div>
		</div>
		<!-- 结算 -->
		<div class="posi">
			<!-- 第六块，结算 -->
			<div class="settle">
				<div class="container">
					<!-- 全选 -->
					<div class="settle_all fl">
						<input type="checkbox" name="" id="checkAlls" value="" />
						<span>全选</span>
					</div>
					<!-- 批量 -->
					<div class="settle_del fl">
						批量删除
					</div>
					<!-- 联系 -->
					<div class="settle_relation fl">
						<span>联系客服</span>
						<img src="assert/img/shoppingcart/checkout-submit-phone.png">
					</div>

					<!-- 立即结算 -->
					<a href="shoppingProcess/">
						<p class="settle_settleaccounts fr">立即结算</p>
					</a>
					<!-- 金额 -->
					<div class="settle_money fr">
						<div class="settle_money_up ">
							<div class="settle_money_up_up fr">
								已选择<span class="settle_money_up_num">0</span>件商品，合计:¥
								<span class="settle_money_up_money">0.00</span>
							</div>
							<div class="clear"></div>
						</div>
						<div class="settle_money_down">
							<div class="settle_money_down_le fl">
								商品总额:¥&nbsp;<span>0.00</span>
							</div>
							<div class="settle_money_down_ri fl">
								<img src="assert/img/shoppingcart/checkout_first_minu.png">
								<span>共节省:¥&nbsp;</span><span>0.00</span>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<!-- 第六块，浮窗 -->
			<div class="settles">
				<div class="container">
					<!-- 全选 -->
					<div class="settle_all fl">
						<input type="checkbox" name="" id="checkAllss" value="" />
						<span>全选</span>
					</div>
					<!-- 批量 -->
					<div class="settle_del fl">
						批量删除
					</div>
					<!-- 联系 -->
					<div class="settle_relation fl">
						<span>联系客服</span>
						<img src="assert/img/shoppingcart/checkout-submit-phone.png">
					</div>

					<!-- 立即结算 -->
					<div class="settle_settleaccounts fr">
						<a href="shoppingProcess/">立即结算</a>
					</div>
					<!-- 金额 -->
					<div class="settle_money fr">
						<div class="settle_money_up ">
							<div class="settle_money_up_up fr">
								已选择<span class="settle_money_up_num">0</span>件商品，合计:¥
								<span class="settle_money_up_money">0.00</span>
							</div>
							<div class="clear"></div>
						</div>
						<div class="settle_money_down">
							<div class="settle_money_down_le fl">
								商品总额:¥&nbsp;<span>0.00</span>
							</div>
							<div class="settle_money_down_ri fl">
								<img src="assert/img/shoppingcart/checkout_first_minu.png">
								<span>共节省:¥&nbsp;</span><span>0.00</span>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<!-- 第六块,猜你喜欢 -->
		<!-- <div class="like">
			<div class="contact">
				<div class="picScroll-left">
					<div class="hd">
						<a class="next"></a>
						<ul></ul>
						<a class="prev"></a>
						<span class="pageState"></span>
					</div>
					<div class="bd">
						<ul class="picList">
							<li>
								<div class="pic"><a href="http://www.SuperSlide2.com" target="_blank"><img src="images/pic1.jpg" /></a></div>
								<div class="title"><a href="http://www.SuperSlide2.com" target="_blank">效果图1</a></div>
							</li>
							<li>
								<div class="pic"><a href="http://www.SuperSlide2.com" target="_blank"><img src="images/pic2.jpg" /></a></div>
								<div class="title"><a href="http://www.SuperSlide2.com" target="_blank">效果图2</a></div>
							</li>
							<li>
								<div class="pic"><a href="http://www.SuperSlide2.com" target="_blank"><img src="images/pic3.jpg" /></a></div>
								<div class="title"><a href="http://www.SuperSlide2.com" target="_blank">效果图3</a></div>
							</li>
							<li>
								<div class="pic"><a href="http://www.SuperSlide2.com" target="_blank"><img src="images/pic4.jpg" /></a></div>
								<div class="title"><a href="http://www.SuperSlide2.com" target="_blank">效果图4</a></div>
							</li>
							<li>
								<div class="pic"><a href="http://www.SuperSlide2.com" target="_blank"><img src="images/pic5.jpg" /></a></div>
								<div class="title"><a href="http://www.SuperSlide2.com" target="_blank">效果图5</a></div>
							</li>
							<li>
								<div class="pic"><a href="http://www.SuperSlide2.com" target="_blank"><img src="images/pic6.jpg" /></a></div>
								<div class="title"><a href="http://www.SuperSlide2.com" target="_blank">效果图6</a></div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
 -->















		<!-- 底部 -->
		<div class="tail">
			<!-- 白色背景 -->
			<div class="tail_logo">
				<div class="container">
					<!-- 上部分图标 -->
					<div class="tail_logo_img">
						<div class="tail_logo_img_piece fl">
							<i class="icon_tail_log icon_tail_one"></i>
							<div class="tail_logo_img_piece_descr">
								顺丰EMS速达
							</div>
						</div>
						<div class="tail_logo_img_mark fl"></div>
						<div class="tail_logo_img_piece fl">
							<i class="icon_tail_log icon_tail_two"></i>
							<div class="tail_logo_img_piece_descr">
								丰富礼赠
							</div>
						</div>
						<div class="tail_logo_img_mark fl"></div>
						<div class="tail_logo_img_piece fl">
							<i class="icon_tail_log icon_tail_three"></i>
							<div class="tail_logo_img_piece_descr">
								100%官方正品
							</div>
						</div>
						<div class="tail_logo_img_mark fl"></div>
						<div class="tail_logo_img_piece fl">
							<i class="icon_tail_log icon_tail_four"></i>
							<div class="tail_logo_img_piece_descr">
								无障碍退款
							</div>
						</div>
						<div class="tail_logo_img_mark fl"></div>
						<div class="tail_logo_img_piece fl">
							<i class="icon_tail_log icon_tail_five"></i>
							<div class="tail_logo_img_piece_descr">
								安全支付
							</div>
						</div>
						<div class="clear">

						</div>
					</div>
					<!-- 下部分，购买流程 -->
					<div class="tail_logo_down">
						<!-- 一块 -->
						<div class="tail_logo_down_buy fl">
							<div class="tail_logo_down_buy_up">
								购物流程
							</div>
							<div class="tail_logo_down_buy_down">
								<a href="#">大宗采购/团购</a>
								<a href="#">丝芙兰预付卡章程</a>
							</div>
						</div>
						<!-- 一块 -->
						<div class="tail_logo_down_buy fl">
							<div class="tail_logo_down_buy_up">
								支付/配送
							</div>
							<div class="tail_logo_down_buy_down">
								<a href="#">活到付款</a>
								<a href="#">在线支付</a>
								<a href="#">配送时间</a>
							</div>
						</div>
						<!-- 一块 -->
						<div class="tail_logo_down_buy fl">
							<div class="tail_logo_down_buy_up">
								售后服务
							</div>
							<div class="tail_logo_down_buy_down">
								<a href="#">退换货规定</a>
								<a href="#">退还及退款说明</a>
							</div>
						</div>
						<!-- 一块 -->
						<div class="tail_logo_down_buy fl">
							<div class="tail_logo_down_buy_up">
								关于丝芙兰
							</div>
							<div class="tail_logo_down_buy_down">
								<a href="#">公司介绍</a>
								<a href="#">联系我们</a>
							</div>
						</div>
						<div class="tail_logo_down_buy_ups fl">
							网上订购咨询热线 : 400 670 0055
							<!-- 4方块 -->
							<div class="tail_logo_square1"></div>
							<div class="tail_logo_square2"></div>
							<div class="tail_logo_square3"></div>
							<div class="tail_logo_square4"></div>
						</div>
						<div class="clear"></div>

					</div>
				</div>

			</div>
			<!-- 尾部黑色背景 -->
			<div class="tail_floot">
				<!-- 上行 -->
				<div class="tail_floot_up">
					<img src="assert/img/head/footer-redords-icon.png">
					<a href="#">沪公网安备 31010602003121号</a>
					<a href="#">ICP备案序号:沪ICP备05026645号</a>
					<a href="#">食品经营许可证</a>
					<a href="#">网站使用条款</a>
					<a href="#">严正声明</a>
				</div>
				<!-- 下行 -->
				<div class="tail_floot_down">
					本网站隶属于丝芙兰（上海）化妆品销售有限公司（企业法人营业执照）
				</div>
			</div>
		</div>
		<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="assert/js/shoppingcart/shoppingcart.js"></script>

		<!-- 猜你喜欢 -->
		<script type="text/javascript">
			jQuery(".picScroll-left").slide({
				titCell: ".hd ul",
				mainCell: ".bd ul",
				autoPage: true,
				effect: "left",
				scroll: 5,
				vis: 5,
				pnLoop: false,
				trigger: "click",
				mouseOverStop: false
			});
		</script>
		<script type="text/javascript">
			jQuery(".txtScroll-top").slide({
				mainCell: ".bd ul",
				autoPage: true,
				effect: "topLoop",
				autoPlay: true,
				vis: 1,
				delayTime: 1000,
			});
		</script>

	</body>
</html>
