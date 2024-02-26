<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Script is My Coding -->
<script>
	var result='${msg}';
	if(result=='SUCCESS'){
		alert('처리가 완료되었습니다.');
	}
</script>

<title>게시판 리스트</title>
<!-- NO_JSTL -->
<!-- link href="${pageContext.request.contextPath}/resources/css/sboard.css" -->

<!-- JSTL -->
<link href="<c:url value="/resources/css/a_tag_cssTest.css?q=123"/>"
		rel="stylesheet" type="text/css">
</head>
<body>
	<!-- ME -->
	<nav>
		<div class="resortTitle">
			<a href="../index" class="menu">HOME</a>
			<a href="../themeTravel/" class="menu">테마여행</a>
			<a href="../reservation/fast" class="menu">예약</a>
			<a href="" class="menu">푸드컬처</a>
			<a href="" class="menu">호텔</a>
			<a href="../event/resortEvent" class="menu">이벤트</a>
			<a href="listPage" class="menu">고객센터</a>
		</div>
	</nav>
	<!-- === ME END === -->
	<div id="testBlock">CSS</div>
	
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="wrapper">	<!-- ME -->
					<div class="box-header">
						<h3 class="box-title">LIST BOARD</h3>
					</div>
				</div>
</script>

</body>
</html>


