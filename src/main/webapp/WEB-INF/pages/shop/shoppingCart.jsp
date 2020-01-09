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
<link rel="stylesheet" type="text/css" href="assert/css/shoppingcart/shoppingcart.css" />

</head>
<body>

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
			<div class="clear"></div>
		</div>
	</div>
	<!-- 第三大块，提示 -->
	<div class="hint">
		<div class="container">
			<div class="hint_txt">您的购物车清单如含近效期产品，该近效期产品不支持7天无理由退货，近效期产品为页面有特别标示有效期信息的产品。</div>
		</div>
	</div>
	<!-- 第四块，购物车 -->
	<div class="shop">
		<div class="container">
			<!-- 第一行,全选 -->
			<div class="shop_all">
				<!-- 全选 -->
				<div class="shop_all_whole fl">
					<input type="checkbox" name="" id="checkAll" value="" /> <span>全选</span>
				</div>
				<!-- 商品信息 -->
				<div class="shop_all_message fl">商品信息</div>
				<!-- 单价 -->
				<div class="shop_all_mon fl">单价(元)</div>
				<!-- 数量 -->
				<div class="shop_all_num fl">数量</div>
				<!-- 小计 -->
				<div class="shop_all_small fl">小计(元)</div>
				<!-- 操作 -->
				<div class="shop_all_del fl">操作</div>
				<div class="clear"></div>
			</div>
			<!-- 商品 -->
			<div class="shop_shop">
				<c:if test="${!empty shoppingList}">
					<c:forEach items="${shoppingList}" var="list">
						<!-- 一个 -->
						<div data-id="${list.rowId }" class="shop_shop_perfume">
							<!-- 选项 -->
							<div class="shop_shop_perfume_choice fl">
								<input type="checkbox" />
							</div>
							<!-- 图片 -->
							<div class="shop_shop_perfume_img fl">
								<img src="${list.imgPath }">
							</div>
							<!-- 信息 -->
							<div class="shop_shop_perfume_message fl">
								<!-- 名字 -->
								<div class="shop_shop_perfume_message_name">
									<a href="#">${list.brandName } </a>
								</div>
								<!-- 描述 -->
								<div class="shop_shop_perfume_message_describe ">
									<a href="/details/${list.productId}">${list.productName }</a>
								</div>
							</div>
							<!-- 价格 -->
							<div class="shop_shop_perfume_mon fl">${list.productPrice }</div>
							<div class="shop_shop_perfume_num fl">
								<div class="subtract fl">-</div>
								<div class="nums fl">${list.payCount }</div>
								<div class="plus fl">+</div>
								<div class="clear"></div>
							</div>
							<div class="shop_shop_perfume_small fl">${list.sumPrice }</div>
							<div class="shop_shop_perfume_del fl">
								<i class="icon_del icon_delete"></i>
							</div>
							<div class="clear"></div>
						</div>
					</c:forEach>
				</c:if>

				<!-- 一个 -->
				<!-- <div class="shop_shop_perfume">
					选项
					<div class="shop_shop_perfume_choice fl">
						<input type="checkbox" name="" id="" value="" />
					</div>
					图片
					<div class="shop_shop_perfume_img fl">
						<img src="assert/img/shoppingcart/download3.jpg">
					</div>
					信息
					<div class="shop_shop_perfume_message fl">
						名字
						<div class="shop_shop_perfume_message_name">
							<a href="#">MARC JACOBS </a>
						</div>
						描述
						<div class="shop_shop_perfume_message_describe ">
							<a href="#">克丽丝汀迪奥迪奥小姐花漾淡香水</a>
						</div>
						规格
						<div class="shop_shop_perfume_message_ml">
							<a href="javascript:">规格：<span class="specifica">50ML</span></a>
							更改规格
							<div class="shop_shop_perfume_message_cover">
								一行
								<div class="shop_shop_perfume_message_cover_one">选择规格</div>
								二行
								<div class="shop_shop_perfume_message_cover_two">
									<ul>
										<li>50ML</li>
										<li>30ML</li>
									</ul>
								</div>
								三行
								<div class="shop_shop_perfume_message_cover_three">
									<div class="shop_shop_perfume_message_cover_three_le fl">确定</div>
									<div class="shop_shop_perfume_message_cover_three_ri fl">取消</div>
									<div class="clear"></div>
								</div>
							</div>
							<div class="shop_shop_perfume_message_red">
								<img src="assert/img/shoppingcart/checkout-attr-default.png">
							</div>
						</div>
					</div>
					价格
					<div class="shop_shop_perfume_mon fl">750.00</div>
					<div class="shop_shop_perfume_num fl">
						<div class="subtract fl">-</div>
						<div class="nums fl">1</div>
						<div class="plus fl">+</div>
						<div class="clear"></div>
					</div>
					<div class="shop_shop_perfume_small fl">750.00</div>
					<div class="shop_shop_perfume_del fl">
						<i class="icon_del icon_delete"></i>
					</div>
					<div class="clear"></div>
				</div> -->
			</div>
		</div>
	</div>
	<!-- 第五块，优惠卷 -->
	<div class="discounts">
		<div class="container">
			<!-- 规则 -->
			<div class="discounts_sale">
				<div class="discounts_sale_le fl">优惠卷</div>
				<div class="discounts_sale_con fl">
					*了解优惠卷<a href="#">使用规则</a>
				</div>
				<div class="discounts_sale_ri fr">+输入优惠码</div>
				<div class="clear"></div>
			</div>
			<!-- 卷 -->
			<div class="discounts_roll">
				<i class="icon_roll icon_nothing"></i> <span>您目前没有优惠券</span>
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
					<input type="checkbox" name="" id="checkAlls" value="" /> <span>全选</span>
				</div>
				<!-- 批量 -->
				<div class="settle_del fl">批量删除</div>
				<!-- 联系 -->
				<div class="settle_relation fl">
					<span>联系客服</span> <img src="assert/img/shoppingcart/checkout-submit-phone.png">
				</div>

				<!-- 立即结算 -->
				<a href="shoppingProcess/">
					<p class="settle_settleaccounts fr">立即结算</p>
				</a>
				<!-- 金额 -->
				<div class="settle_money fr">
					<div class="settle_money_up ">
						<div class="settle_money_up_up fr">
							已选择<span class="settle_money_up_num">0</span>件商品，合计:¥ <span class="settle_money_up_money">0.00</span>
						</div>
						<div class="clear"></div>
					</div>
					<div class="settle_money_down">
						<div class="settle_money_down_le fl">
							商品总额:¥&nbsp;<span>0.00</span>
						</div>
						<div class="settle_money_down_ri fl">
							<img src="assert/img/shoppingcart/checkout_first_minu.png"> <span>共节省:¥&nbsp;</span><span>0.00</span>
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
					<input type="checkbox" name="" id="checkAllss" value="" /> <span>全选</span>
				</div>
				<!-- 批量 -->
				<div class="settle_del fl">批量删除</div>
				<!-- 联系 -->
				<div class="settle_relation fl">
					<span>联系客服</span> <img src="assert/img/shoppingcart/checkout-submit-phone.png">
				</div>

				<!-- 立即结算 -->
				<a href="shoppingProcess/">
					<div class="settle_settleaccounts fr">立即结算</div>
				</a>
				<!-- 金额 -->
				<div class="settle_money fr">
					<div class="settle_money_up ">
						<div class="settle_money_up_up fr">
							已选择<span class="settle_money_up_num">0</span>件商品，合计:¥ <span class="settle_money_up_money">0.00</span>
						</div>
						<div class="clear"></div>
					</div>
					<div class="settle_money_down">
						<div class="settle_money_down_le fl">
							商品总额:¥&nbsp;<span>0.00</span>
						</div>
						<div class="settle_money_down_ri fl">
							<img src="assert/img/shoppingcart/checkout_first_minu.png"> <span>共节省:¥&nbsp;</span><span>0.00</span>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>

	<!-- 脚部 -->
	<%@ include file="/foot.jsp"%>
	<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="assert/js/shoppingcart/shoppingcart.js"></script>
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
		//删除
		$(".shop_shop_perfume_del").on("click", "i", function() {
			var rowId = $(this).parents(".shop_shop_perfume").attr("data-id");
			if(confirm("是否要删除？")){
				$.ajax({
					type:"get",
					url:"shopping/del/"+rowId,
					success:function(res){
						if(res){
							initData();
						}
					}
				})
			}
		})

		//初始化购物车数据
		function initData(){
			$.ajax({
				type:"get",
				url:"shopping/find",
				success:function(res){
					if(res){
						$(".shop_shop_perfume").remove();
						$.each(res,function(index,item){
							var shop ='<div data-id='+item.rowId+' class="shop_shop_perfume">'+
							'<!-- 选项 --><div class="shop_shop_perfume_choice fl"><input type="checkbox" /></div>'+
							'<!-- 图片 --><div class="shop_shop_perfume_img fl"><img src='+item.imgPath+'></div>'+
							'<!-- 信息 --><div class="shop_shop_perfume_message fl">'+
							'<!-- 名字 --><div class="shop_shop_perfume_message_name"><a href="#">'+item.brandName+'</a></div>'+
							'<!-- 描述 --><div class="shop_shop_perfume_message_describe "><a href="/details/'+item.productId+'">'+item.productName+'</a></div></div>'+
							'<!-- 价格 --><div class="shop_shop_perfume_mon fl">'+item.productPrice+'</div><div class="shop_shop_perfume_num fl">'+
							'<div class="subtract fl">-</div><div class="nums fl">'+item.payCount+'</div>'+
							'<div class="plus fl">+</div><div class="clear"></div></div><div class="shop_shop_perfume_small fl">'+item.sumPrice+'</div>'+
							'<div class="shop_shop_perfume_del fl"><i class="icon_del icon_delete"></i></div><div class="clear"></div></div>';
							$(".shop_shop").append(shop);
						})
						
					}
				}
			})
		}
		
		//java
		//添加头部
		addHead();
		function addHead() {
			$.ajax({
				post : "get",
				url : "shoppingHead/",
				success : function(res) {
					$("body").prepend(res);
				}
			})
		}
	</script>
</body>
</html>
