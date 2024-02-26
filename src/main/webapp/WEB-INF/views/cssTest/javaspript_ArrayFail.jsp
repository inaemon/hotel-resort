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
	<button name="jbtn" onclick="color(this)">JQueryTEST</button>
	<button name="jbtn" onclick="color(this)">JImage</button>
	<button name="jbtn" onclick="color(this)">RE</button>
	

<!-- jQuery src -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
function color(obj){
	var btn = obj.form.jbtn;
	for(var i=0, len=btn.length; i<len; i++){
		btn[i].style.color = "rgba(30, 22, 54, 0.6)";
		btn[i].style.boxShadow = "rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset";
	}
	obj.style.color = "rgba(255, 255, 255, 0.85)";
	obj.style.boxShadow = "rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset";
};



</script>
</body>
</html>