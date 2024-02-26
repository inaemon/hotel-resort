<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JSTL -->
<link href="<c:url value="/resources/css/themeLeft.css?q3=123"/>"
		rel="stylesheet" type="text/css">
</head>
<body>
	<div id="themeList">
		<p>ThemeTravel</p>
		<ul id="onclickul">
			<li><a href="../themeTravel/theme">ThemePark</a></li>
			<li><a href="../themeTravel/waterpark">WaterPark</a></li>
			<li><a href="../themeTravel/skiBoard">Ski & Board</a></li>
			<li><a href="../themeTravel/spa">Spa & Therapy</a></li>
			<li><a href="../themeTravel/">Yacht</a></li>
			<li><a href="../themeTravel/">Business</a></li>
			<li><a href="../themeTravel/">Travel</a></li>

			<li><a href="" style="cursor: not-allowed">WaterPia</a></li>
			<li><a href="" style="cursor: not-allowed">WaterPia</a></li>
		</ul>
	</div>
</body>
</html>