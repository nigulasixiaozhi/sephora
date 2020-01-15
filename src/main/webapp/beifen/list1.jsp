<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/base.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="assert/css/head/Genhead.css" />
<link rel="stylesheet" type="text/css" href="assert/css/List/list.css" />
</head>
<body>
	<c:if test="${!empty productList}">
		<c:set value="${productList.size()%5==0?productList.size()/5:productList.size()/5+1}" var="line"></c:set>
		<c:set value="0" var="begin"></c:set>
		<c:set value="4" var="end"></c:set>
		<c:forEach var="list" begin="1" end="${line}">
			<!-- 一行 -->
			<div class="line">
				<c:forEach items="${productList}" var="list" begin="${begin}" end="${end}">
					<!-- 一个香水 -->
					<div class="screen_commod_con_pie fl">
						<div class="screen_commod_con_pie_one">
							<a href="Details.html"> <!-- 图片 -->
								<div class="screen_commod_con_pie_img">
									<img src="${list.imgPath }" />
								</div>
								<div class="screen_commod_con_pie_name">${list.brandName }</div>
								<div class="screen_commod_con_pie_des">
									<a href="#"> ${list.productName } </a>
								</div>
								<div class="screen_commod_con_pie_pri">￥${list.productPrice }</div> <!-- 立即购买 -->
								<div class="screen_commod_con_pie_cov">
									<img src="assert/img/List/category_purchace_bag.png"> <a href="">立即购买</a>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>
				<c:set value="${begin+end+1}" var="begin"></c:set>
				<c:set value="${end+5}" var="end"></c:set>
				<div class="clear"></div>
			</div>
		</c:forEach>
	</c:if>

</body>
</html>