<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--include file="../include/header.jsp"--%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->
				<!-- This page에서는 value만 board.x로 넣어줌 -->
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputTitle">Title</label>
						<input type="text" name="title" class="form-control" value="${board.title }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputContent">Content</label>
						<textarea class="form-control" name="content" rows="3" readonly="readonly">${board.content}
					</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputWriter">Writer</label>
						<input type="text" name="writer" class="form-control" value="${board.writer }"readonly="readonly">
					</div>
				</div>
				<div class="box-footer">
					<button type="submit" class="btn btn-warning">Modify</button>
					<button type="submit" class="btn btn-danger">Remove</button>
					<button type="submit" class="btn btn-primary">List Page</button>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 내가 코딩!! -->
<form role="form" method="post">
	<!-- hidden으로 uri에 넣을 것 딸려보내기 -->
	<input type="hidden" name="bno" value="${board.bno }">
	<!-- 사용자가 보던 현재 페이지 번호와 목록 수 (Now_page_num, Now_list) 보내기 -->
	<input type="hidden" name="page" value="${cri.page }">
	<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
	<input type="hidden" name="searchType" value="${cri.searchType }">
	<input type="hidden" name="keyword" value="${cri.keyword }">
</form>
<!-- JQuery -->
<script>
	$(document).ready(function(){
		var formObj=$("form[role='form']");	//role="form"인 form 가져와 (에 적용) -> var: 변수$ 선언
		
		/* Modify_Button */
		$(".btn-warning").on("click", function(){	//class="btn-warning"
			//When modify_button be clicked,
			//you can modify board_content -> calling Controller(work that Controller bring the bno(board_num))
			formObj.attr("action", "modify");	//action="modify"  -> /board/modify
			formObj.attr("method", "get");		//method="get"
			formObj.submit();
		});
		
		/* Delete_Button */
		$(".btn-danger").on("click", function(){
			formObj.attr("action", "remove");
			formObj.submit();
		});
		
		/* ListAll_Button */
		$(".btn-primary").on("click", function(){
		 	/*	[1. calling Controller]
		 	formObj.attr("action", "listAll");
			formObj.attr("method", "get");
			formObj.submit();  
			*/
			
			/*	[2. self.location]
			self.location="/board/listAll";
			*/
			
			formObj.attr("action", "listPage");
			formObj.attr("method", "get");
			formObj.submit();
			
		});
	});
</script>
<%--include file="../include/footer.jsp"--%>

