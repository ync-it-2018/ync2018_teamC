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
						<h3 class="box-title">REGISTER Small Category</h3>
					</div>
					<!-- /.box-header -->

					<form role="form" method="post">
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">중분류 카테고리 번호</label> <input
									type="text" id="pMiddle" name='pMiddle' class="form-control"
									placeholder="Enter pMiddle">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">소분류 카테고리 번호</label> <input
									type="text" id="pSmall" name='pSmall' class="form-control"
									placeholder="Enter pSmall">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">소분류 카테고리 명</label> <input
									type="text" id="pSmallName" name='pSmallName'
									class="form-control" placeholder="Enter pSmallName">
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
	$('.btn-warning').on("click", function() {

		elf.location = "/admin/categorysmallList";

	});
		/* formObj.attr("method", "get");
		formObj.attr("action", "/admin/categorySmallList");				
		formObj.submit(); */
});
</script>


<%@include file="../admin/include/footer.jsp"%>
