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
<link href="<c:url value="/resources/css/sboard.css?q=123"/>"
		rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="../include/header.jsp"%>
	
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
					
			<!-- ====== 여기부터 내가 작성 (My coding from here!!!! (this point) ) ===== -->
			<!-- SEARCH LIST -->		
			<div class="col-md-5">
				<select name="searchType">
					<option value="n" <c:out value="${cri.searchType == null ?'selected':'' }"/>>--------------</option>
					<option value="t" <c:out value="${cri.searchType eq 't'?'selected':''}"/>>Title</option>
					<option value="c" <c:out value="${cri.searchType eq 'c'?'selected':''}"/>>Content</option>
					<option value="w" <c:out value="${cri.searchType eq 'w'?'selected':''}"/>>Writer</option>
					<option value="tc" <c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>Title or Content</option>
					<option value="cw" <c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>Content or Writer</option>
					<option value="tcw" <c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>Title or Content or Writer</option>
				</select>
				<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
				<input type="button" value="search" id="searchBtn">
				<input type="button" value="새글" id="newBtn">
			</div>
			
			<!-- PAGE LIST 개수 -->
			<div class="col-md-1 col-md-offset-6">
				<select class="form-control" id="perPageNum">
					<!-- selected : default로 option choose되게 (= checkBox's checked)  -> 걍 그림이긴 함 
						 perPageNum이 10이랑 같으면 -> ==안먹힘 (x)  eq  (o) -->
					<option value="10" <c:out value="${cri.perPageNum eq 10?'selected':'' }"/>>10</option>
					<option value="20" <c:out value="${cri.perPageNum eq 20?'selected':'' }"/>>20</option>

					<!--
					<option value="30" selected>30</option> -->
					<option value="30" <c:out value="${cri.perPageNum eq 30?'selected':'' }"/>>30</option>
					<option value="40" <c:out value="${cri.perPageNum eq 40?'selected':'' }"/>>40</option>					
				</select>
			</div>
			
			
			
					
			<!-- 리스트 테이블 태그 -->
					<table class="table table-bordered"> <!-- boarded -->
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성날짜</th>
							<th>조회수</th>
						</tr>
						<c:forEach items="${list }" var="list">
							<tr>
								<td>${list.bno }</td>
								<!-- bno 딸려보냄  //page와 perPageNum은 cri와 maker가 갖고 있음 cri.page (= maker.cri.page), cri.perPageNum (o) -->
<!-- page 더 쉽게 사용하려고 만든 uri 메소드 -->
<%--							<td><a href="read?bno=${list.bno}&page=${cri.page}&perPageNum=${maker.cri.perPageNum}">${list.title }</a></td>						--%>
<%--							<td><a href="read${maker.makeQuery(maker.cri.page)}&bno=${list.bno}">${list.title }</a></td>					--%>
<!-- makerQuery말고 Search메소드 -->
								<td><a href="read${maker.makeSearch(maker.cri.page)}&bno=${list.bno}">${list.title }</a></td>
								<td>${list.writer }</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${list.regdate }" /></td>
								<td>${list.cnt}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
					<!-- 화면 하단에 페이지 처리 : 1-10,  prev, next button -->
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${maker.prev }">
						<!-- uri에 들어가는 a_tag에 다 page, perPageNum 딸려보내기 -->
<!--						<li><a href="listPage?page=${maker.startPage-1}&perPageNum=${cri.perPageNum}">prev</a></li>				-->
<!-- 						<li><a href="listPage${maker.makeQuery(maker.startPage-1)}">prev</a></li>								-->
							<li class="paginationmv"><a href="listPage${maker.makeSearch(maker.startPage-1)}">prev</a></li>
						</c:if>
						<c:forEach begin="${maker.startPage }" end="${maker.endPage }" var="idx">
						<!-- c:out 변수에 들어 있는 값 출력 -->
						<li class="paginationli"
							<c:out value="${maker.cri.page==idx?'class=active':'' }"/>>
<!--						<a href="listPage?page=${idx}&perPageNum=${cri.perPageNum}">${idx}</a>									-->
<!-- 						<a href="listPage${maker.makeQuery(idx) }">${idx}</a>													-->
							<a href="listPage${maker.makeSearch(idx) }">${idx}</a>	
						</c:forEach>
						<c:if test="${maker.next && maker.endPage>0 }">
<!-- 						<li><a href="listPage?page=${maker.endPage+1}&perPageNum=${maker.cri.perPageNum}">next></a></li>		-->
<!-- 						<li><a href="listPage${maker.makeQuery(maker.endPage+1) }">next></a></li>								-->	
							<li class="paginationmv"><a href="listPage${maker.makeSearch(maker.endPage+1) }">next></a></li>			
						</c:if>
					</ul>			
				</div>
				
				<form id="jobForm">
					<input type="hidden" name="page" value='${maker.cri.page }'>
					<input type="hidden" name="perPageNum" value="${maker.cri.perPageNum }">
					<input type="hidden" name="searchType" value="${maker.cri.searchType }">
					<input type="hidden" name="keyword" value="${cri.keyword }">
				</form>
</section>
</div>
<%--include file="../include/footer.jsp"--%>
	

<!-- Give function to <select class="form-control" id="perPageNum">  
	 var : 변수에 담아 
	 name이 perPageNum인걸 찾아서 val변수를 담아
	 perPageNum 움직이게 -->
<script>
	$(".form-control").change(function(){
		var perPageNum=$(this).val();
		var jobForm=$("#jobForm");
		jobForm.find("[name='perPageNum']").val(perPageNum);
		jobForm.attr("action", "listPage").attr("method", "get");		//move
		jobForm.submit();
	});
	
	//search
	$("#newBtn").on("click", function(){
		var perPageNum=${maker.cri.perPageNum};
		var jobForm=$("#jobForm");
		jobForm.find("[name='perPageNum']").val(perPageNum);
		jobForm.attr("action","register").attr("method","get");
		jobForm.submit();
	});
	$("#searchBtn").on("click", function(){
		self.location="listPage${maker.makeQuery(1)}"	//외 makeSearch가 아니고 makeQuery?
		+"&searchType="		//여기서 searchType과 keyword를 보내니까 Query(page,perPageNum)만 기억하면 됨
		+$("select option:selected").val()
		+"&keyword="+encodeURIComponent($('#keywordInput').val());	//encodeURIComponent -> 한글 Encoading in JAVA_script
	});
</script>

</body>
</html>


