<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//	System.out.println(basePath);
	//	System.out.println(path);
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
				<div class="articletime">
					<s:property value="#session.article.time" />
				</div>
			</div>
		</div>

		<s:action name="comment" executeResult="true">
			<s:param name="articleID" value="#session.article.id"></s:param>
		</s:action>

		<div class="container">
			<div class="comment-user">
				<s:if test="#session.comment.isEmpty()">
					<jsp:body>
						<h1 align="center">虚位以待</h1>
					</jsp:body>
				</s:if>
				<s:iterator value="#session.comment" id="comment">
					<div class="comment">
						<s:property value="#comment.comment" escape="false" />
					</div>

					<div class="user">
						<s:property value="#comment.usertable.name" />
					</div>
					<div class="commenttime">
						<s:property value="#comment.time" />
					</div>
				</s:iterator>
			</div>
		</div>

		<!-- Editor Start -->
		<div class="container">
			<div
				style="margin-top: 64px; width: 960px; margin-left: auto; margin-right: auto;">

				<form action="commentform.action" method="post" id="form">
					<div id="editor">
					</div>
					<input type="hidden" name="comment.comment" id="txt" />
					<input type="hidden" name="comment.usertable.id"
						value=<s:property value="#session.user.id" /> />

				</form>
				<button id="button" class="commitbutton">
					提交
				</button>
			</div>
		</div>
		<script type="text/javascript">
var E = window.wangEditor
var editor = new E('#editor')

// 或者 var editor = new E( document.getElementById('#editor') )
editor.create();
//editor.txt.html()
$("button").addEventListener('click', function() {
	var html = editor.txt.html();
	//var text = editor.txt.text();
		$("txt").setAttribute("value", html);
		console.log(html);
		$("form").submit();
	})
</script>

		<!-- import foot -->
		<jsp:include page="foot.jsp"></jsp:include>

	</body>
</html>
