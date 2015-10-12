<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시간은돈이다</title>
<!-- <style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	height: 100%;
	overflow: hidden;
}

.page {
	min-height: 100%;
	position: relative;
}

.header {
	padding: 10px;
	width: 100%;
	text-align: center;
}

.content {
	background-color: yellow;
	padding: 10px;
	padding-bottom: 20px; /* Height of the footer element */
	overflow: hidden;
}

.menu {
	background-color: red;
	padding: 50px 10px 0px 10px;
	width: 200px;
	float: left;
}

.body {
	background-color: green;
	margin: 50px 10px 0px 250px;
}

.footer {
	background-color: blue;
	clear: both;
	position: absolute;
	bottom: 0;
	left: 0;
	text-align: center;
	width: 100%;
	height: 20px;
}
</style> -->
<link type="text/css" rel="stylesheet" media="all"	href="resources/styles/styles.css" />
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<!-- <script src="resources/js/lavalamp.js" type="text/javascript"></script> -->
<link rel="stylesheet" type="text/css" href="resources/js/jquery.datetimepicker.css" />
<script src="resources/js/jquery.datetimepicker.js"></script>

</head>
<body>
	<div class="page">
		<tiles:insertAttribute name="header" />
		<div class="content">
			<tiles:insertAttribute name="menu" />
			<tiles:insertAttribute name="body" />
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>