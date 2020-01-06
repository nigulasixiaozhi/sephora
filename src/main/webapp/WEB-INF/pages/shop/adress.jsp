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
		<link rel="stylesheet" type="text/css" href="assert/css/Address/Address.css" />
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
							<span class="text">交易管理</span>
							<span class="arrow bottom"></span>
						</dt>
						<dd><a href="myOrder/">我的订单</a></dd>
						<dd><a href="">我的优惠券</a></dd>
						<dd><a href="">我的兑礼订单</a></dd>
					</div>
					<div>
						<dt class="clearfix">
							<span class="text">个人信息管理</span>
							<span class="arrow bottom"></span></dt>
						<dd><a href="personalData/">编辑个人资料</a></dd>
						<dd><a href="address/">收货地址管理</a></dd>
						<dd><a href="">更改密码</a></dd>
					</div>
				</dl>
			</div>
			<div class="right-bg fr">
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
						<li class="clearfix">
							<div class="userMessage fl ">
								<div class="name-nowTips clearfix">
									<div class="userName fl">532</div>
								</div>
								<div class="address">
									北京 北京市 东城区 <span>哇塞大所大所1sdsa</span>
								</div>
								<div class="phone">13912345678</div>
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
		</div>
		<!-- 脚部 -->
		<%@ include file="/foot.jsp" %>
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
		<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/lib/js/distpicker.data.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/lib/js/distpicker.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#true").hide();
				//文本轮播
				$(".txtScroll-top").slide({
					mainCell: ".bd ul",
					autoPage: true,
					effect: "topLoop",
					autoPlay: true,
					vis: 1,
					delayTime: 1000,
				});
				//侧栏
				$(".top_allproducts_navigation").hide();
				$(".top_allproducts_left").hover(function() {
					$(".top_allproducts_navigation").show();
				}, function() {
					$(".top_allproducts_navigation").hide();

				})
				//左侧树状导航
				$(".left-tree .content dt").click(function() {
					$(this).siblings("dd").toggle();
					var flag = $(this).find(".arrow").is(".bottom")
					if (flag) {
						$(this).find(".arrow").addClass("top").removeClass("bottom");
					} else {
						$(this).find(".arrow").addClass("bottom").removeClass("top");
					}
				})
				$(".left-tree .content dd").eq(4).find("a").css({
					color: "#ee0000",
				})
				//省市区xuanze
				$("#distpicker2").distpicker({
					province: "---- 所在省 ----",
					city: "---- 所在市 ----",
					district: "---- 所在区 ----"
				});
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
