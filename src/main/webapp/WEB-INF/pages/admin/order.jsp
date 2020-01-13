<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-striped">
	<thead>
		<tr>
			<th scope="col">订单编号</th>
			<th scope="col">用户名称</th>
			<th scope="col">订单总价</th>
			<th scope="col">收货地址</th>
			<th scope="col">订单状态</th>
			<th scope="col">支付方式</th>
			<th scope="col">操作</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty order}">
			<c:forEach items="${order }" var="order" varStatus="status">
				<tr>
					<td><a data-id="${order.rowId }"><i class="glyphicon glyphicon-menu-right"></i></a>${order.rowId }</td>
					<td>${order.userName }</td>
					<td>￥${order.sumPrice }</td>
					<td><c:if test="${!empty address}">
							<c:forEach items="${address }" var="address">
								<c:if test="${order.addressId==address.rowId}">
									${address.addressPcd}${address.detailedAddress }
								</c:if>
							</c:forEach>
						</c:if></td>
					<td><c:choose>
							<c:when test="${order.orderStatus==1}">待发货</c:when>
							<c:when test="${order.orderStatus==2}">已发货</c:when>
							<c:when test="${order.orderStatus==3}">已签收</c:when>
							<c:when test="${order.orderStatus==4}">未付款</c:when>
							<c:when test="${order.orderStatus==0}">已取消</c:when>
						</c:choose></td>
					<td><c:choose>
							<c:when test="${order.pay==1}">微信</c:when>
							<c:when test="${order.pay==2}">支付宝</c:when>
							<c:when test="${order.pay==3}">银行卡</c:when>
							<c:when test="${order.pay==0}">未支付</c:when>
						</c:choose></td>
					<td><a class="btn btn-default ${order.pay==0?'disabled':''} " href="admin">发货</a></td>
				</tr>
			</c:forEach>
		</c:if>
		<!-- <tr id="tr2">
							<td><a href="javascript:findChild(2);"><i class="glyphicon glyphicon-menu-right"></i></a> 191231001</td>
							<td>张三</td>
							<td>￥1200.00</td>
							<td>待发货</td>
							<td>山东省青岛市城阳区中享思途</td>
							<td><a class="btn btn-default" href="">发货</a></td>
						</tr> -->
	</tbody>
</table>
</body>
<script type="text/javascript">
	$("tr").on("click","a",function() {
				var rowId = $(this).attr("data-id");
				var $tr = $(this).parents("tr");
				var $i = $(this).find(".glyphicon");
				//判断 如果是 右向图标，则执行 下拉数据的查询
				if ($i.hasClass('glyphicon-menu-right')) {
					$i.removeClass('glyphicon-menu-right').addClass(
							'glyphicon-menu-down');
					$.ajax({
						//url:'test/child/'+id,
						url : 'admin/goOrderList',
						data : {
							orderId : rowId
						},
						success : function(htmlData) {
							//console.log(htmlData);
							$tr.after(htmlData);
						}
					});
				} else {
					//否则清空下拉列表数据
					$i.removeClass('glyphicon-menu-down').addClass(
							'glyphicon-menu-right');
					$('.child' + rowId).parents("tr").remove();
				}
				return false;
			})
	/* function findChild(id) {
		//根据id取得tr的jQuery对象
		var $tr = $('#tr' + id);
		//通过 tr找到有 fa这个样式的 i 
		var $i = $tr.find('.glyphicon');
		//判断 如果是 右向图标，则执行 下拉数据的查询
		if ($i.hasClass('glyphicon-menu-right')) {
			$i.removeClass('glyphicon-menu-right').addClass(
					'glyphicon-menu-down');
			$.ajax({
				//url:'test/child/'+id,
				url : 'admin/goOrderList',
				success : function(htmlData) {
					console.log(htmlData);
					$tr.after(htmlData);
				}
			});
		} else {
			//否则清空下拉列表数据
			$i.removeClass('glyphicon-menu-down').addClass(
					'glyphicon-menu-right');
			$('#child' + id).remove();
		}

	} */
</script>
