<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../admin/include/header.jsp" %>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">MODIFY EVENT</h3>
				</div>
				<!-- /.box-header -->

			<form role="form" method="post">

					<div class="box-body">

						<div class="form-group">
							<label for="exampleInputEmail1">ENum</label> <input type="text"
								name='eNum' class="form-control" value="${eventVO.eNum}"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Title</label> 
							<input type="text" name='eName' class="form-control" value="${eventVO.eName}"/>
						</div>
						
						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="eDetail" rows="3">${eventVO.eDetail}</textarea>
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">Start Date</label> 
							<input type="text" name='eStartdate' class="form-control" value="${eventVO.eStartdate}"/>
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">End Date</label> 
							<input type="text" name='eEnddate' class="form-control" value="${eventVO.eEnddate}"/>
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">Link</label> 
							<input type="text" name='eLink' class="form-control" value="${eventVO.eLink}"/>							
						</div>
					</div>
					<!-- /.box-body -->
				</form>
	<div class="box-footer">
		
    <button type="submit" class="btn btn-primary">SAVE</button> 
    <button type="submit" class="btn btn-warning">CANCEL</button>

	</div>

</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

<!-- /.content-wrapper -->

<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>  

 <script>
 $(document).ready(function(){
	// 폼을 변수에 저장
	 var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	// 취소 버튼 클릭
	$(".btn-warning").click(function(){
	  self.location = "/admin/aeventList";	  
	});
	
	// 수정 버튼 클릭
	$(".btn-primary").click(function(){
		formObj.submit();	  
	});
 });
 </script>


<%@include file="../admin/include/footer.jsp" %>
