<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
body,html{
	background-image: url("../resources/images/background/park1.png");
	background-size: cover;
	}
	
#div_content li{
	background-color: #4798a5;
	}
</style>
<meta charset="UTF-8">
<title>InaePark Resort</title>
<link href="<c:url value="/resources/css/themeTravel.css"/>"
		rel="stylesheet" type="text/css">
</head>
<body>
<div>
<!-- <div style="display: table; margin-left: auto; margin-right: auto;"> <!-- 가운데정렬인데 header가  아래로 빠짐 -->
	<div class="topOfTop">
		<%@include file="../include/topOfTopheader.jsp" %>
	</div>
	<div class="header center">	<!-- array center -->
		<%@include file="../include/header.jsp"%>
	</div>
	
	
	<div id="div_content">
	<b class="title">THEME PARK</b>
		<div id="div_list">
			<ul>
				<!-- id="" only one, Don't apply all li -->
				<li class="liststart" style="background-color:white"><p onclick="change(1)" style="color:#4798a5">Seoul</p></li>	<!-- default clicked -> color -->
				<li><p onclick="change(2)">Bug's Land</p></li>
				<li class="listend"><p onclick="change(3)">Lego Land</p></li>
			</ul>
		</div>
		<div id="div_content2">	
			<!-- java script space -->
			<!-- Once, 일단 처음에 첫번째 사진(Seoul)이 눌린 상태를 띄워주기위해 Seoul내용(image1,div1)을 Default로 -->
			<br><br><br>
				<img style='width:600px' src='../../resources/images/theme/theme3.png'>
			<br>
				<b style='font-size:27px; color:#838383'>Enjoy Theme Park!</b><br>
				<big style="color:#4798a5">Seoul park is so fantasy  from 1987.</big>
			<br><br>
				<img style='width:600px' src='../../resources/images/theme/theme5.png'>
			<br>
				<big style='color:#838383; font-size:23px'>Everyday is White Day</big>
				<img style='width:40px' src='../../resources/images/icon/pageIcon/teddy-bear.png'>
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
	var image1 = "<br><br><br><img style='width:600px' src='../../resources/images/theme/theme3.png'>";
	var div1 = "<br><b style='font-size:27px; color:#838383'>Enjoy Theme Park!</b><br>";
	div1+= "<big style='color:#4798a5'>Seoul park is so fantasy  from 1987.</big>";
	div1+="<br><br><img style='width:600px' src='../../resources/images/theme/theme5.png'>";
	div1+="<br><big style='color:#838383; font-size:23px'>Everyday is White Day</big><img style='width:40px' src='../../resources/images/icon/pageIcon/teddy-bear.png'>";
	div1+="<br><br>";
	
	var image2 = "<br><br><br><img style='width:600px' src='../../resources/images/theme/theme6.png'>";
	var div2 = "<br><b style='font-size:27px; color:#838383'>Go Adventure with Bug's Land!</b><br>";
	div2+= "<big style='color:#4798a5'>Create memory with various bugs.</big>";
	
	div2+="<br><br><img style='width:600px' src='../../resources/images/theme/theme7.png'>";
	div2+="<br><big style='color:#838383'>See the pond sight<br>beautiful sky & bugs world! </big>";
	
	div2+="<br><br><br><br><img style='width:500px' src='../../resources/images/theme/theme8.png'>";
	div2+="<br><big style='color:#838383'>&#211; brilliant lighting &#210; <br> Are you ready to come bug's home? &#920;&#957;&#920;</big>";
	div2+="<br><br><br><br><img style='width:600px' src='../../resources/images/theme/theme9.png'><br><br>";
	
	
	var image3 = "<br><br><br><img style='width:600px' src='../../resources/images/theme/legoland1.png'>";
	var div3 = "<br><b style='font-size:27px; color:#838383'>Welcome to Lego Land!</b><br>";
	div3+="<big style='color:#4798a5'>Let's have a good drive.</big>";
	div3+="<br><br><img style='width:600px' src='../../resources/images/theme/legoland2.png'><br><br>";
	
	function change(n){
		
		for(var i=0; i<cli.length; i++){
			cli[i].style.backgroundColor="#4798a5";
			ca[i].style.color="white";
		}
		
		cli[n-1].style.backgroundColor="white";
		ca[n-1].style.color="#4798a5";
		
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
	
	/* div_content */
	/* function change(1){
		document.all("div_content2").innerHTML="HELLO"
	} */
	
	/* function change2(){
		document.all("div_content2").innerHTML="OKK"

		cli[1].style.backgroundColor="white";
		ca[1].style.color="#4798a5";
		
		
	}
	function change3(){
		document.all("div_content2").innerHTML="BOO"
		
	} */
	
</script>
</body>
</html>