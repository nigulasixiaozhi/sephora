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
		<link rel="stylesheet" type="text/css" href="assert/css/Login/Login.css" />
	</head>
	<body>
		<!-- 头部 -->
		<div class="top">
			<div class="container">
				<a href="index/">
					<img src="assert/img/Login/search_logo.png">
				</a>
			</div>
		</div>
		<!-- 中间 -->
		<div class="middle">
			<div class="container">
				<div class="middle_box">
					<!-- 一行 -->
					<div class="middle_box_one">
						登陆丝芙兰官网
					</div>
					<!-- 账号 -->
					<div class="middle_box_two">
						<input type="text" id="userCode" value="" placeholder="账号" />
						<i class="icon_land icon_phone"></i>
					</div>
					<!-- 密码 -->
					<div class="middle_box_three">
						<input type="password" id="userPass" value="" placeholder="密码" />
						<i class="icon_land icon_pass"></i>
					</div>
					<!-- 忘记密码 -->
					<div class="middle_box_four">
						<a href="#">忘记密码？</a>
					</div>
					<!-- 登陆 -->
					<div class="middle_box_five">
						<button style="background:black; cursor:pointer;" type="button">登陆</button>
					</div>
					<!-- 用户协议 -->
					<div class="middle_box_six">
						<input type="checkbox" />
						<span>阅读 <a href="#">《丝芙兰用户协议》</a></span>
						
					</div>
					<!-- qq -->
					<div class="middle_box_seven">
						<div class="middle_box_seven_logo fl">
							<i class="icon_land icon_wei"></i>
							<i class="icon_land icon_qq"></i>
							<i class="icon_land icon_sing"></i>
						</div>
						<div class="middle_box_seven_ri fr">
							还没有账号？<a href="registered/">免费注册</a>
							<i class="icon_land icon_triangle"></i>
						</div>
						<div class="clear">	</div>
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
		<script type="text/javascript" src="assert/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript">
		$(".middle_box_five button").click(function(){
			$.ajax({
				type:"post",
				url:"doLogin",
				data:{
					userCode:$("#userCode").val(),
					userPass:$("#userPass").val()
				},
				success:function(res){
					if(res){
						alert("登陆成功");
						 window.location.href="index";
					}else{
						alert("账号或密码错误")
					}
					
				}
			})
		})
			
		</script>
	</body>
</html>
