<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="jdiv" style="background-color:red; width: 100px; height: 100px"></div>
	<button id="jbtn" onclick="ok()">JQueryTEST</button>
	<button id="jbtn2" onclick="img()">JImage</button>
	<button id="jbtn3" onclick="reverse()">RE</button>
	

<!-- jQuery src -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
function ok(){
		/* alert("Button"); */
	 $("#jdiv").css("background-color","yellow"); 
};
function img(){
	$("#jdiv").css('background-image','url(../resources/images/background/resort.png)');
	$("#jbtn2").css('color','rgba(255, 255, 255, 0.85)');
	$("#jbtn2").css('box-shadow',"rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset");
	
};
function reverse(){
	$("#jdiv").css('background-image','url(../resources/images/background/building.png)');
	$("#jbtn3").css('color','rgba(30, 22, 54, 0.6)');
	$("#jbtn3").css('box-shadow',"rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset");
};


</script>
</body>
</html>