<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax 上传文件</title>
</head>
<body>
	<form id="form_test">
		用户名称：<input type="text" name="userName" /> <br/>
		用户头像：<input type="file" name="userFile" /> <br/>
		<input type="button" id="button_submit" value="提交"/>
	</form>
	<img alt="" src="" >
</body>
<!-- 引入 jQuery的开发包  -->
<script type="text/javascript" src="assert/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#button_submit').on('click',function(){
			//将表单封装成异步上传二进制文件。
			//new FormData的参数是一个DOM对象，而非jQuery对象
			//var formObj = document.getElementById('form_test');
			var formObj = $('#form_test')[0];
			var formData = new FormData(formObj);
			$.ajax({
				type:'post',
				url:'admin/upload',
				data:formData,//异步上传的二进制文件
				cache: false, //不缓存
				processData : false, // 告诉jQuery不要去处理发送的数据
				contentType : false,// 告诉jQuery不要去设置Content-Type请求头
				success:function(result){
					$("img").attr("src",result);
				}
			});
		});
	});
</script>
</html>