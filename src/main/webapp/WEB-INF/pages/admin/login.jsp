<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员登录</title>
<jsp:include page="/base.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assert/admin/css/login.css" />
</head>
<body>
	<div class="bg container-fluid">
		<form id="loginForm" class="form col-md-3 col-md-offset-8 form-horizontal">
			<p class="login-title">欢迎登录</p>
			<div class="form-group">
				<i class="icon col-sm-1 glyphicon glyphicon-user"></i>
				<div class="col-sm-10">
					<input type="text" name="userCode" class="form-control" placeholder="账号">
				</div>
			</div>
			<div class="form-group">
				<i class="icon col-sm-1 glyphicon glyphicon-th"></i>
				<div class="col-sm-10">
					<input type="password" name="userPass" class="form-control" placeholder="密码">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-5">
					<button id="login" type="button" class="btn btn-success">登录</button>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="assert/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assert/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$("#login").click(function(){
			$.ajax({
				type:"post",
				url:"admin/doLogin/",
				data:$("#loginForm").serialize(),
				success:function(res){
					if(res){
						alert("登陆成功");
						window.location.href="admin/index/";
					}else{
						alert("账号密码错误")
					}
				}
			})
		})
		document.onkeydown = function(e){
			if(e.keyCode==13){
				$("#login").click();
			}
		}
	</script>
</body>
</html>