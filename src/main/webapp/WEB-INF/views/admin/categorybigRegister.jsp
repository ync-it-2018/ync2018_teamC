<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../admin/include/header.jsp"%>

<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
</style>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">대분류 카테고리 등록</h3>
				</div>
				
				<!-- /.box-header -->
				
				<form role="form" method="post" id="registerForm">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">대분류 카테고리 번호</label> <input type="number"
				name='pBig' class="form-control" placeholder="번호입력">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">대분류 카테고리명</label> 
			<input type="text" name="pBigName" 
			  class="form-control" placeholder="카테고리명 입력">
		</div>
	</div>

	<!-- /.box-body -->

	<div class="box-footer">
    
    <div><hr></div>

    <ul class="mailbox-attachments clearfix uploadedList">
    </ul>
    <button type="submit" class="btn btn-danger" id="write">등록</button>
    <button type="submit" class="btn btn-primary" id="goListBtn">취소</button>
  </div>
</form>


			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.12/handlebars.min.js"></script>

<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	
	$("#goListBtn ").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/categorylist");
		formObj.submit();
	});
	
	$("#write").on("click", function(e){ //작성하기 버튼
        e.preventDefault();
        fn_insertBoard();
    });

	function fn_insertBoard(){
	    var comSubmit = new ComSubmit("registerForm");
	    comSubmit.setUrl("<c:url value='/insertCategoryBig' />");
	    comSubmit.submit();
	}

});

</script>

<script>
function fn_view(pBig){
    
    var form = document.getElementById("categoryForm");
    var url = "<c:url value='/categorybigRead'/>";
    url = url + "?pBig=" + pBig;
    
    form.action = url;    
    form.submit(); 
}
</script>

<%@include file="../admin/include/footer.jsp"%>

