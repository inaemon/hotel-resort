<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/cssTest/jsTest1.css" />" rel="stylesheet"/>
<script src="<c:url value="/resources/js/jsTest1.js" />"></script>
</head>
<body>
<header>
          <button class="toggle-nav">
                <span>></span>
          </button>
          <ul class="nav">
                <li class="loud"><a href="#">Home</a></li>
                <li class="loud"><a href="#">About</a></li>
                <li class="loud"><a href="#">Case studies</a></li>
                <li class="loud"><a href="#">Clients</a></li>
                <li class="loud"><a href="#">Contact</a></li>
          </ul>
    </header>

<section>
  <h1>Example of a <strong>cool</strong> & <strong>simple</strong> reponsive navigation.</h1>
</section>
    
</body>
</html>