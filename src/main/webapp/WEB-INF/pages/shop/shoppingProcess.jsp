<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" type="text/css" href="assert/css/Address/Address.css" />
<link rel="stylesheet" type="text/css" href="assert/css/ShoppingProcess/ShoppingProcess.css" />

</head>
<body>
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
		<div class="checkoutExplain_text">经由快递公司通知，目前2万元以上的订单，暂不支持货到付款服务。 为确保您的订单可以正常发货，请选择其他付款形式。给您造成不便，敬请谅解。如有任何问题请咨询在线客服。</div>
	</div>
	<!-- 收货信息 -->
	<div class="address">
		<div class="right-bg ">
			<div class="title">
				收货地址 <span class="fr">+ 新增收货地址</span>
			</div>
			<div class="right-content">
				<div class="tip">最多保存10个有效地址</div>
				<ul class="addressList">
					<c:if test="${!empty addressList}">
						<c:forEach items="${addressList}" var="list">
							<c:if test="${userLogin.rowId==list.userId}">
								<li data-id="${list.rowId }" class="clearfix">
									<div class="userMessage fl ">
										<div class="name-nowTips clearfix">
											<div class="userName fl">${list.addressName }</div>
											<c:if test="${list.isDefault==1}">
												<div class="nowTip fl">默认地址</div>
											</c:if>
										</div>
										<div class="address">
											${list.addressPcd}&nbsp;<span>${list.detailedAddress}</span>
										</div>
										<div class="phone">${list.addressPhone }</div>
									</div>
									<div class="control fr">
										<div class="del">X</div>
										<p class="changeAdress">编辑地址</p>
										<c:if test="${list.isDefault!=1}">
											<p class="default">设为默认</p>
										</c:if>
									</div>
								</li>
							</c:if>
						</c:forEach>
					</c:if>
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
				<div class="module_content_header">支付方式</div>
			</div>
			<!-- 在线支付 -->
			<div class="checkoutPayFor_content_wrap clearfix">
				<div class="checkoutPayFor_content_wrap-list Online_Payment active fl">
					<span class="checkoutPayFor_content_wrap_icon"></span> <span class="checkoutPayFor_content_wrap_text">在线支付</span>
				</div>
				<!-- 货到付款 -->
				<div class="checkoutPayFor_content_wrap-list COD fl">
					<span class="checkoutPayFor_content_wrap_icon"></span> <span class="checkoutPayFor_content_wrap_text">货到付款</span>
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
				<label class="checkoutTable_wrap_list"> <input type="radio" class="module_radio module_radio1" name="checkoutMethod" value="on"> 工作日、双休与假日均可送货
				</label> <label class="checkoutTable_wrap_list"> <input type="radio" class="module_radio module_radio2" name="checkoutMethod" value="on"> 只双休日、假日送货 (工作日不送)
				</label> <label class="checkoutTable_wrap_list"> <input type="radio" class="module_radio module_radio3" name="checkoutMethod" value="on"> 只工作日送货 (双休日、假日不用送) (注: 写字楼/商用地址客户请选择)
				</label>
			</div>
		</div>
	</div>
	<!-- 已购商品清单 -->
	<div class="checkoutPurchased">
		<div class="checkoutPurchased_content">
			<!-- 模块化配置 -->
			<div class="module_checkoutTable">
				<div class="module_content_header">已购商品清单</div>
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
				<c:if test="${!empty shopping}">
					<c:forEach items="${shopping}" var="shopping">
						<div data-id="${shopping.rowId}" class="checkout-product-body-item">
					<div class="checkout-product-body-item-content clearfix">
						<div class="checkout-product-body-item-img fl">
							<img src="${shopping.imgPath }">
						</div>
						<div class="checkout-product-body-item-info fl">
							<h5>${shopping.brandName}</h5>
							<p class="checkout-product-body-item-productNameCN">${shopping.productName}</p>
							<!-- <span class="checkout-product-body-item-attr-html default ">规格：100ml</span> -->
						</div>
						<div class="checkout-product-body-item-unit fl">
							<div class="checkout-product-body-item-unit-price">
								<span class="checkout-product-body-item-unit-sapPrice">￥${shopping.productPrice}</span>
							</div>
						</div>
						<div class="checkout-product-body-item-amount fl">${shopping.payCount }</div>
						<div class="checkout-product-body-item-subtotal fl">
							<span class="checkout-product-body-item-unit-sapPrice">${shopping.sumPrice}</span>
						</div>

					</div>
				</div>
					</c:forEach>
				</c:if>
				
			</div>

		</div>
	</div>
	<!-- 礼物包装 -->
	<div class="checkoutGift">
		<div class="checkoutGift_content">
			<!-- 模块化配置 -->
			<div class="module_checkoutTable">
				<div class="module_content_header">礼物包装</div>
			</div>
			<div class="checkoutGift-list-warp">
				<label class="checkoutGift-list"> <em class="_checkbox none"></em> <img src="assert/img/ShoppingProcess/giftV1_PC.png"> <span>全场满300元可领取包装礼盒或礼品袋，包装样式随机。</span>
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
						<em>商品总额：</em> <span>¥${sumPriceAndCount.checkedPrice}</span>
					</p>
					<p>
						<em>折扣金额：</em> <span>¥0.00</span>
					</p>
					<p>
						<em>商品总额：</em> <span>¥${sumPriceAndCount.checkedPrice}</span>
					</p>
					<p>
						<em>优惠券抵扣：</em> <span>¥0.00</span>
					</p>
					<p>
						<em>运费：</em> <span>¥0.00</span>
					</p>
				</div>
			</div>
		</div>


	</div>
	<!-- 窗口 -->
	<div class="checkoutSubmit-info-content-static ">
		<div class="clearfix">
			<div class="checkoutSubmit-info-content-left fl">
				<a class="checkoutSubmit-info-content-right-return" href="shoppingCart">&lt; 返回购物车</a>
				<div class="checkoutSubmit-info-content-left-content-split checkoutSubmit-info-content-left-content-l"></div>
				<a href="#" class="checkoutSubmit-info-content-left-service">联系客服<span></span></a>
			</div>
			<div class="checkoutSubmit-info-content-right fr clearfix">
				<div class="checkoutSubmit-info-content-right-ul fl">
					<div class="checkoutSubmit-info-content-right-li">
						<span> 总件数：共 <em>${sumPriceAndCount.checkedCount}</em> 件
						</span> <span class="m109">，应付总额：</span> 
						<span class="checkoutSubmit-info-content-right-li-price"> ¥${sumPriceAndCount.checkedPrice}</span>
					</div>
					<div class="checkoutSubmit-info-content-right-li">
						<span>收货信息:</span>
					</div>
				</div>
				<input type="hidden" value="${userLogin.rowId}" id="userId"/>
				<div style="color:#fff;" class="checkoutSubmit-info-content-right-submit fl" id="Submit">立即支付</div>
			</div>
		</div>
	</div>
	<!-- 脚部 -->
	<%@ include file="/foot.jsp"%>
	<!-- 编辑收货地址 -->
	<div class="edit">
		<div class="bg"></div>
		<div class="editWindows">
			<div class="windowsTitle">
				编辑地址 <span class="close">X</span>
			</div>
			<form id="address_edit_add">
				<div class="windowsContent">
					<div class="name">
						<em class="star">*</em>收件人 <input type="text" name="addressName">
					</div>
					<div class="area clearfix">
						<div class="fl">
							<em class="star">*</em>所在地区
						</div>
						<div id="distpicker2" class="fl">
							<select name="province" id="select1"></select> <select name="city" id="select2"></select> <select name="district" id="select3"></select>
						</div>
					</div>
					<div class="particularAdress">
						<em class="star">*</em>详细地址 <input type="text" name="detailedAddress">
					</div>
					<div class="phone">
						<em class="star">*</em> 手机号码 <input type="text" name="addressPhone">
					</div>
					<div class="postcode">
						<em class="star">*</em> 邮编 <input type="text" name="postcode">
					</div>
					<div class="setAdress">
						<input id="isDefault" value="1" name="isDefault" type="checkbox">设为默认地址
					</div>
					<div class="buttomTeam">
						<input type="hidden" id="userId" value="${userLogin.rowId}" name="userId" /> <input type="hidden" id="rowId" name="rowId" /> <span class="save">保存并使用</span> <span id="true" class="save">确定添加</span> <span class="flase">取消</span>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- 删除弹窗 -->
	<div class="remove">
		<div class="bg"></div>
		<div class="removeWindows">
			<span class="close">X</span> <em class="icon"></em>
			<div class="yesDel">确定删除该地址吗？</div>
			<div class="line"></div>
			<div class="button">
				<span class="yes">确定</span> <span class="no">取消</span>
			</div>
		</div>
	</div>


	<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="assert/lib/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script src="assert/js/ShoppingProcess.js/ShoppingProcess-jq.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		//选择地址
		$(".address .addressList").on("click","li",function(){
			$(this).css({
				"border":"2px solid red"
			}).siblings("li").css("border","none");
			addressId = $(this).attr("data-id");
		})
		$(".address .addressList li").eq(0).click();
		//提交订单
		$("#Submit").click(function(){
			 $.ajax({
			type:"post",
			url:"order/add",
			data:{"addressId":addressId},
			success:function(orderId){
				if(orderId){
					var shoppingId =[];
					var $shopping = $(".checkout-product-body-item");
					for(var i=0;i<$shopping.length;i++){
						shoppingId.push($shopping.eq(i).attr("data-id"));
					}
					$.ajax({
						type:"post",
						url:"orderList/add",
						data:{
							"shoppingId":shoppingId,
							"orderId":orderId,
							},
						success:function(res){
							if(res){
								$.ajax({
									type:"post",
									url:"shopping/del",
									data:{"shoppingId":shoppingId},
									success:function(res){
										if(res){
											alert("下单成功！");
											window.location.href="myOrder/"+$("#userId").val();
										}
									}
								})
								
							}
						}
					})
				}
			}
		})   
		})
	
	//收货地址弹出框
	$(".windowsTitle .close").click(function() {
		$(this).parents(".edit").hide();
		$("#address_edit_add")[0].reset();
	})
	$(".buttomTeam .flase").click(function() {
		$(this).parents(".edit").hide();
		$("#address_edit_add")[0].reset();
	})
	//编辑地址按钮
	$(".addressList ").on("click", ".changeAdress", function() {
		$("#rowId").val($(this).parents("li").attr("data-id"));
		$("#true").hide();
		$(".buttomTeam .save").eq(0).show();
		$(".edit").fadeIn();
		var index = $(this).parents("li").index();
		$(".name input").val($(".addressList li").eq(index).find(".userName").text());
		$(".phone input").val($(".addressList li").eq(index).find(".phone").text());
		$(".particularAdress input").val($(".addressList li").eq(index).find(".address span").text()); 
	})
	//保存编辑的收货地址
	$(".buttomTeam .save").eq(0).click(function() {
		addAndEdit("address/update");
		$("#rowId").val("");
		$("#address_edit_add")[0].reset();
	})

	//设为默认按钮
	$(".addressList ").on("click", ".default", function() {
		var rowId= $(this).parents("li").attr("data-id");
		$.ajax({
			type:"post",
			url:"address/clickDefault",
			data:{
				"rowId":rowId,
			},
			success:(res)=>{
				if(res){
					$(this).parents("li").find(".name-nowTips").append('<div class="nowTip fl">默认地址</div>');
					$(this).parents("li").siblings("li").find(".nowTip").remove();
					for (var i = 0; i < $(".addressList li").length; i++) {
						var flag = $(".addressList li").eq(i).find(".control p").eq(1).hasClass("default");
						if (!flag) {
							$(".addressList li").eq(i).find(".control ").append('<p class="default">设为默认</p>');
						}
					}
					$(this).remove();
				}
			}
			
			
		})
	})
	//删除地址弹出框
	$(".addressList").on("click", ".del", function() {
		var rowId = $(this).parents("li").attr("data-id");
		//index1 = $(this).parents("li").index();
		$(".remove").fadeIn();
		$(".remove .close").click(function() {
			$(this).parents(".remove").hide();
		})
		$(".remove .no").click(function() {
			$(this).parents(".remove").hide();
		})
		$(".remove .yes").click(function() {
			//$(".addressList li").eq(index1).remove();
			$.ajax({
				type:"get",
				url:"address/del/"+rowId,
				success:function(res){
					if(res){
						initData();
						$(".remove").hide();
					}
				}
			})
		})
	})
	//新增收货地址
	$(".right-bg .title span").click(function() {
		$("#true").show();
		$(".buttomTeam .save").eq(0).hide();
		$("#select2").html("<option>----市信息----</option>");
		$("#select3").html("<option>----区信息----</option>");
		$(".edit").fadeIn();
	})
	//保存新增的地址
	$("#true").click(function() {
		addAndEdit("address/add");
		$("#address_edit_add")[0].reset();
	})
	
	//添加或修改地址
		function addAndEdit(url){
			var userId = $("#userId").val();
			var serialize = $("#address_edit_add").serialize();
			if($("#isDefault").prop("checked")){
				$.ajax({
					type:"get",
					url:"address/addEditDefault/"+userId,
					success:function(res){
						if(res){
							 $.ajax({
									type:"post",
									url:url,
									data:serialize,
								  	success:function(res){
								  		 if(res){
												initData();
												$(".edit").hide();
										 }
								  	}
							  })  			
						}
					}			
				})
			}else{
				$.ajax({
					type:"post",
					url:url,
					data:serialize,
				  	success:function(res){
				  		 if(res){
								initData();
								$(".edit").hide();
							}
				  	}
				})  
			}
		}
		
		
		//java
		//点击一级分类
