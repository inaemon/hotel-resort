<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [url]
	background-image: url("/resources/images/background/resort.png"); -->
<style>
.imgslide:hover{
			/*right | bottom | blur | spread | color*/
	box-shadow: 0px 7px 5px 1px #aaaaaa;
	cursor: pointer;
	}
#centerimg{
	align-content: center;
	text-align: center;
	vertical-align: middle;
}

</style>
<title>InaePark Resort</title>
<link href="<c:url value="/resources/css/index.css"/>"
		rel="stylesheet" type="text/css">
</head>
<!-- <body background="../resources/images/background/resort.png"> -->
<body>
<div id="highMain"  style="text-align:center">
	<div id="topOfTop">
		<%@include file="include/topOfTopheader.jsp" %>
	</div>
	
	<div class="co1 contain">
	<%@include file="include/header.jsp"%>
	</div>
	<div class="co2 contain">
		<!-- Commons -->
		<div>
			<img class="mySlide" src="../resources/images/background/resort.png">
			<img class="mySlide" src="../resources/images/background/building.png" style="display:none">	<!-- 초기상태는 일단 숨겨 -->
			<img class="mySlide" src="../resources/images/background/hotel.png" style="display:none">
			<img class="mySlide" src="../resources/images/background/waterzone.png" style="display:none">
		</div>

		<!-- Mobile -->
		<div id="mobilebtn">
			<div>
				<button class="mbtn" onclick="plusDivs(-1)">&#10094; Prev</button>	<!-- &#10094 : "<" -->
				<button class="mbtn" onclick="plusDivs(+1)">Next &#10095;</button>
			</div>	<!-- class="w3-btn demo" -> w3-btn (bring css (w3-site)), real_class_name: demo -->
			<button class="btnslide" onclick="currentDiv(1)">resort</button>
			<button class="btnslide" onclick="currentDiv(2)">theme</button>
			<button class="btnslide" onclick="currentDiv(3)">hotel</button>
			<button class="btnslide" onclick="currentDiv(4)">water</button>
		<p>테스트</p>
		</div>
		
		<!-- pc -->
		<div id="bookbtn"><!-- class="demo w3-border w3-hover-shadow" -->
			<a><img class="imgslide" src="../resources/images/background/resort.png"
				style="width:15%" onclick="currentDiv(1)"></a>
			<a><img class="imgslide" src="../resources/images/background/building.png"
				style="width:15%" onclick="currentDiv(2)"></a>
			<a><img class="imgslide" src="../resources/images/background/hotel.png"
				style="width:15%" onclick="currentDiv(3)"></a>
			<a><img class="imgslide" src="../resources/images/background/waterzone.png"
				style="width:15%" onclick="currentDiv(4)"></a>
		</div>
	</div>
</div>
<!-- 	<p>테스트</p> -->


<script>
/** Commons (pc + mobile) */

	var slideIndex = 1;
	showDivs(slideIndex);	/*call function*/
	
	
	function currentDiv(n){ /*call onclick*/
		showDivs(slideIndex = n);	/*Click the Image, Button -> slide function */
	}
	
	/*==Mobile (btnslide)*/
	function plusDivs(n){
		showDivs(slideIndex += n);
	}
	/*--Mobile END--*/
	
	
	function showDivs(n){
		var i;
		var image = document.getElementsByClassName("mySlide");
		
		/*==pc (imgslide)*/
		var imgslide = document.getElementsByClassName("imgslide");
		/*--pc END--*/
		/*==Mobile (btnslide) -> use for css*/
		var btnslide = document.getElementsByClassName("btnslide");
		/*--Mobile END--*/
		
		
		if (n > image.length){
			slideIndex = 1;
		}
		if (n < 1){
			slideIndex = image.length;
		}
		
		for (i=0; i<image.length; i++){
			image[i].style.display = "none";	/*초기화*//*initialization*/
		}
		
		
		/*==pc imgslide*/
		for(i=0; i<imgslide.length; i++){
			/*dots[i].className = dots[i].className.replace(" w3-border-red", ""); "border-color:red","shadow(x)" */
			imgslide[i].style.border = "none";	/*initialization*/
		}
		/*==mobile btnslide*/
		/* for (i=0; i<btnslide.length; i++){
			dots[i].style.background = "white";
		} */
		
		
		image[slideIndex-1].style.display = "block";
		
		/*imgslide[slideIndex-1].className += " w3-border-red";	/*border에 red-color입힌 class_name  w3-css사이트꺼 가져옴*/
		imgslide[slideIndex-1].style.border = "1px solid #f48718";	/*직접할래 걍*/
		/* btnslide[slideIndex-1].style.backgroundColor = "red"; */
	}
 
	
	
</script>
</body>
</html>