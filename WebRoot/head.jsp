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

		<title>head</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">


	</head>

	<body>
		<!--Header Start-->
		<div class="header">
			<div class="container">
				<div class="header-bottom">
					<div class="navbar">
						<ul>
							<li id="home">
								<a href="index.jsp">Home</a>
							</li>
							<li id="blog">
								<a href="articlelist.action">Blog</a>
							</li>
							<li id="about">
								<a href="about.jsp">About</a>
							</li>
							<li id="contact">
								<a href="contact.jsp">Contact</a>
							</li>
							<li id="login">
								<s:if test="#session.user==null">
									<a href="login.jsp">Login</a>
								</s:if>

							</li>
							<li class="active">
								<s:if test="#session.user!=null">
									<a href="accountcenter.jsp">Hello&nbsp;<s:property
											value="#session.user.name" /> </a>
								</s:if>
							</li>
							<li id="login">
								<s:if test="#session.user!=null">
									<a href="logout.action">Logout</a>
								</s:if>
							</li>
							<li>
								<s:if test="#session.user.id==1">
									<a href="newarticle.jsp">New Article</a>
								</s:if>
							</li>
						</ul>
					</div>

					<div class="social-media">
						<ul>
							<li>
								<a href="http://sighttp.qq.com/msgrd?v=1&uin=199609153"
									onmouseover="show_img('img-qq')"
									onmouseout="hide_img('img-qq')" target="_blank"> <em
									class="fa fa-qq"></em> </a>
							</li>
							<li>
								<a href="" onmouseover="show_img('img-weixin')"
									onmouseout="hide_img('img-weixin')" target=""> <em
									class="fa fa-weixin"></em> </a>
							</li>
							<li>
								<a href="https://weibo.com/yelin1014?refer_flag=1001030102_"
									onmouseover="show_img('img-weibo')"
									onmouseout="hide_img('img-weibo')" target="_blank"> <em
									class="fa fa-weibo"></em> </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<img class="social-img" id="img-weixin" src="img/img-weixin.png">
		<img class="social-img" id="img-qq" src="img/img-qq.png">
		<img class="social-img" id="img-weibo" src="img/img-weibo.png">
		<script type="text/javascript">
var v;
if (window.location.pathname == "/WhiteNight/index.jsp") {
	v = $("home");
	v.setAttribute("class", "active");
}
if (window.location.pathname == "/WhiteNight/articlelist.jsp"
		|| window.location.pathname == "/WhiteNight/article.jsp") {
	v = $("blog");
	v.setAttribute("class", "active");
}
if (window.location.pathname == "/WhiteNight/login.jsp") {
	v = $("login");
	v.setAttribute("class", "active");
}
if (window.location.pathname == "/WhiteNight/newarticle.jsp") {
	v = $("login");
	v.setAttribute("class", "active");
}
if (window.location.pathname == "/WhiteNight/article.jsp") {
	v = $("blog");
	v.setAttribute("class", "active");
}
</script>
	</body>
</html>
