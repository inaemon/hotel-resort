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
	.a1, .a2{
		color: black;
		/*background*/
		background-color: white;
		border: 2px solid black;
		font-size: 40px;
		
		/*둥근 모서리*/
		border-radius: 50%;
	}
	.a1:active, .a2:active{
		color: white;
		background-color: rgba(30, 22, 54, 0.5);
		border: none;
	}
</style>
</head>
<body>
		<img class="mySlide" src="../resources/images/background/resort.png">
		<img class="mySlide" src="../resources/images/background/building.png">
		
		
		
		<a class="a1" onclick="plusDivs(-1)">&#10094;</a>	<!-- &#10094 : "<" -->
		<a class="a2" onclick="plusDivs(+1)">&#10095;</a>

<!-- jQuery src -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	var slideIndex = 0;
	carousel();		/*call function*/
	
	function carousel(){
		var i;
		var image = document.getElementsByClassName("mySlide");
		for(i=0; i<image.length; i++){
			image[i].style.display = "none";
		}
		
		slideIndex++;
		
		if (slideIndex > image.length){
			slideIndex = 1;
		}
		/*Slide Show*/
		image[slideIndex-1].style.display = "block";
		setTimeout(carousel, 2000);	// Change image every 2 seconds
	}

</script>
</body>
</html>