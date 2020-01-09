<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<jsp:include page="/base.jsp"></jsp:include>
		<!-- 默认样式表 -->
		<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
		<!-- 自定样式表 -->
		<link rel="stylesheet" type="text/css" href="assert/css/head/Genhead.css" />
		<link rel="stylesheet" type="text/css" href="assert/css/Address/Address.css"/>
		<link rel="stylesheet" type="text/css" href="assert/css/ShoppingProcess/ShoppingProcess.css" />
		
	</head>
	<body>
		<!-- 标题 -->
		<div class="top-wrapper">
			<div class="container">
				<!-- 左侧 -->
				<div class="top-wrapper-left fl">
					<span class="top-wrapper-left-logo">欢迎来到丝芙兰</span>
					<a href="personalCenter/" class="top-wrapper-left-login">请登录</a>
					<i class="top-wrapper-left-i"></i>
					<a href="registered/">免费注册</a>
					<a href="#">手机验证码登录</a>
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
				<div class="clear">
				</div>
			</div>
		</div>
		<!-- 头 -->
		<div class="checkoutHeader">
			<div class="checkoutHeader_content clearfix">
				<div class="content_logo fl">
					<div>
						<a href="index/"><img src="assert/img/ShoppingProcess/logo.png"></a>
					</div>
				</div>
				<div class="content_step fr clearfix">
					<div class="content_step_border"></div>
					<div class="content_step_wrap fl first">
						<span></span>
					</div>
					<div class="content_step_wrap fl second">
						<span></span>
					</div>
					<div class="content_step_wrap fl third">
						<span></span>
					</div>
				</div>
			</div>
		</div>
		<!-- 通知 -->
		<div class="checkoutExplain">
			<div class="checkoutExplain_text">
				经由快递公司通知，目前2万元以上的订单，暂不支持货到付款服务。
				为确保您的订单可以正常发货，请选择其他付款形式。给您造成不便，敬请谅解。如有任何问题请咨询在线客服。
			</div>
		</div>
		<!-- 收货信息 -->
		<div class="address">
			<!-- <div class="address_content"> -->
				<!-- 模块化配置 -->
				<!-- <div class="module_checkoutTable"> -->
					<!-- <div class="module_content_header clearfix">
						<span class="address_info fl">收货信息</span>
						<span class="module_span fr"></span>
					</div> -->
					<!-- 新建地址 -->
					<!--<div class="address_content_uesr">
						 <ul class="address_content_uesr_ul">
							<div class="address_content_uesr_ul_li">
								<span class="address_content_uesr_ul_li_create">+ 新建收货地址</span>
							</div>
						</ul>
							
					</div> -->
					<div class="right-bg ">
						<div class="title">
							收货地址
							<span class="fr">+ 新增收货地址</span>
						</div>
						<div class="right-content">
							<div class="tip">
								最多保存10个有效地址
							</div>
							<ul class="addressList">
								<li class="clearfix">
									<div class="userMessage fl ">
										<div class="name-nowTips clearfix">
											<div class="userName fl">123</div>
											<div class="nowTip fl">默认地址</div>
										</div>
										<div class="address">
											山西 吕梁市 交城县 <span>sdfsdfs</span>
										</div>
										<div class="phone">13912312345</div>
									</div>
									<div class="control fr">
										<div class="del">X</div>
										<p class="changeAdress">编辑地址</p>
									</div>
								</li>
								<li class="clearfix">
									<div class="userMessage fl ">
										<div class="name-nowTips clearfix">
											<div class="userName fl">345</div>
										</div>
										<div class="address">
											北京 北京市 东城区 <span>哇塞大所大所</span>
										</div>
										<div class="phone">13912354321</div>
									</div>
									<div class="control fr">
										<div class="del">X</div>
										<p class="changeAdress">编辑地址</p>
										<p class="default">设为默认</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				<!-- </div> -->
			<!-- </div> -->
		</div>
		<!-- 支付方式 -->
		<div class="checkoutPayFor">
			<div class="checkoutPayFor_content">
				<!-- 模块化配置 -->
				<div class="module_checkoutTable ">
					<div class="module_content_header">
						支付方式
					</div>
				</div>
				<!-- 在线支付 -->
				<div class="checkoutPayFor_content_wrap clearfix">
					<div class="checkoutPayFor_content_wrap-list Online_Payment active fl">
						<span class="checkoutPayFor_content_wrap_icon"></span>
						<span class="checkoutPayFor_content_wrap_text">在线支付</span>
					</div>
					<!-- 货到付款 -->
					<div class="checkoutPayFor_content_wrap-list COD fl">
						<span class="checkoutPayFor_content_wrap_icon"></span>
						<span class="checkoutPayFor_content_wrap_text">货到付款</span>
					</div>
				</div>
			</div>
		</div>
		<!-- 配送信息 -->
		<div class="checkoutMethod">
			<div class="checkoutMethod_content">
				<!-- 模块化配置 -->
				<div class="module_checkoutTable">
					<div class="module_content_header">
						配送信息
						<div class="checkoutMethod_content_header_method">*我们将根据您选择的支付方式选择最优惠、最快的配送方式</div>
					</div>
				</div>
				<!-- 列表 -->
				<div class="checkoutTable_list_wrap">
					<label class="checkoutTable_wrap_list">
						<input type="radio" class="module_radio module_radio1" name="checkoutMethod" value="on">
						工作日、双休与假日均可送货
					</label>
					<label class="checkoutTable_wrap_list">
						<input type="radio" class="module_radio module_radio2" name="checkoutMethod" value="on">
						只双休日、假日送货 (工作日不送)
					</label>
					<label class="checkoutTable_wrap_list">
						<input type="radio" class="module_radio module_radio3" name="checkoutMethod" value="on">
						只工作日送货 (双休日、假日不用送) (注: 写字楼/商用地址客户请选择)
					</label>
				</div>
			</div>
		</div>
		<!-- 已购商品清单 -->
		<div class="checkoutPurchased">
			<div class="checkoutPurchased_content">
				<!-- 模块化配置 -->
				<div class="module_checkoutTable">
					<div class="module_content_header">
						已购商品清单
					</div>
				</div>
				<div class="checkout_purchased_body">
					<div class="checkout_purchased_header">
						<p class="p1 fl">商品信息</p>
						<p class="p2 fl">单价(元)</p>
						<p class="p3 fl">数量</p>
						<p class="p4 fl">小计(元)</p>
					</div>
				</div>
				<div class="checkout_purchased_content">
					<div class="checkout-product-body-item">
						<div class="checkout-product-body-item-content clearfix">
							<div class="checkout-product-body-item-img fl">
								<img src="assert/img/ShoppingProcess/icon_1.jpg">
							</div>
							<div class="checkout-product-body-item-info fl">
								<h5>DIOR</h5>
								<p class="checkout-product-body-item-productNameCN">克丽丝汀迪奥迪奥小姐花漾淡香水</p>
								<span class="checkout-product-body-item-attr-html default ">规格：100ml</span>
							</div>
							<div class="checkout-product-body-item-unit fl">
								<div class="checkout-product-body-item-unit-price">
									<span class="checkout-product-body-item-unit-sapPrice">1100.00</span>
								</div>
							</div>
							<div class="checkout-product-body-item-amount fl">4</div>
							<div class="checkout-product-body-item-subtotal fl">
								<span class="checkout-product-body-item-unit-sapPrice">4400.00</span>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- 礼物包装 -->
		<div class="checkoutGift">
			<div class="checkoutGift_content">
				<!-- 模块化配置 -->
				<div class="module_checkoutTable">
					<div class="module_content_header">
						礼物包装
					</div>
				</div>
				<div class="checkoutGift-list-warp">
					<label class="checkoutGift-list">
						<em class="_checkbox none"></em>
						<img src="assert/img/ShoppingProcess/giftV1_PC.png">
						<span>全场满300元可领取包装礼盒或礼品袋，包装样式随机。</span>
					</label>
				</div>
			</div>
		</div>
		<!-- 结算 -->
		<div class="checkoutSubmit">
			<div class="checkoutSubmit_conent">
				<div class="checkoutSubmit-info-result clearfix">
					<div class="checkoutSubmit-info-result-content fr">
						<p>
							<em>商品总额：</em>
							<span>¥4400.00</span>
						</p>
						<p>
							<em>折扣金额：</em>
							<span>¥¥0.00</span>
						</p>
						<p>
							<em>商品总额：</em>
							<span>¥4400.00</span>
						</p>
						<p>
							<em>优惠券抵扣：</em>
							<span>¥0.00</span>
						</p>
						<p>
							<em>运费：</em>
							<span>¥0.00</span>
						</p>
					</div>
				</div>
			</div>
			
			
		</div>
		<!-- 窗口 -->
		<div class="checkoutSubmit-info-content-static ">
			<div class="clearfix">
			<div class="checkoutSubmit-info-content-left fl">
				<a class="checkoutSubmit-info-content-right-return" href="#">&lt; 返回购物车</a>
				<div class="checkoutSubmit-info-content-left-content-split checkoutSubmit-info-content-left-content-l"></div>
				<a href="#" class="checkoutSubmit-info-content-left-service">联系客服<span></span></a>
			</div>
			<div class="checkoutSubmit-info-content-right fr clearfix">
				<div class="checkoutSubmit-info-content-right-ul fl">
					<div class="checkoutSubmit-info-content-right-li">
						<span>
							总件数：共 <em>4</em> 件
						</span>
						<span class="m109">，应付总额：</span>
						<span class="checkoutSubmit-info-content-right-li-price">
							¥
							<!-- /react-text -->
							<!-- react-text: 304 -->4400.00
							<!-- /react-text -->
						</span>
					</div>
					<div class="checkoutSubmit-info-content-right-li">
						<span>收货信息:</span>
					</div>
				</div>
				<a href="index/"><div class="checkoutSubmit-info-content-right-submit fl" id="SubmitSecond">立即支付</div></a>
			</div>
			</div>
			<div class="checkoutSubmit-info-content-static_  clearfix">
				<div class="checkoutSubmit-info-content-left fl">
					<a class="checkoutSubmit-info-content-right-return" href="#">&lt; 返回购物车</a>
					<div class="checkoutSubmit-info-content-left-content-split checkoutSubmit-info-content-left-content-l"></div>
					<a href="#" class="checkoutSubmit-info-content-left-service">联系客服<span></span></a>
				</div>
				<div class="checkoutSubmit-info-content-right fr clearfix">
					<div class="checkoutSubmit-info-content-right-ul fl">
						<div class="checkoutSubmit-info-content-right-li">
							<span>
								总件数：共 <em>4</em> 件
							</span>
							<span class="m109">，应付总额：</span>
							<span class="checkoutSubmit-info-content-right-li-price">
								¥
								<!-- /react-text -->
								<!-- react-text: 304 -->4400.00
								<!-- /react-text -->
							</span>
						</div>
						<div class="checkoutSubmit-info-content-right-li">
							<span>收货信息:</span>
						</div>
					</div>
					<a href="index/"><div class="checkoutSubmit-info-content-right-submit fl" id="SubmitSecond">立即支付</div></a>
				</div>
			</div>
		</div>
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

			<!-- 编辑收货地址 -->
			<div class="edit">
				<div class="bg"></div>
				<div class="editWindows">
					<div class="windowsTitle">
						编辑地址
						<span class="close">X</span>
					</div>
					<div class="windowsContent">
						<div class="name">
							<em class="star">*</em>收件人
							<input type="text">
						</div>
						<div class="area clearfix">
							<div class="fl">
								<em class="star">*</em>所在地区
							</div>
							<div id="distpicker2" class="fl">
								<select id="select1"></select>
								<select id="select2"></select>
								<select id="select3"></select>
							</div>
						</div>
						<div class="particularAdress">
							<em class="star">*</em>详细地址
							<input type="text">
						</div>
						<div class="phone">
							<em class="star">*</em>
							手机号码
							<input type="text">
						</div>
						<div class="setAdress">
							<input id="adress" type="checkbox">设为默认地址</div>
						<div class="buttomTeam">
							<span class="save">保存并使用</span>
							<span id="true" class="save">确定添加</span>
							<span class="flase">取消</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 删除弹窗 -->
			<div class="remove">
				<div class="bg"></div>
				<div class="removeWindows">
					<span class="close">X</span>
					<em class="icon"></em>
					<div class="yesDel">确定删除该地址吗？</div>
					<div class="line"></div>
					<div class="button">
						<span class="yes">确定</span>
						<span class="no">取消</span>
					</div>
				</div>
			</div>
		
		<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="assert/lib/layer/layer.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/js/ShoppingProcess.js/ShoppingProcess-jq.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				//收货地址弹出框
				$(".windowsTitle .close").click(function() {
					$(this).parents(".edit").hide();
					$(".edit input").val("");
				})
				$(".buttomTeam .flase").click(function() {
					$(this).parents(".edit").hide();
					$(".edit input").val("");
				})
				//编辑地址按钮
				$(".addressList ").on("click", ".changeAdress", function() {
					$(".bg").fadeIn();
					$("#true").hide();
					$(".buttomTeam .save").eq(0).show();
					$(".edit").fadeIn();
					index = $(this).parents("li").index();
					$(".name input").val($(".addressList li").eq(index).find(".userName").text());
					$(".phone input").val($(".addressList li").eq(index).find(".phone").text());
					$(".particularAdress input").val($(".addressList li").eq(index).find(".address span").text());
				})
				$(".buttomTeam .save").eq(0).click(function() {
					$(".addressList li").eq(index).find(".userName").text($(".edit .name input").val());
					$(".addressList li").eq(index).find(".address").text($("#distpicker2 select").eq(0).val() + " " + $("#distpicker2 select").eq(1).val() + " " + $("#distpicker2 select").eq(2).val());
					$(".addressList li").eq(index).find(".address").append('<span>'+$(".particularAdress input").val()+'</span>')
					$(".addressList li").eq(index).find(".phone").text($(".edit .phone input").val());
					var flag = $(".setAdress input").prop("checked");
					if (flag) {
		
						for (var i = 0; i < $(".addressList li").length; i++) {
							var nowTip = $(".addressList li").eq(i).find(".name-nowTips div").eq(1).hasClass("nowTip");
							var flag1 = $(".addressList li").eq(i).find(".control p").eq(1).hasClass("default");
							if (nowTip) {
								$(".addressList li").eq(i).find(".name-nowTips div").eq(1).remove();
							}
							if (!flag1) {
								$(".addressList li").eq(i).find(".control").append('<p class="default">设为默认</p>')
							}
						}
						$(".addressList li").eq(index).find(".default").remove();
						var nowTip_flag = $(".addressList li").eq(index).find(".name-nowTips div").eq(1).hasClass("nowTip");
						if (!nowTip_flag) {
							$(".addressList li").eq(index).find(".name-nowTips").append('<div class="nowTip fl">默认地址</div>');
						}
					}
		
					$(".edit input").val("");
					$("#adress").prop("checked", false);
					$(this).parents(".edit").hide();
					$(".edit input").val("");
				})
		
				//设为默认按钮
				$(".addressList ").on("click", ".default", function() {
					$(this).parents("li").find(".name-nowTips").append('<div class="nowTip fl">默认地址</div>');
					$(this).parents("li").siblings("li").find(".nowTip").remove();
					for (var i = 0; i < $(".addressList li").length; i++) {
						var flag = $(".addressList li").eq(i).find(".control p").eq(1).hasClass("default");
						if (!flag) {
							$(".addressList li").eq(i).find(".control ").append('<p class="default">设为默认</p>');
						}
					}
					$(this).remove();
				})
				//删除地址弹出框
				$(".addressList  ").on("click", ".del", function() {
					$(".bg").fadeIn();
					index1 = $(this).parents("li").index();
					$(".remove").fadeIn();
		
					$(".remove .close").click(function() {
						$(this).parents(".remove").hide();
					})
					$(".remove .no").click(function() {
						$(this).parents(".remove").hide();
					})
					$(".remove .yes").click(function() {
						$(".addressList li").eq(index1).remove();
						$(".remove").hide();
					})
				})
				//新增收货地址
				$(".right-bg .title span").click(function() {
					$("#true").show();
					$(".buttomTeam .save").eq(0).hide();
					$(".edit").fadeIn();
					$(".bg").fadeIn();
				})
				$("#true").click(function() {
					//判断是否默认
					var flag2 = $("#adress").prop("checked");
					// console.log( $(".addressList li").eq(0).find(".name-nowTips div").eq(1));
					if (flag2) {
						for (var i = 0; i < $(".addressList li").length; i++) {
							var flag3 = $(".addressList li").eq(i).find(".name-nowTips div").eq(1).hasClass("nowTip");
							if (flag3) {
								$(".addressList li").eq(i).find(".name-nowTips div").eq(1).remove();
								$(".addressList li").eq(i).find(".control ").append('<p class="default">设为默认</p>');
							}
						}
						$(".addressList ").append('<li class="clearfix">' + '<div class="userMessage fl ">' +
							'<div class="name-nowTips clearfix">' + '<div class="userName fl">' + $(".edit .name input").val() +
							'</div>' +
							'<div class="nowTip fl">默认地址</div></div>' + '<div class="address">' + $("#select1").val() + ' ' + $(
								"#select2").val() + ' ' + $("#select3").val() + ' ' + '<span>' + $(".particularAdress input").val() +
							'</span></div>' +
							'<div class="phone">' + $(".edit .phone input").val() + '</div></div>' +
							'<div class="control fr"><div class="del">X</div><p class="changeAdress">编辑地址</p></div>' + '</li>');
						$("#adress").prop("checked", false);
						$(this).parents(".edit").hide();
					}
					if (!flag2) {
						$(".addressList ").append('<li class="clearfix">' + '<div class="userMessage fl ">' +
							'<div class="name-nowTips clearfix">' + '<div class="userName fl">' + $(".edit .name input").val() +
							'</div>' +
							'</div>' + '<div class="address">' + $("#select1").val() + ' ' + $(
								"#select2").val() + ' ' + $("#select3").val() + ' ' + '<span>' + $(".particularAdress input").val() +
							'</span></div>' +
							'<div class="phone">' + $(".edit .phone input").val() + '</div></div>' +
							'<div class="control fr"><div class="del">X</div><p class="changeAdress">编辑地址</p><p class="default">设为默认</p></div>' +
							'</li>');
						$(this).parents(".edit").hide();
					}
					$(".edit input").val("")
				})
			})
		</script>
	</body>
</html>
