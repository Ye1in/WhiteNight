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

		<title>Contact</title>
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
		<!-- Leave Message Start -->
		<div class="container">
			<div class="message-box">
				<s:iterator value="#session.message" id="message">
					<div class="message">
						<s:property value="#message.message" escape="false" />
					</div>
					<div class="user">
						<s:property value="#message.usertable.name" />
					</div>
					<div class="messagetime">
						<s:property value="#message.time" />
					</div>
				</s:iterator>
			</div>
		</div>

		<!-- Editor Start -->
		<div class="container">
			<div
				style="margin-top: 64px; width: 960px; margin-left: auto; margin-right: auto;">

				<form action="newmessage.action" method="post" id="form">
					<div id="editor">
					</div>
					<input type="hidden" name="message.message" id="txt" />
					<input type="hidden" name="message.usertable.id"
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
