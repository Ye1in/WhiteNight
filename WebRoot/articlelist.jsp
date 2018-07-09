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
		<script type="text/javascript" src="./js/js.js">
</script>
		<script type="text/javascript" src="./js/tool.js">
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
			<div class="content">
				<div class="article">
					<s:set name="pager" value="#session.pager" />
					<s:if test="#pager.hasPrevious">
						<div class="previous">
							<a class="round"
								href="articlelist.action?currentPage=<s:property value="#pager.currentPage-1" />">
								Previous </a>
						</div>
					</s:if>

					<div class="boxcontainer">
						<s:if test="#session.articlelist[0].title!=''">
							<div class="box left pos1">
								<a class="bot"
									href="article.action?article.id=<s:property value="#session.articlelist[0].id"/>&article.time=<s:property value="#session.articlelist[0].time"/>"
									target=_self> <s:property
										value="#session.articlelist[0].title" /> </a>
							</div>
						</s:if>
						<s:if test="#session.articlelist[2].title!=''">
							<div class="box left pos1">
								<a class="bot"
									href="article.action?article.id=<s:property value="#session.articlelist[2].id"/>&article.time=<s:property value="#session.articlelist[2].time"/>"
									target=_self> <s:property
										value="#session.articlelist[2].title" /> </a>
							</div>
						</s:if>
						<s:if test="#session.articlelist[4].title!=''">

							<div class="box left pos1">
								<a class="bot"
									href="article.action?article.id=<s:property value="#session.articlelist[4].id"/>&article.time=<s:property value="#session.articlelist[4].time"/>"
									target=_self> <s:property
										value="#session.articlelist[4].title" /> </a>
							</div>
						</s:if>
					</div>

					<div class="boxcontainer">
						<s:if test="#session.articlelist[1].title!=''">
							<div class="box right pos2">
								<div class="type"></div>
								<a class="bot"
									href="article.action?article.id=<s:property value="#session.articlelist[1].id"/>&article.time=<s:property value="#session.articlelist[1].time"/>"
									target=_self> <s:property
										value="#session.articlelist[1].title" /> </a>
							</div>
						</s:if>
						<s:if test="#session.articlelist[3].title!=''">
							<div class="box right pos2">
								<div class="type"></div>
								<a class="bot"
									href="article.action?article.id=<s:property value="#session.articlelist[3].id"/>&article.time=<s:property value="#session.articlelist[3].time"/>"
									target=_self> <s:property
										value="#session.articlelist[3].title" /> </a>
							</div>
						</s:if>
						<s:if test="#session.articlelist[5].title!=''">
							<div class="box right pos2">
								<div class="type"></div>
								<a class="bot"
									href="article.action?article.id=<s:property value="#session.articlelist[5].id"/>&article.time=<s:property value="#session.articlelist[5].time"/>"
									target=_self> <s:property
										value="#session.articlelist[5].title" /> </a>
							</div>
						</s:if>
					</div>
					<div class="clear"></div>


					<s:if test="#pager.hasNext">
						<div class="next">
							<a class="round"
								href="articlelist.action?currentPage=<s:property  value="#pager.currentPage+1"/>">Next</a>
						</div>
					</s:if>

				</div>
			</div>
		</div>
	</body>
</html>
