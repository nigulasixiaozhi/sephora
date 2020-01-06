<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form id="selectForm" class="form-horizontal">
	<label for="" class="col-sm-1 control-label">商品种类</label>
	<div class="col-sm-2">
		<select name="categoryId" class="form-control">
			<option value="">选择种类</option>
			<c:if test="${!empty category }">
				<c:forEach items="${category }" var="list">
					<option value="${list.categoryId }">${list.listName }</option>
				</c:forEach>
			</c:if>
		</select>
	</div>
	<label for="" class="col-sm-1 control-label">上下架状态</label>
	<div class="col-sm-2">
		<select id="" name="goOutFlag" class="form-control">
			<option value="">选择状态</option>
			<option value="1">上架</option>
			<option value="0">下架</option>
		</select>
	</div>
	<label for="productName" class="col-sm-1 control-label">产品名称</label>
	<div class="col-sm-2">
		<input type="text" name="productName" class="form-control" placeholder="产品名称">
	</div>
	<label for="BrandName" class="col-sm-1 control-label">品牌名</label>
	<div class="col-sm-2">
		<input type="text" name="BrandName" class="form-control" placeholder="品牌名">
	</div>
	<div class="col-sm-2 col-sm-offset-3">
		<button type="button" id="selectProduct" class="btn btn-default">查询</button>
		<button type="button" id="addProduct" class="btn btn-default">添加</button>
	</div>
</form>

<table id="productList" class="table table-striped table-hover">
	<thead>
		<tr>
			<th>编号</th>
			<th>产品名称</th>
			<th>缩略图</th>
			<th>商品种类</th>
			<th>品牌</th>
			<th>价格</th>
			<th>库存</th>
			<th>商品信息</th>
			<th>上下架状态</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty product }">
			<c:forEach items="${product }" var="product" varStatus="status">
				<tr data-id="${product.rowId }">
					<td>${status.index+1}</td>
					<td>${product.productName}</td>
					<td><img class="img-rounded center-block" src="${product.imgPath}" /></td>
					<td>${product.listName}</td>
					<td>${product.brandName}</td>
					<td>${product.productPrice}</td>
					<td>${product.inventory}</td>
					<td class="td_ProductInfo">${product.productInfo}</td>
					<td>${product.goOutFlag==1?'上架':'下架'}</td>
					<td><a class="btn btn-default" role="button" href="admin/goUpdateProduct">修改</a> <a class="btn btn-default" role="button" href="admin/doDelProduct">删除</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
