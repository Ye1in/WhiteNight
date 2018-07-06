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

		<title>Blog</title>
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
			<div class="container">
				<dir class="article">
					<s:iterator value="#session.article" id="article">
						<li>
							<a
								href="article.action?article.id=<s:property value="#article.id"/>"
								target=_self> <s:property value="#article.title" /> </a>
							<p>
								<s:property value="#article.time" />
							</p>
						</li>
					</s:iterator>

					<s:set name="pager" value="#session.pager" />
					<s:if test="#pager.hasFirst">
						<a href="article.action?currentPage=1">首页</a>
					</s:if>
					<s:if test="#pager.hasPrevious">
						<a
							href="article.action?currentPage=
								<s:property  value="#pager.currentPage-1"/>">上一页</a>
					</s:if>
					<s:if test="#pager.hasNext">
						<a
							href="article.action?currentPage=
							<s:property  value="#pager.currentPage+1"/>">下一页</a>
					</s:if>
					<s:if test="#pager.hasLast">
						<a
							href="article.action?currentPage=
							<s:property  value="#pager.totalPage"/>">尾页</a>
					</s:if>
					<br>
					当前第
					<s:property value="#pager.currentPage" />
					页, 共
					<s:property value="#pager.totalPage" />
					页
				</dir>
			</div>
		</div>
	</body>
</html>
