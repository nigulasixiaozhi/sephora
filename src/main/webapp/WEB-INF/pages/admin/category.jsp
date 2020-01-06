<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<a id="addLevel1" class="btn btn-default" href="javascript:;">增加父目录</a>
<table id="example-basic-expandable" class="table table-hover">
	<tr>
		<th>目录名称</th>
		<th>目录简介</th>
		<th>操作</th>
	</tr>
	<c:if test="${!empty category }">
		<c:forEach items="${category }" var="list">
			<tr data-id="${list.rowId }" data-tt-id="${list.rowId }" data-tt-parent-id="${list.parId==-1?'':list.parId }">
				<td>${list.listName }</td>
				<td>${list.listInfo}</td>
				<td>
					<a href="admin/doDelCategory">删除</a>
					<a id="updateA" href="admin/goCategoryUpdate">修改</a>
				  	<a id="addA" href="admin/goGetCategory">增加子目录</a>
				</td>
			</tr>
		</c:forEach>
	</c:if>
	<!-- 	<tr data-tt-id="0">
		<td>服装</td>
		<td>这是服装大类</td>
		<td><a href="">删除</a> <a href="">修改</a> <a href="">增加子目录</a></td>
	</tr>
	<tr data-tt-id="1" data-tt-parent-id="0">
		<td>女装</td>
		<td>这是女装大类</td>
		<td>
			<a href="admin/doDelProductList">删除</a>
			 <a href="admin/goProductListAddEdit">修改</a> 
			 <a href="admin/goProductListAddEdit">增加子目录</a>
		 </td>
	</tr> -->
</table>
<!-- modal -->
<div id="modal_category" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">目录管理</h4>
			</div>
			<div class="modal-body">
				<form id="category_add_edit" class="form-horizontal">
					<div class="form-group">
						<label for="" class="col-sm-2 control-label">目录名称</label>
						<div class="col-sm-5">
							<input id="listName" type="text" name="listName" class="form-control" placeholder="目录名称">
						</div>
					</div>
					<div class="form-group">
						<label for="" class="col-sm-2 control-label">父级目录</label>
						<div class="col-sm-5">
							<select id="parId" name="parId" class="form-control"></select>
						</div>
					</div>
					<div class="form-group">
						<label for="" class="col-sm-2 control-label">目录简介</label>
						<div class="col-sm-5">
							<textarea id="listInfo" class="form-control" name="listInfo" rows="3"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="hidden" name="rowId" id="rowId" value="" />
						</div>
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

<script type="text/javascript" src="assert/lib/jquery-treetable/js/jquery.treetable.js"></script>
<script>
	$("#example-basic-expandable").treetable({
		expandable : true,
		clickableNodeNames : true
	});
	
	$("#addLevel1").click(function(){
		$("#parId").html($("<option value='-1'>一级目录</option>"));
		$("#modal_category").modal("show");
	})
	
	$("#example-basic-expandable").on("click", "td>a", function() {
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
					if(res){
						if(title==$("#addA").text()){
							//新增子目录
							$("#modal_category").modal("show");
							$("#parId").html($("<option value="+res.rowId+">"+res.listName+"</option>"));
						}else if(title==$("#updateA").text()){
							//修改当前目录
							$("#modal_category").modal("show");
							$("#listName").val(res.listName);
							$("#listInfo").val(res.listInfo);
							$("#rowId").val(res.rowId);
							$("#parId").html($("<option value="+res.parId+">"+res.listName+"</option>"));
						}else{
							initData();
						}
					}
				}
			})
		}
		return false;
	})
	
	$("#button_submit").click(function() {
		var url;
		if ($("#rowId").val()) {
			url = "admin/doUpdateCategory";
		} else {
			url = "admin/doAddCategory";
		}
		$.ajax({
			type : "post",
			url : url,
			data : $("#category_add_edit").serialize(),
			success : function(res) {
				if (res) {
					$("#modal_category").modal("hide");
					setTimeout(()=>{
						initData();
					},500)
				}
			}
		})
	})
	
	function initData() {
		$.ajax({
			type : "get",
			url : "admin/goCategory",
			dataType : "html",
			success : function(res) {
				$("#content").html(res);
			}
		})
	}
</script>
