<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   

<%@include file="../admin/include/header.jsp" %>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- Main content -->
    <style type="text/css">
    .popup {position: absolute;}
    .back { background-color: gray; opacity:0.5; width: 100%; height: 300%; overflow:hidden;  z-index:1101;}
    .front { 
       z-index:1110; opacity:1; boarder:1px; margin: auto; 
      }
     .show{
       position:relative;
       max-width: 1200px; 
       max-height: 800px; 
       overflow: auto;       
     } 
  	
    </style>

    <div class='popup back' style="display:none;"></div>
    <div id="popup_front" class='popup front' style="display:none;">
     <img id="popup_img">
    </div>

<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ NOTICE</h3>
				</div>
				<!-- /.box-header -->

				<form role="form"  method="post">

					<input type='hidden' name='qNum' value="${list.qNum}"> 
					

				</form>
				
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">제목</label> 
						<input type="text" name='qTitle' class="form-control" value="${list.qTitle}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">질문자 아이디</label> 
						<input type="text" name='mID' class="form-control" value="${list.mID}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">내용</label>
						<textarea class="form-control" name="qContents" rows="3"
							readonly="readonly">${list.qContents}</textarea>
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">답변여부</label> 
						<input type="text" name='qCheck' class="form-control" value="${list.qCheck}"
							readonly="readonly">
					</div>
				</div>
				
				<!-- /.box-body -->
				
  <div class="box-footer">
    
    <div><hr></div>

    <ul class="mailbox-attachments clearfix uploadedList">
    </ul>
    <button type="submit" class="btn btn-warning" id="modifyBtn">답변달기</button>
    <button type="submit" class="btn btn-danger" id="removeBtn">삭제</button>
    <button type="submit" class="btn btn-primary" id="goListBtn">리스트로</button>
  </div>

			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>  
	
	
</section>
<!-- /.content -->


<script>
$(document).ready(function(){
var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	/* 수정 클릭 */ 
	$('.btn-warning').on('click',function(){
		formObj.attr("action", "/admin/QnaModify");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	/* 삭제 클릭 */ 
	$('.btn-danger').on('click',function(){
		formObj.attr("action", "/deleteQna");
		formObj.submit();
	});  
	/* 리스트 클릭 */ 
	$('.btn-primary').on('click',function(){
		self.location = "/Qnalist";
	});
})
</script>




<%@include file="../admin/include/footer.jsp" %>



