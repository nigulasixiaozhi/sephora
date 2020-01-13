<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<jsp:include page="/base.jsp"></jsp:include>
		<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="assert/css/head/Hohead.css" />
		<link rel="stylesheet" type="text/css" href="assert/css/personalData/personalData.css" />
	</head>
	<body>
		<!-- 头部 -->
		<%@ include file="/head.jsp" %>
		<div class="body container clearfix">
			<!-- 左侧树状导航 -->
			<jsp:include page="/leftTree.jsp"></jsp:include>
			<div class="right-bg fr">
				<div class="title">
					编辑个人资料
				</div>
				<div class="right-content ">
					<div class="name clearfix">
						<p><em class="star">*</em>姓名/称谓</p>
						<input type="text">
					</div>
					<div class="phone clearfix">
						<p><em class="star">*</em>手机</p>
						<input type="text">
					</div>
					<div class="email clearfix">
						<p><em class="star">*</em>邮箱</p>
						<input type="text">
					</div>
					<div class="sex clearfix">
						<p><em class="star">*</em>性别</p>
						<input type="radio" name="sex" checked=""><span>男</span>
						<input type="radio" name="sex"><span>女</span>
					</div>
					<div class="headImg ">
						<div class="clearfix">
							<p>头像</p>
							<ul class="imgTitle fl clearfix">
								<li class="black">推荐头像</li>
								<li>上传头像</li>
							</ul>
						</div>
						<div class="uploading">
							<div>
								<img src="assert/img/personalData/g.gif">
								<span>修改头像</span>
							</div>
						</div>
						<ul class="imgContent clearfix">
							<li><img src="assert/img/personalData/img1.png"></li>
						</ul>
					</div>
					<div class="nickname clearfix">
						<p>昵称</p>
						<input type="text">
					</div>
					<div class="nickname clearfix">
						<p>省市区</p>
						<div id="distpicker2">
							<select id="select1"></select>
							<select id="select2"></select>
							<select id="select3"></select>
						</div>
					</div>
					<div class="adress clearfix">
						<p>地址</p>
						<input type="text">
					</div>
					<span class="save">保存信息</span>
				</div>
			</div>
		</div>
		<!-- 保存成功 -->
		<div class="bg"></div>
		<div class="shade">
			<div class="txt">保存成功</div>
			<div class="true">确定</div>
		</div>
		<!-- 脚部 -->
		<%@ include file="/foot.jsp" %>
		<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/lib/js/distpicker.data.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/lib/js/distpicker.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
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
			$(".left-tree .content dd").eq(3).find("a").css({
				color: "#ee0000",
			})
			//省市区xuanze
			$("#distpicker2").distpicker({
				province: "---- 所在省 ----",
				city: "---- 所在市 ----",
				district: "---- 所在区 ----"
			});
			$(".imgTitle li").click(function() {
				$(this).addClass("white").removeClass("black").siblings("li").addClass("black").removeClass("white");
			})
			//图片生成
			for (var i = 2; i < 13; i++) {
				$(".imgContent").append('<li ><img src="assert/img/personalData/img' + i + '.png" ></li>');
			}
			$(".imgTitle li").eq(0).click(function() {
				$(".imgContent").show().siblings(".uploading").hide();
			})
			$(".imgTitle li").eq(1).click(function() {
				$(".uploading").show().siblings(".imgContent").hide();
			})
			$(".save").click(function() {
				$(".bg").show();
				$(".shade").show();
			})
			$(".shade .true").click(function() {
				$(".bg").fadeOut();
				$(".shade").fadeOut();
			})
		//搜索框
		$("#int").click(function() {
			$(".top_search_int_arise").css("display", "block")
		})
		$(".top_search_int_arise").mouseleave(function() {
			$(".top_search_int_arise").css("display", "none")
		})
		</script>
	</body>
</html>
