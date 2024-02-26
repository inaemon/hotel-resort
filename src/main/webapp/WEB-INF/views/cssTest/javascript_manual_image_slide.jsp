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
.stylediv{
	margin: 20px 5px;
	display: block;
	

}

.w3-border:hover{
		/*right | bottom | blur | spread | color*/
	box-shadow: 0px 7px 5px 1px #aaaaaa;
	cursor: pointer;
}
/* .w3-border:focus {
	border: 1px solid #f48718;
}*/

</style>
</head>
<body>
		
<div style="max-width:1200px">
	<img class="mySlide" src="../resources/images/background/resort.png" style="width:100%">
	<img class="mySlide" src="../resources/images/background/building.png" style="width:100%">
	<img class="mySlide" src="../resources/images/background/hotel.png" style="width:100%">
	
		<div class="stylediv">
					<a><img class="demo w3-border w3-hover-shadow" src="../resources/images/background/resort.png"
						style="width:30%" onclick="currentDiv(1)"></a>
					<a><img class="demo w3-border w3-hover-shadow" src="../resources/images/background/building.png"
						style="width:30%" onclick="currentDiv(2)"></a>
					<a><img class="demo w3-border w3-hover-shadow" src="../resources/images/background/hotel.png"
						style="width:30%" onclick="currentDiv(3)"></a>
		</div>
</div>
		


<script>
	var slideIndex = 1;
	showDivs(slideIndex);	/*call function*/
	
/* 	function plusDivs(n){	
		showDivs(slideIndex += n);
	} */
	function currentDiv(n){	/*call onclick*/
		showDivs(slideIndex = n);
	}
	
	function showDivs(n){
		var i;
		var image = document.getElementsByClassName("mySlide");
		/*dot*/
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
		/*dot*/
		for(i=0; i<dots.length; i++){
			dots[i].className = dots[i].className.replace(" w3-border-red", "");
			dots[i].style.border = "none";	/*initialization*/
		}
		
		image[slideIndex-1].style.display = "block";
		/*dot*/
		dots[slideIndex-1].className += " w3-border-red";
		dots[slideIndex-1].style.border = "1px solid #f48718";
	}

</script>
</body>
</html>