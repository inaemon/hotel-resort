<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JSTL -->
<link href="<c:url value="/resources/cssTest/basicDropDownMenu.css?b=323"/>"
		rel="stylesheet" type="text/css">
</head>
<body>
<!-- 공통적인 부분은 HEADER로 만든다 (this jsp) -->
	<!-- ME -->
	<nav>
		<div class="resortTitle">
			<ul class="resortTitleul">
				<li class="menu"><a href="../index" class="menua">HOME</a></li>
				<li class="menu"><a href="../themeTravel/house" class="menua">ThemeTravel</a>
					<ul class="subul">
						<li class="subli"><a href="../themeTravel/house" class="suba">Resort</a></li>
						<li class="subli"><a href="../themeTravel/skiBoard" class="suba">Ski & Board</a>
		<!-- 					<ul>
								<li>리프트</li>
								<li>스키스쿨</li>
							</ul> -->
						</li>
						<li class="subli"><a href="../themeTravel/spa" class="suba">SPA</a>	</li>
						<li class="subli"><a href="../themeTravel/waterpark" class="suba">WaterPark</a></li>
					</ul>
				</li>
				<li class="menu"><a href="../reservation/fast" class="menua">Reservation</a></li>
				<li class="menu"><a href="" class="menua">FoodCulture</a></li>
				<li class="menu"><a href="" class="menua">HOTEL</a></li>
				<li class="menu"><a href="../event/resortEvent" class="menua">Event</a></li>
				<li class="menu"><a href="listPage" class="menua">Q&A</a></li>
			</ul>
		</div>
	</nav>
	<!-- === ME END === -->
	
	
</body>
</html>