$("#select1").change(function(){
	var parId = $(this).val();
	if(parId!=-1){
		initAddressData(parId,2);
	}
	
})

//点击二级分类
$("#select2").change(function(){
	var parId = $(this).val();
	if(parId!=-1){
		initAddressData(parId,3);
	}
	
})


initAddressData();
//查询分类
function initAddressData(parentCode=-1,id=1){
	var options="<option>----请选择----</option>";
	$.ajax({
		type:"get",
		url:"address/findArea/"+parentCode,
		success:function(areaList){
			if(areaList){
				$.each(areaList,function(index,area){
					var option = "<option value='"+area.areaCode+"'>"+area.areaName+"</option>";
					options+=option;
				})
				$("#select"+id).html(options);
			}
		}
	})
}
//初始化地址
function initData(){
	var userId = $("#userId").val();
	$.ajax({
		type:"post",
		url:"address/findAddressList/",
		data:{"userId":userId},
		success:function(res){
			if(res){
				$(".addressList li").remove();
				$.each(res,function(index,address){
					//将地址插入到页面
						var  leftDefault = address.isDefault==1?'<div class="nowTip fl">默认地址</div>':'';
						var rightDefault = address.isDefault==0?'<p class="default">设为默认</p>':'';
						var addressLi='<li data-id='+address.rowId+' class="clearfix">' + '<div class="userMessage fl ">' +
						'<div class="name-nowTips clearfix">' + '<div class="userName fl">' + address.addressName +
						'</div>' + leftDefault + '</div><div class="address">' +address.addressPcd+ '<span>' + address.detailedAddress +
						'</span></div>' +'<div class="phone">' + address.addressPhone + '</div></div>' +
						'<div class="control fr"><div class="del">X</div><p class="changeAdress">编辑地址</p>'+rightDefault+'</div></li>';
						$(".addressList").append(addressLi);
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
