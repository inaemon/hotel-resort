<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
body,html{
	background-image: url("../resources/images/background/spa2.png");
	background-size: cover;
	}
#div_content li{
	background-color: #ff8a3c;
	}
</style>
<meta charset="UTF-8">
<title>InaePark Resort</title>
<link href="<c:url value="/resources/css/themeTravel.css"/>"
		rel="stylesheet" type="text/css">
</head>
<body>
<div>
<!-- <div style="display: table; margin-left: auto; margin-right: auto;">	<!-- center -->
	
	<div class="topOfTop">
		<%@include file="../include/topOfTopheader.jsp" %>
	</div>
	
	<div class="header center">
		<%@include file="../include/header.jsp"%>
	</div>
	
	<div id="div_content">
		<b class="title" style="color:#ffd93c; filter: drop-shadow(0px 10px 20px #f9ee00)">SPA</b>
		<div id="div_list">
			<ul>
				<!-- id="" only one, Don't apply all li -->
				<li class="liststart" style="background-color: white"><p onclick="water(1)" style="color:#ff8a3c">Kyoto Spa</p></li>	<!-- First Come, Default Clicked Effect -->
				<li><p onclick="water(2)">Any Spa</p></li>
				<li class="listend"><p onclick="water(3)">Any Spa</p></li>
			</ul>
		</div>
	
		<div id="div_content2">
			<!-- First Come, Default Schlitterbahn  //걍 아래 script에 있는 거 그대로 끌어옴 (copy&paste) -->
			<br><br><br><img style='width:600px' src='../../resources/images/spa/spa_kyoto.png'>
			<br><b style='font-size:27px; color:#838383'>Healing yourself.</b>
			<br><b style='font-size:27px; color:#59d6dc; filter: drop-shadow(16px 16px 20px #ffffff)'>Immerse yourself in the warm spa.</b><br>
			<big style='color:#ffe028'>Take a good rest after you soak up.</big>
			<br><br><br>
		</div>
	
	</div>
	<aside id="div_left">
		<%@include file="../include/themeLeft.jsp" %>
	</aside>
</div>

<script>
	/* div_content li (menu) */
	var divcon = document.getElementById('div_content');
	var cli = divcon.getElementsByTagName("li");	/*ById = Bring only One,  ByName = Bring ALL */
	var ca = divcon.getElementsByTagName("p");		/*TagName	//selector: divcon p*/
	
	
	/* div_content *//*"Healthy Entertainment!"*/
	var image1 = "<br><br><br><img style='width:600px' src='../../resources/images/spa/spa_kyoto.png'>";
	var div1 = "<br><b style='font-size:27px; color:#838383'>Healing yourself.</b>";
	div1+= "<br><b style='font-size:27px; color:#59d6dc; filter: drop-shadow(0px 10px 20px #ffffff)'>Immerse yourself in the warm spa.</b><br>";
	div1+= "<big style='color:#ffe028'>Take a good rest after you soak up.</big>";
	/*img2*/
	div1+="<br><br><br>";
	
	
	
	var image2 = "<br><br><br><img style='width:500px' src='../../resources/images/purple_ocean_prepare.jpg'>";
	var div2 = "<br><b style='font-size:27px; color:#838383'>Coming Soon.</b><br>";
	div2+="<big style='color:#4798a5;text-align:center'>Preparing.</big>";
	div2+="<br><br><br>";
	
	
	var image3 = "<br><br><br><img style='width:500px' src='../../resources/images/purple_ocean_prepare.jpg'>";
	var div3 = "<br><b style='font-size:27px; color:#838383'>Coming Soon.</b><br>";
	div3+="<big style='color:#4798a5;text-align:center'>Preparing.</big>";
	div3+="<br><br><br>";
	
	function water(n){
		
		for(var i=0; i<cli.length; i++){
			cli[i].style.backgroundColor="#ff8a3c";
			ca[i].style.color="white";
		}
		
		cli[n-1].style.backgroundColor="white";
		ca[n-1].style.color="#ff8a3c";
		
		/* div_content */
		if (n==1){
			document.getElementById("div_content2").innerHTML=image1;
			document.getElementById("div_content2").innerHTML+=div1;
		}
		else if (n==2){
			document.getElementById("div_content2").innerHTML=image2;
			document.getElementById("div_content2").innerHTML+=div2;
		}
		else if (n==3){
			document.getElementById("div_content2").innerHTML=image3;
			document.getElementById("div_content2").innerHTML+=div3;
		}
		
	}
</script>

</body>
</html>