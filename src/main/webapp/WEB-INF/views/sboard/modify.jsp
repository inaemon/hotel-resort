<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<%--include file="../include/header.jsp"--%>
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">MODIFY BOARD</h3>
				</div>	
			<form role="form" method="post">	<!-- role="form" -> JQuery-->					
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputBNO">BNO</label>
						<input type="text" name="bno" class="form-control" readonly="readonly" value="${board.bno }">		
					</div>
					<div class="form-group">
						<label for="exampleInputTitle">Title</label>
						<input type="text" name="title" class="form-control" value="${board.title }">		
					</div>
					<div class="form-group">
						<label for="exampleInputContent">Content</label>
						<textarea class="form-control" name="content" rows="3">${board.content }
					</textarea>	
					</div>
					<div class="form-group">
						<label for="exampleInputWriter">Writer</label>
						<input type="text" name="writer" class="form-control" value="${board.writer }" readonly="readonly">		
					</div>
				</div>
				<input type="hidden" name="page" value="${cri.page }">
				<input type="hidden" name="perPageNum" value="${cri.perPageNum }">		
<%-- 			검색 후 search_input에 Title,Title로 뒤에 자꾸 붙어서 넘기지 않는다	
				<input type="hidden" name="searchType" value="${cri.searchType }">
				<input type="hidden" name="keyword" value="${cri.keyword }">	 --%>	
			</form>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">SAVE</button>
					<button type="submit" class="btn btn-warning">CANCEL</button>					
				</div>	
			</div>
		</div>
	</div>
</section>
</div>	
<%--include file="../include/footer.jsp"--%>
<script>
	$(document).ready(function(){
		var formObj=$("form[role='form']");	//role="form"인거 가져와 -> var: 변수$ 선언
		
		/* CANCEL_Button */
		$(".btn-warning").on("click", function(){	//class="btn-warning"
			
		/*  formObj.attr("action", "modify");	//action="modify"  -> /board/modify
			formObj.attr("method", "get");		//method="get"
			formObj.submit(); */
			
			//근데 CANCEL 잘못 눌러서 다 지워지는거 짜증나거든 -> 진짜 취소하겠냐고 script띄우면 좋을듯
			self.location="listPage?page=${cri.page}&perPageNum=${cri.perPageNum}"
					+"&searchType=${cri.searchType}&keyword=${cri.keyword}";
					
			
		});
		
		/* SAVE_Button */
		$(".btn-primary").on("click", function(){
			//update
			formObj.submit();
		});
	});
</script>

</body>
</html>