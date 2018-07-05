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
		<form class="inputform" action="login.action" method="post"
			name="login">
			<fieldset>
				<h2 class="logtitle">
					Login your account
				</h2>
				<input type="text" name="user.username" size=20 id="username"
					placeholder="Name">
				<input type="password" name="user.password" size=20 id="username"
					placeholder="Password">
				<input type="submit" name="login" class="loginbutton" value="Login">
				<a href="regist.jsp"><input type="button" class="registbutton"
						value="Regist"> </a>
			</fieldset>
		</form>
	</body>
</html>
