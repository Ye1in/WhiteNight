<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

		<title>Login</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">


	</head>

	<body>
		<!-- import head -->
		<jsp:include page="head.jsp"></jsp:include>

		<div>
			<div align="center">
				<form action="login.action" method="post" name="login">
					用户登录
					<br>
					用户名:
					<input type="text" name="user.username" size=20 id="username">
					<br>
					密&nbsp;&nbsp;&nbsp;&nbsp;码:
					<input type="password" name="user.password" size=21 id="username">
					<br>
					<input type="submit" value="登录">
				</form>
			</div>
		</div>
	</body>
</html>
