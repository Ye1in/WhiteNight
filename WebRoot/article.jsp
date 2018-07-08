<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println(basePath);
	System.out.println(path);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title></title>
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
		<div class="container">
			<div class="textarea">
				<s:property value="#session.article.content" escape="false" />
				<s:property value="#session.article.time" />
			</div>
		</div>

		<s:action name="comment" executeResult="true">
			<s:param name="articleID" value="#session.article.id"></s:param>
		</s:action>

		<div class="container">
			<s:iterator value="#session.comment" id="comment">
				<s:property value="#comment.comment" />---<s:property
					value="#comment.name" />
			</s:iterator>
		</div>


		<!-- Editor Start -->
		<div class="container">
			<div style="margin-top: 64px;">

				<form action="newarticle.action" method="post" id="form">
					<div id="editor">
						<s:property value="#session.newarticle" escape="false" />
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
