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
<link href="<c:url value="/resources/css/header.css?q1=123"/>"
		rel="stylesheet" type="text/css">
</head>
<body>
<!-- 공통적인 부분은 HEADER로 만든다 (this jsp) -->
	<!-- ME  해상도: 850 ~ -->
	<nav>
		<div class="resortTitle center">
			<ul class="resortTitleul">
				<!-- 오는 경로가 다 달라서 상대경로(../)로 하면 안 됨  //절대경로 /(root)부터 시작 -->
				<li class="logo"><a href="/index">
								 <img style="width:40px; height:40px; float:left; valign:middle" src="<c:url value='/resources/images/wine_transparent.gif'/>">
								 INAEPARK RESORT</a></li>
				<li class="menu"><a href="/index" class="menua">HOME</a></li>
				<li class="menu"><a href="/themeTravel/theme" class="menua">테마여행</a>
					<ul class="subul">
						<li class="subli"><a href="/themeTravel/theme" class="suba">테마파크</a></li>
						<li class="subli"><a href="/themeTravel/skiBoard" class="suba">스키 & 보드</a>
							<ul class="smallestul">
								<li class="smallestli"><a href="../themeTravel/lift" class="smallesta">리프트</a></li>
								<li class="smallestli"><a href="../themeTravel/skischool" class="smallesta">스키스쿨</a></li>
							</ul>
						</li>
						<li class="subli"><a href="/themeTravel/spa" class="suba">스파</a>	</li>
						<li class="subli"><a href="/themeTravel/waterpark" class="suba">워터파크</a></li>
					</ul>
				</li>
				<li class="menu"><a href="/fast" class="menua">예약</a>
					<ul class="subul">
						<li class="subli"><a href="/fast" class="suba">빠른 예약</a></li>
					</ul>
				</li>
				<li class="menu"><a href="" class="menua">푸드컬처</a></li>
				<li class="menu"><a href="" class="menua">호텔</a></li>
				<li class="menu"><a href="/event/resortEvent" class="menua">이벤트</a></li>
				<li class="menu"><a href="/sboard/listPage" class="menua">고객센터</a></li>
			</ul>
		</div>
	</nav>
	<!-- === ME END === -->
	
	
	
	<!-- 해상도: ~ 850 -->
	<nav>
		<div id="RT">
			<ul id="RTU">
				<!-- 오는 경로가 다 달라서 상대경로(../)로 하면 안 됨  //절대경로 /(root)부터 시작 -->
				<li id="slogo"><a href="/index">
								 <img style="width:40px; height:40px; float:left; valign:middle"
								 		src="<c:url value='/resources/images/wine_transparent.gif'/>">IAP</a></li>
				<li><a href="/index" class="menua">Home</a></li>
				<li><a href="/themeTravel/theme" class="menua">테마</a></li>
				<li><a href="/reservation/fast" class="menua">예약</a></li>
				<li><a href="" class="menua">음식</a></li>
				<li><a href="" class="menua">호텔</a></li>
				<li><a href="/event/resortEvent" class="menua">이벤트</a></li>
				<li><a href="/sboard/listPage" class="menua">Q&A</a></li>
			</ul>
		</div>
	</nav>
	
	
	<!-- Mobile -->
	<aside id="Mheader">
		<div id="Mtitle">
			<a href="/index">
				<img style="width:40px; height:40px; float:left; valign:middle" src="<c:url value='/resources/images/wine_transparent.gif'/>">
				<b>INAEPARK</b>
			</a>
		</div>
		<div id="Mside">
			<ul>
				<li>
					<a href="/index">
					<img style="width:20px; height:20px" src="<c:url value='/resources/images/icon/house.png'/>">
					<b>HOME</b></a>
				</li>
				<!-- ======= Mmenu ======= -->
				<li id="Mmenuli">	<!-- id for java script -->
					<img style="width:15px; height:15px" src="<c:url value='/resources/images/icon/menu.png'/>"
						onclick="myFunction()" id="Mmenu">	<!-- Mmenu : use at css -->
					<b>MENUS</b>
					<ul id="myul">
						<!-- 오는 경로가 다 달라서 상대경로(../)로 하면 안 됨  //절대경로 /(root)부터 시작 -->
						<li><a href="/themeTravel/house">테마여행</a>
								<ul>
									<li><a href="/themeTravel/theme" class="msuba">리조트</a></li>
									<li><a href="/themeTravel/skiBoard" class="msuba">스키 & 보드</a></li>
									<li><a href="/themeTravel/spa" class="msuba">스파</a>	</li>
									<li><a href="/themeTravel/waterpark" class="msuba">워터파크</a></li>
								</ul>
						</li>
						<li><a href="/reservation/fast">예약</a>
								<ul>
									<li><a href="/reservation/fast" class="msuba">빠른 예약</a></li>
								</ul>
						</li>
						<li><a href="">푸드컬처</a></li>
						<li><a href="">호텔</a></li>
						<li><a href="/event/resortEvent">이벤트</a></li>
						<li><a href="/sboard/listPage">고객센터</a></li>
					</ul>
					
				</li>
			<!-- ======= Mmenu End ======= -->
			</ul>
		</div>
	</aside>
	

<!-- var : variable -->
<script>
	function myFunction(){
		var x = document.getElementById("myul");
		var ml = document.getElementById("Mmenuli");
		var ma = document.getElementById("Mmenua");
		if (x.style.display == "none"){
			x.style.display = "block";
			/*[Java Script]*/
			ml.style.backgroundColor="#e0d75d";
			ma.style.backgroundColor="#e0d75d";
			
			/*[JQuery]
			$("#Mmenuli").css("background-color","#e0d75d"); */
		}else {
			x.style.display = "none";
			ml.style.backgroundColor="#61ab7d";
		}
	};
	
//	function myFunction(){
//		document.getElementById("myul").style.display="block";
//	};

//	 $(document).ready(function(){
//		$("#showMenu").click(function(){
//			$("#myFunctionul").toggle();
//		});
//	});
	
</script>
</body>
</html>