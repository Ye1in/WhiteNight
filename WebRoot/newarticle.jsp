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

		<title>New Article</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
		<script type="text/javascript" src="./js/js.js">
</script>
		<script type="text/javascript" src="./js/tool.js">
</script>
		<script type="text/javascript"
			src="./wangEditor/release/wangEditor.min.js">
</script>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">


	</head>

	<body>
		<!-- import head -->
		<jsp:include page="head.jsp"></jsp:include>

		<!-- Editor Start -->
		<div class="container">
			<div style="margin-top: 64px;">

				<form action="newarticle.action" method="post" id="form">
					<div style="margin-bottom: 10px;">
						<input style="width: 250px" type="text" name="article.title"
							naplaceholder="标题" id="title" autocomplete="off">
					</div>
					<div id="editor">
					</div>
					<input type="hidden" name="article.content" id="txt" />

				</form>
				<button id="button">
					提交
				</button>
			</div>
		</div>
		<script type="text/javascript">
var E = window.wangEditor
var editor = new E('#editor')
// 或者 var editor = new E( document.getElementById('#editor') )
editor.create();
$("button").addEventListener('click', function() {
	var html = editor.txt.html();
	//var text = editor.txt.text();
		$("txt").setAttribute("value", html);
		$("form").submit();
	})
</script>
	</body>
</html>
