<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
body,html{
	background-image: url("../resources/images/background/snow5.png");
	background-size: cover;
	}
#div_content li{
	background-color: #eab5c2;
	}
</style>
<meta charset="UTF-8">
<title>InaePark Resort</title>
<link href="<c:url value="/resources/css/themeTravel.css"/>"
		rel="stylesheet" type="text/css">
</head>
<body>
<div>
<!-- <div style="display: table; margin-left: auto; margin-right: auto;">	<!-- 가운데정렬 -->
<!-- <body background="<c:url value='/resources/images/black.jpg' />"> -->
	<div class="topOfTop">
		<%@include file="../include/topOfTopheader.jsp" %>
	</div>
	<div class="header center">
		<%@include file="../include/header.jsp"%>
	</div>
	
	<div id="div_content">
		<b class="title" style="color:#ffffff; filter: drop-shadow(0px 10px 20px pink)">SKI & BOARD</b>
		<div id="div_list">
			<ul>
				<!-- id="" only one, Don't apply all li -->
				<li class="liststart" style="background-color: white"><p onclick="water(1)" style="color:#eab5c2">Schlitterbahn</p></li>	<!-- First Come, Default Clicked Effect -->
				<li><p onclick="water(2)">Jungle Aqua Park</p></li>
				<li class="listend"><p onclick="water(3)">Any Park</p></li>
			</ul>
		</div>
	
		<div id="div_content2">
			<!-- First Come, Default Schlitterbahn  //걍 아래 script에 있는 거 그대로 끌어옴 (copy&paste) -->
				<br><br><br><img style='width:600px' src='../../resources/images/skiBoard/ski2.png'>
			<br><b style='font-size:27px; color:#838383'>wave & swing collaboration!!</b>
			<br><b style='font-size:27px; color:#59d6dc; filter: drop-shadow(16px 16px 20px #ffffff)'>Perfect Match!</b><br>
			<big style='color:#4798a5'>schlitterbahn water park is various activity.</big>
			<!--img2-->
			<br><br><br><img style='width:600px' src='../../resources/images/waterzone/water_schlitterbahn1.png'>
			<br><big style='color:#838383; font-size:23px'>Everyday is Water Day</big>
				<!--pageIcon-->
				<img style='width:40px' src='../../resources/images/icon/pageIcon/whale.png'>
			<br><big style='color:#838383; font-size:23px'>Come to Texas!</big>
			<br><big style='color:#838383'>We have wave pool zone, extreme zone, dynamic zone, slide zone.</big>
			<!--img3-->
			<br><br><br><img style='width:600px' src='../../resources/images/waterzone/water_schlitterbahn5.png'>
			<br><br><b style='font-size:27px; color:#fbfbfb; filter: drop-shadow(16px 16px 20px #71e1bc); float: left; padding-left: 60px'>Make Various Experience&nbsp;</b>
				<!--pageIcon-->
				<img style='width:40px; float:left' src='../../resources/images/icon/pageIcon/porridge1.png'>
			<!--img4-->
			<br><br><br><img style='width:250px' src='../../resources/images/waterzone/water_schlitterbahn7.png'>&nbsp;
			<img style='width:370px' src='../../resources/images/waterzone/water_schlitterbahn6.png'>
			<br><br>
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
	var image1 = "<br><br><br><img style='width:600px' src='../../resources/images/skiBoard/ski2.png'>";
	var div1 = "<br><b style='font-size:27px; color:#838383'>wave & swing collaboration!!</b>";
	div1+= "<br><b style='font-size:27px; color:#59d6dc; filter: drop-shadow(16px 16px 20px #ffffff)'>Perfect Match!</b><br>";
	div1+= "<big style='color:#4798a5'>schlitterbahn water park is various activity.</big>";
	/*img2*/
	div1+="<br><br><br><img style='width:600px' src='../../resources/images/waterzone/water_schlitterbahn1.png'>";
	div1+="<br><big style='color:#838383; font-size:23px'>Everyday is Water Day</big>";
		/*pageIcon*/
		div1+="<img style='width:40px' src='../../resources/images/icon/pageIcon/whale.png'>"
	div1+= "<br><big style='color:#838383; font-size:23px'>Come to Texas!</big>";
	div1+= "<br><big style='color:#838383'>We have wave pool zone, extreme zone, dynamic zone, slide zone.</big>";
	/*img3*/
	div1+="<br><br><br><img style='width:600px' src='../../resources/images/waterzone/water_schlitterbahn5.png'>";
	
	
	div1+="<br><br><b style='font-size:27px; filter: drop-shadow(16px 16px 20px #fbfbfb); color:#c5f2ef; float: left; padding-left: 60px'>Make Various Experience&nbsp;</b>";
		/*pageIcon*/
		div1+="<img style='width:40px; float:left' src='../../resources/images/icon/pageIcon/porridge1.png'>";
	/*img4*/
	div1+="<br><br><br><img style='width:250px' src='../../resources/images/waterzone/water_schlitterbahn7.png'>&nbsp;";
	div1+="<img style='width:410px' src='../../resources/images/waterzone/water_schlitterbahn6.png'>";
	div1+="<br><br>"
	
	
	
	var image2 = "<br><br><br><img style='width:500px' src='../../resources/images/waterzone/jungleAqua.png'>";
	var div2 = "<br><b style='font-size:27px; color:#838383'>Water Park Season!</b><br>";
	div2+= "<b style='font-size:27px; color:#59d6dc'>Hilling on vacation.</b><br>";
	div2+= "<big style='color:#4798a5'>Create memory with jungle aqua park.</big>";
	
	div2+="<br><br><img style='width:500px' src='../../resources/images/theme/theme7.png'>";
	div2+="<br><big style='color:#838383'>See the pond sight<br>beautiful sky & bugs world! </big>";
	
	div2+="<br><br><img style='width:500px' src='../../resources/images/theme/theme8.png'>";
	div2+="<br><big style='color:#838383'>&#211; brilliant lighting &#210; <br> Are you ready to come bug's home? &#920;&#957;&#920;</big>";
	div2+="<br><br><img style='width:500px' src='../../resources/images/theme/theme9.png'>";
	
	
	var image3 = "<br><br><br><img style='width:500px' src='../../resources/images/purple_ocean_prepare.jpg'>";
	var div3 = "<br><b style='font-size:27px; color:#838383'>Coming Soon.</b><br>";
	div3+="<big style='color:#4798a5;text-align:center'>Preparing.</big>";
	div3+="<br><br><br>";
	
	function water(n){
		
		for(var i=0; i<cli.length; i++){
			cli[i].style.backgroundColor="#eab5c2";
			ca[i].style.color="white";
		}
		
		cli[n-1].style.backgroundColor="white";
		ca[n-1].style.color="#eab5c2";
		
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