<!-- modal -->
<div id="modal_product" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">商品管理</h4>
			</div>
			<div class="modal-body">
				<form id="form_product_add_edit" class="form-horizontal">
					<div class="form-group">
						<label for="productName" class="col-sm-2 control-label">商品名称</label>
						<div class="col-sm-5">
							<input type="text" id="productName" name="productName" class="form-control" value="" placeholder="商品名称">
						</div>
					</div>
					<div class="form-group">
						<label for="categoryId" class="col-sm-2 control-label">商品种类</label>
						<div class="col-sm-5">
							<select id="category1" name="" class="form-control"></select> <select id="category2" name="" class="form-control"></select> <select id="category3" name="categoryId" class="form-control"></select>
						</div>
					</div>
					<div class="form-group">
						<label for="brandName" class="col-sm-2 control-label">商品品牌</label>
						<div class="col-sm-5">
							<input type="text" id="brandName" name="brandName" class="form-control" value="" placeholder="商品品牌">
						</div>
					</div>
					<div class="form-group">
						<label for="imgFile" class="col-sm-2 control-label">商品图片</label>
						<div class="col-sm-5">
							<input type="file" name="imgFile" /> <img style="max-width: 100%;" id="imgPath" alt="" src="" />
						</div>
					</div>
					<div class="form-group">
						<label for="productPrice" class="col-sm-2 control-label">商品价格</label>
						<div class="col-sm-5">
							<input type="text" id="productPrice" name="productPrice" class="form-control" value="" placeholder="商品价格">
						</div>
					</div>
					<div class="form-group">
						<label for="inventory" class="col-sm-2 control-label">库存</label>
						<div class="col-sm-5">
							<input type="text" id="inventory" name="inventory" class="form-control" value="" placeholder="库存">
						</div>
					</div>
					<div class="form-group">
						<label for="productInfo" class="col-sm-2 control-label">商品信息</label>
						<div class="col-sm-5">
							<textarea id="productInfo" class="form-control"  name="productInfo"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="goOutFlag" class="col-sm-2 control-label">商品上下架状态</label>
						<div class="col-sm-5">
							<select id="goOutFlag" name="goOutFlag" class="form-control">
								<option value="1">上架</option>
								<option value="0">下架</option>
							</select>
						</div>
						<input type="hidden" name="rowId" id="rowId" value="" />
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<button type="button" id="button_submit" class="btn btn-primary">确定</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<script type="text/javascript">
	$(".td_ProductInfo").css({
		"max-width":"20vw",
		"overflow":"hidden",
		"white-space":"nowrap",
		"text-overflow":"ellipsis"
	})

	$("#selectProduct").click(function() {
		$.ajax({
			type : "post",
			url : "admin/selectProduct",
			dataType : "html",
			data : $("#selectForm").serialize(),
			success : function(res) {
				$("#content").html(res);
			}
		})
	})

	$("#addProduct").click(function() {
		$.ajax({
			type : "get",
			url : "admin/goAddUser",
			success : function(res) {
				if (res) {
					$("#rowId").val("");
					$("#modal_product").modal("show");
				}
			}
		})
	})

	$("#productList").on("click", "a", function() {
		var rowId = $(this).parents("tr").attr("data-id");
		var url = $(this).attr("href");
		var title = $(this).text();
		if (confirm("是否要执行" + title + "操作")) {
			$.ajax({
				type : "post",
				url : url,
				data : {
					"rowId" : rowId
				},
				success : function(res) {
					if (res.rowId) {
						$("#modal_product").modal("show");
						$("#rowId").val(res.rowId);
						$("#productName").val(res.productName);
						$("#categoryId").val(res.categoryId);
						$("#brandName").val(res.brandName);
						$("#imgPath").attr("src",res.imgPath);
						$("#productPrice").val(res.productPrice);
						$("#inventory").val(res.inventory);
						$("#goOutFlag").val(res.goOutFlag);
						$("#productInfo").text(res.productInfo);
					} else {
						initData();
					}
				}
			})
		}
		return false;
	})

	
	
	$("#button_submit").click(function() {
		var rowId = $("#rowId").val();
		var url = "admin/doSaveProduct";
		if (rowId) {//更新产品
			url = "admin/doUpdateProduct";
		}
		//将表单封装成异步上传二进制文件。
		//new FormData的参数是一个DOM对象，而非jQuery对象
		//var formObj = document.getElementById('form_test');
		var formObj = $('#form_product_add_edit')[0];
		var formData = new FormData(formObj);
		$.ajax({
			type : 'post',
			url : url,
			data : formData,//异步上传的二进制文件
			cache : false, //不缓存
			processData : false, // 告诉jQuery不要去处理发送的数据
			contentType : false,// 告诉jQuery不要去设置Content-Type请求头
			success : function(result) {
				if (result) {
					$("#modal_product").modal("hide");
					window.setTimeout(function(){
						initData();
					},500)					
					
				}
			}
		});
	})
	
	
	//点击一级分类
	$("#category1").change(function(){
		var parId = $(this).val();
		if(parId!=-1){
			initCategoryData(parId,2);
		}
		
	})
	
	//点击二级分类
	$("#category2").change(function(){
		var parId = $(this).val();
		if(parId!=-1){
			initCategoryData(parId,3);
		}
		
	})
	
	
	initCategoryData();
	//查询分类
	function initCategoryData(parId=-1,id=1){
		var options="";
		//if(parId==-1){
			options='<option value="">选择种类</option>';
		//}
		$.ajax({
			type:"post",
			url:"goFindCategory",
			data:{parId},
			success:function(categoryList){
				if(categoryList){
					$.each(categoryList,function(index,category){
						var option = "<option value='"+category.rowId+"'>"+category.listName+"</option>";
						options+=option;
					})
					$("#category"+id).html(options);
				}
			}
		})
	}
	
	function initData() {
		$.ajax({
			type : "get",
			url : "admin/goProductList",
			dataType : "html",
			success : function(res) {
				$("#content").html(res);
			}
		})
	}
</script>