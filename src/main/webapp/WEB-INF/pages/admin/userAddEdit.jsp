<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form class="form-horizontal">
	<div class="form-group">
		<label for="" class="col-sm-2 control-label">用户名称</label>
		<div class="col-sm-5">
			<input type="text" name="userName" class="form-control" value="${!empty userInfo?userInfo.userName:''}" placeholder="用户名称">
		</div>
	</div>
	<div class="form-group">
		<label for="" class="col-sm-2 control-label">用户账号</label>
		<div class="col-sm-5">
			<input type="text" name="userCode" class="form-control" value="${!empty userInfo?userInfo.userCode:''}" placeholder="用户账号">
		</div>
	</div>
	<div class="form-group">
		<label for="" class="col-sm-2 control-label">用户密码</label>
		<div class="col-sm-5">
			<input type="password" name="userPass" class="form-control" value="${!empty userInfo?userInfo.userPass:''}" placeholder="用户密码">
		</div>
	</div>
	<div class="form-group">
		<label for="inputSex" class="col-sm-2 control-label">是否锁定</label>
		<div class="col-sm-5">
			<select id="" name="lockFlag" class="form-control">
				<option value="0">未锁定</option>
				<option value="1">锁定</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="hidden" name="rowId" id="rowId" value="${!empty userInfo?userInfo.rowId:''}" />
			<button type="button" id="submit" class="btn btn-default">提交</button>
		</div>
	</div>
</form>
<script type="text/javascript">
	$("#submit").click(function(){
		var url;
		if($("#rowId").val()){
			url="admin/UpdateUser";
		}else{
			url ="admin/addUser";
		}
		$.ajax({
			type:"post",
			url:url,
			data:$("form").serialize(),
			success:function(res){
				if(res){
					alert("提交成功！");
					window.location.href="admin/index";
				}
			}
		})
	})
	
</script>