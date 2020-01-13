<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 头部 -->
<div class="top">
	<!-- 标题 -->
	<div class="top-wrapper">
		<div class="container">
			<!-- 左侧 -->
			<div class="top-wrapper-left fl">
				<span class="top-wrapper-left-logo">欢迎来到丝芙兰</span>
				<c:choose>
					<c:when test="${!empty userLogin}">
						<span>${userLogin.userName}</span>
						<i class="top-wrapper-left-i"></i>
						<a href="exitUser">退出</a>
					</c:when>
					<c:when test="${empty userLogin}">
						<a href="login/" class="top-wrapper-left-login">请登录</a>
						<i class="top-wrapper-left-i"></i>
						<a href="registered/">免费注册</a>
					</c:when>
				</c:choose>

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
					<a href="personalCenter/" class="top-wrapper-right-content-my">我的丝芙兰</a>
					<!-- 箭头 -->

					<div class="top-wrapper-order">
						<img src="assert/img/head/top_angle_w2.png" class="top-wrapper-right-img"> <a href="myOrder/${userLogin.rowId}">我的订单</a>
					</div>
				</div>


				<img src="assert/img/head/vip-club.png" class="vip-club"> <a href="#" class="top-wrapper-right-content-vip">会员俱乐部</a> <img src="assert/img/head/mobile-sephora.png" class="mobile-sephora"> <a href="#" class="top-wrapper-right-content-pho">手机丝芙兰</a> <a href="#" class="top-wrapper-right-content">美力事业</a> <a href="#" class="top-wrapper-right-content">帮助中心</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>