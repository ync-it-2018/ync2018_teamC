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
					<h3 class="box-title">MODIFY QNA</h3>
					<!-- Q&A수정페이지 -->
				</div>
				<!-- /.box-header -->

			<form role="form" method="post">

					<div class="box-body">

						<div class="form-group">
							<label for="exampleInputEmail1">제목</label> <input type="text"
								name='qTitle' class="form-control" value="${qnaVO.qTitle}"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">질문자 아이디</label> 
							<input type="text" name='mID' class="form-control" value="${qnaVO.mID}"
							readonly="readonly"/>
						</div>
						
						<div class="form-group">
							<label for="exampleInputPassword1">질문 내용</label>
							<textarea class="form-control" name="qContents" rows="3"
							readonly="readonly">${qnaVO.qContents}</textarea>
						</div>
					</div>
					<!-- /.box-body -->

					<div class="box-body">

						<div class="form-group">
							<label for="exampleInputEmail1">관리자 아이디</label> <input type="text"
								name='aID' class="form-control" value="${qnaVO.aID}"readonly="readonly">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">답변내용</label> 
							<input type="text" name='qAContents' class="form-control" value="${qnaVO.qAContents}"/>
						</div>
						
						<div class="form-group">
							<label for="exampleInputPassword1">답변확인/미확인</label> <br>
							<%-- <textarea class="form-control" name="qCheck" rows="3">${qnaVO.qCheck}</textarea> --%>
							<input type="radio" name="qCheck" value="답변완료"> 답변완료 <br>
							<input type="radio" name="qCheck" value="답변미완료"> 답변미완료  <br>
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
	  self.location = "/Qnalist";	  
	});
	
	// 수정 버튼 클릭
	$(".btn-primary").click(function(){
		formObj.submit();	  
	});
 });
 </script>


<%@include file="../admin/include/footer.jsp" %>
