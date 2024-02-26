<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body, html{
	padding: 0px; margin: 0px;
}
</style>
</head>
<body>
		<img class="mySlide" src="../resources/images/background/resort.png">
		<img class="mySlide" src="../resources/images/background/building.png">
		<img class="mySlide" src="../resources/images/background/hotel.png">
		
		
		<div>
			<div>
				<button class="btn" onclick="plusDivs(-1)">&#10094; Prev</button>	<!-- &#10094 : "<" -->
				<button class="btn" onclick="plusDivs(+1)">Next &#10095;</button>
			</div>
				<button class="w3-btn demo" onclick="currentDiv(1)">1</button>
				<button class="w3-btn demo" onclick="currentDiv(2)">2</button>
				<button class="w3-btn demo" onclick="currentDiv(3)">3</button>
		</div>
		
<script>
	var slideIndex = 1;
	showDivs(slideIndex);	/*call function*/
	
	function plusDivs(n){
		showDivs(slideIndex += n);
	}
	
	function currentDiv(n) {
		  showDivs(slideIndex = n);
	}
	
	function showDivs(n){
		var i;
		var image = document.getElementsByClassName("mySlide");
		/*dot : w3-btn demo*/
		var dots = document.getElementsByClassName("demo");
		
		if (n > image.length){
			slideIndex = 1;
		}
		if (n < 1){
			slideIndex = image.length;
		}
		
		for (i=0; i<image.length; i++){
			image[i].style.display = "none";	/*초기화*//*initialization*/
		}
		for (i=0; i<dots.length; i++){
			dots[i].className = dots[i].className.replace(" w3-red","");
		}
		
		image[slideIndex-1].style.display = "block";
		dots[slideIndex-1].className += " w3-red";
	}

</script>
</body>
</html>