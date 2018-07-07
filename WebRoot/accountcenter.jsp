<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>Account Center</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">


	</head>

	<body>
		<!-- import head -->
		<jsp:include page="head.jsp"></jsp:include>
		<div class="container">
			登录名:
			<s:property value="#session.user.username" />
			<br>
			昵称:
			<s:property value="#session.user.name" />
			<br>
			性别:
			<s:if test="#session.user.sex==1">
		男
		</s:if>
			<s:if test="#session.user.sex==0">
		女
		</s:if>
			<s:if test="#session.user.sex==null">
		无数据
		</s:if>
			<br>
			年龄:
			<s:if test="#session.user.age==null">无数据</s:if>
			<s:property value="#session.user.age" />
		</div>
	</body>
</html>
