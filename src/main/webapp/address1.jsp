<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<c:if test="${!empty addressList}">
			<c:forEach items="${addressList}" var="list">
				<c:if test="${userLogin.rowId==list.userId}">
					<li class="clearfix">
						<div class="userMessage fl ">
							<div class="name-nowTips clearfix">
								<div class="userName fl">${list.userName }</div>
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
						</div>
					</li>
				</c:if>
			</c:forEach>
		</c:if>
	</ul>
</body>
</html>