<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
		<jsp:include page="/base.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
<link rel="stylesheet" type="text/css" href="assert/css/registered/registered.css" />
<link rel="stylesheet" type="text/css" href="assert/css/head/Blackfoot.css" />
</head>
<body>
	<!-- 顶部 -->
	<div class="head">
		<div class="container">
			<div class="head_loding">
				<!-- logo -->
				<div class="head_loding_logo fl">
					<a href="index/"><img src="assert/img/registered/download.png" class="photo"></a>
				</div>
				<div class="welcome fl">欢迎注册</div>

				<div class="immediately fr">
					<a href="login/">立即登录</a> <span class="immedi"></span>
				</div>
				<div class="already fr">已有账号？</div>
				<div class="clear"></div>
			</div>
		</div>

	</div>
	<!-- 注册 -->
	<div class="during">
		<div class="container">
			<div class="during_re">
				<!-- 2行 -->
				<div class="during_phone">
					<div class="during_pass">
						<span class="graphics">用户名称</span> 
						<input type="text" name="userName" id="userName" value="" placeholder="请输入用户名称" class="int" />
						<div class="clear"></div>
					</div>
					<div class="during_pass">
						<span class="graphics">用户账号</span> 
						<input type="text" name="userCode" id="userCode" value="" placeholder="请输入用户账号" class="int" />
						<div class="clear"></div>
					</div>
					<!-- 4行 -->
					<div class="during_pass">
						<span class="graphics">输入密码</span> <input type="password" name="userPass" id="userPass" value="" placeholder="6-16位大小写英文字母、数字或符号的组合" class="int" />
						<div class="clear"></div>
					</div>
					<div class="during_pass">
						<span class="graphics">手机号</span> 
						<input type="text" name="userPhone" id="userPhone" value="" placeholder="请输入你的手机号" class="int" />
						<div class="clear"></div>
					</div>
					<!-- 按钮 -->
					<div class="during_btn">
						<button type="button" class="btn">同意条款并注册</button>
					</div>
					<div class="during_read">
						<span class="read"><a href="#">阅读《丝芙兰用户协议》</a></span> <span class="use"><a href="#">使用邮箱注册</a></span> <span class="mark"></span>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>

	</div>
	<!-- 底部 -->
	<div class="tail">
		<!-- 尾部黑色背景 -->
		<div class="tail_floot">
			<!-- 上行 -->
			<div class="tail_floot_up">
				<img src="assert/img/head/footer-redords-icon.png"> <a href="#">沪公网安备 31010602003121号</a> <a href="#">ICP备案序号:沪ICP备05026645号</a> <a href="#">食品经营许可证</a> <a href="#">网站使用条款</a> <a href="#">严正声明</a>
			</div>
			<!-- 下行 -->
			<div class="tail_floot_down">本网站隶属于丝芙兰（上海）化妆品销售有限公司（企业法人营业执照）</div>
		</div>
	</div>
	<script type="text/javascript" src="assert/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".btn").css("background", "black");
			$(".btn").css("color", "#fff");
			$(".during_btn .btn").click(function(){
				$.ajax({
					type:"post",
					url:"addUser/",
					data:{
						userName:$("#userName").val(),
						userCode:$("#userCode").val(),
						userPass:$("#userPass").val(),
						userPhone:$("#userPhone").val()
					},
					success:function(res){
						if(res){
							alert("注册成功！");
							window.location.href="index/";
						}else{
							alert("账户名称重复");
						}
					}
				})
			})
			
			/* $("#phone").blur(function() {
				//去掉两头空格
				var txt = $("#phone").val();
				//正则
				var reg = /^1(3|4|5|7|8)\d{9}$/;

				var flag = reg.test(txt);
				if (flag) {
					$(this).css("border-color", "green");

					$(".obtain").attr('disabled', false);
					$(".obtain").css("background", "black");
					$(".obtain").css("color", "#fff");
				} else {
					$(this).css("border-color", "red");
					alert("输入信息有误");
				}
			}) */

			/* $("input").blur(function() {
				var name = $("").val();
				var num = $("").val();
				var mail = $("").val();
				var representatives = $("").val();
				var aptitude = $(" ").val();

				if (name && num && mail && representatives && aptitude) {
					$(".btn").attr('disabled', false);
					$(".btn").css("background", "black");
					$(".btn").css("color", "#fff");
				}
			}) */

		})
	</script>
</body>
</html>
