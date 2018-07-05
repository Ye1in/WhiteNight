<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//System.out.println(basePath);
	//System.out.println(path);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>White Night</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
		<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
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
		<!--Silder Start-->
		<div class="banner">
			<div class="container">
				<div class="slider" id="slide">
					<ul>
						<li>
							<a href=""><img src="img/1.jpg"
									alt="Dream Of Dreams</br>DeLUsions from a dream.</br>
					FamiLar pLaces appear in dreams.">
							</a>
						</li>
						<li>
							<a href=""><img src="img/2.jpg"
									alt="Saika</br>I'm wearing a Japanese kimono</br>The knife I'm hoLding is fake.PLease don't be nerVOUS.">
							</a>
						</li>
						<li>
							<a href=""><img src="img/3.jpg"
									alt="Knight Of Firmament</br> I WiLL use this sword to fix everything.</br>WithOUt yOU,there wouLD wouLD be no need for wishes or prayers">
							</a>
						</li>
						<li>
							<a href=""><img src="img/4.jpg"
									alt="The sanctury</br> Perhaps trees are the final refuge.</br>Or it is onLy the pLace I escape to.">
							</a>
						</li>
					</ul>
				</div>
				<script type="text/javascript">

	//var s = new Slider("slide");

//console.info(s);
</script>



			</div>
		</div>
		<!--Frame Start-->
		<div class="frame">
			<div class="container">
				<h3>
					<span>"</span> As heaven maintains vigor through movements,a gentle
					man should constantly strive for self-perfection.
					</br>
					As earth's condition is receptive devotion, a gentle man should
					hold the outer world with broad mind.
					<span>"</span>
				</h3>
			</div>
		</div>
	</body>
</html>
