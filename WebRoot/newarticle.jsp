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

		<title>New Article</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">


	</head>

	<body>
		<!-- import head -->
		<jsp:include page="head.jsp"></jsp:include>
		<div class="frame">
			<div class="container"></div>
		</div>
		<script type="text/javascript"
			src="../wangEditor-3.1.1/release/wangEditor.min.js">
</script>
		<script type="text/javascript">
window.onload = function() {

	var E = window.wangEditor;
	console.log(E);
	var editor = new E('#editor');
	// 或者 var editor = new E( document.getElementById('editor') )
	editor.create();
}
</script>
	</body>
</html>
