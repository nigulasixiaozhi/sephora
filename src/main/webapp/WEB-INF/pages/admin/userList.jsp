<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="selectForm" class="form-horizontal">
	<label for="userKind" class="col-sm-1 control-label">用户身份</label>
	<div class="col-sm-1">
		<select id="userKind" name="userKind" class="form-control">
			<option value="">选择身份</option>
			<option value="1">商家</option>
			<option value="2">买家</option>
		</select>
	</div>
	<label for="lockFlag" class="col-sm-1 control-label">是否锁定</label>
	<div class="col-sm-1">
		<select id="lockFlag" name="lockFlag" class="form-control">
			<option value="">选择</option>
			<option value="1">锁定</option>
			<option value="0">未锁定</option>
		</select>
	</div>
	<label for="userName" class="col-sm-1 control-label">用户姓名</label>
	<div class="col-sm-1">
		<input type="text" name="userName" class="form-control" id="userName"
			placeholder="用户姓名">
	</div>
	<label for="userCode" class="col-sm-1 control-label">用户账号</label>
	<div class="col-sm-1">
		<input type="text" name="userCode" class="form-control" id="userCode"
			placeholder="用户账号">
	</div>
	<label for="userPhone" class="col-sm-1 control-label">用户电话</label>
	<div class="col-sm-1">
		<input type="text" name="userPhone" class="form-control" id="userPhone"
			placeholder="用户电话">
	</div>
	<div class="col-sm-2">
		<button type="button" id="selectUser" class="btn btn-default">查询</button>
		<button type="button" id="addUser" class="btn btn-default">添加</button>
	</div>
</form>

<table id="userList" class="table table-striped table-hover">
	<thead>
		<tr>
			<th>编号</th>
			<th>名称</th>
			<th>身份</th>
			<th>账号</th>
			<th>电话</th>
			<th>是否锁定</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty userList }">
			<c:forEach items="${userList }" var="user" varStatus="status">
				<tr data-id="${user.rowId }">
					<td>${status.index+1}</td>
					<td>${user.userName }</td>
					<td>${user.userKind==2?'买家':'商家' }</td>
					<td>${user.userCode }</td>
					<td>${user.userPhone }</td>
					<td>${user.lockFlag==0?'未锁定':'锁定' }</td>
					<td><a class="${user.userKind==2?'disabled':'' } btn btn-default"role="button" href="admin/goUpdateUser">修改</a>
					<a class="${user.userKind==2?'disabled':'' } btn btn-default"role="button" href="admin/delUser">删除</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
<script type="text/javascript">
	$("#selectUser").click(function(){
		$.ajax({
			type:"post",
			url:"admin/selectUser",
			dataType:"html",
			data:$("#selectForm").serialize(),
			success:function(res){
				$("#content").html(res);
			}
		})
	})
	
	$("#addUser").click(function(){
		$.ajax({
			type:"get",
			url:"admin/goAddUser",
			success:function(res){
				if(res){
					$("#content").html(res);
				}
			}
		})
	})
	
	$("#userList").on("click","a",function(){
		var rowId = $(this).parents("tr").attr("data-id");
		var url= $(this).attr("href");
		var title=$(this).text();
		if(confirm("是否要执行"+title+"操作")){
			$.ajax({
				type:"post",
				url:url,
				dataType:"html",
				data:{
					"rowId":rowId
				},
				success:function(res){
					if(res.length>1){
						$("#content").html(res);
					}else if(res.length==1){
						window.location.href="admin/index";
					}
				}
			})
		}
		return false;
	})
</script>