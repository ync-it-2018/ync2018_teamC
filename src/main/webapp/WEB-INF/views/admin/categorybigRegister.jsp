<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@include file="../admin/include/header.jsp"%>

<div>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">REGISTER Big Category</h3>
					</div>
					<!-- /.box-header -->

					<form role="form" method="post">
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">대분류 카테고리 번호</label> <input
									type="text" id="pBig" name='pBig' class="form-control"
									placeholder="Enter pBig">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">대분류 카테고리 명</label>
								<textarea class="form-control" id="pBigName" name="pBigName"
									rows="3" placeholder="Enter pBigName"></textarea>
							</div>

						</div>

						<!-- /.box-body -->

						<div class="box-footer">

							<button type="submit" class="btn btn-primary">등록</button>

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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	/* 등록 클릭 */ 
	/* $('.btn-primary').on('click',function(){
		
		if (document.post.nTitle.value == "" || document.post.nTitle.value == null) {
			alert("제목을 입력하세요");
            document.post.nTitle.focus();
            return;
        } else if (document.post.nContents.value == "" || document.post.nContents.value == null) {
        	alert("내용을 입력하세요");
            document.post.nContents.focus();
            return;
        } else {
            document.post.submit();
        }	 */	
		
		/* var nCode = $("#nCode").val();
		var nTitle = $("#nTitle").val();
		var nContents = $("#nContents").val();
		
		if(nCode == ""){
			alert("번호를 입력하세요");
			form.nCode.focus();
		}
		if(nTitle == ""){
			alert("제목을 입력하세요");
			form.nTitle.focus();
		}
		if(nContents == ""){
			alert("내용을 입력하세요");
			orm.nContents.focus();
		} */
		formObj.attr("method", "get");
		formObj.attr("action", "/admin/categorybigList");				
		formObj.submit();
	});
	
});
</script>


<%@include file="../admin/include/footer.jsp"%>

