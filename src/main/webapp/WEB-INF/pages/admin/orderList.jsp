<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${!empty orderList }">
	<tr>
		<td colspan="10">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>商品图片</th>
						<th>商品名称</th>
						<th>购买数量</th>
						<th>商品单价</th>
						<th>商品总价</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderList }" var="orderList">
						<tr class="child${orderList.orderId}">
							<td><img src="${orderList.imgPath}" /></td>
							<td>${orderList.productName}</td>
							<td>${orderList.buyCount}</td>
							<td>${orderList.productPrice }</td>
							<td>${orderList.sumPrice }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</td>
	</tr>
</c:if>