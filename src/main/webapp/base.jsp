<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	StringBuffer basePath = new StringBuffer();
	basePath.append(request.getScheme()).append("://").append(request.getServerName()).append(":").append(request.getServerPort()).append(request.getContextPath()).append("/");
%>
<base href="<%=basePath%>">