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
					<h3 class="box-title">READ EVENT</h3>
				</div>
				<!-- /.box-header -->
<!-- 앞에 소문자로 받아야됨 AnoticeVO -> anoticeNO -->
				<form role="form" method="post">

					<input type='hidden' name='eNum' value="${eventVO.eNum}"> 

				</form>
				
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Title</label> 
						<input type="text" name='eName' class="form-control" value="${eventVO.eName}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="form-control" name="eDetail" rows="3"
							readonly="readonly">${eventVO.eDetail}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Start Date</label> 
						<input type="text" name='eStartdate' class="form-control" value="${eventVO.eStartdate}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">End Date</label> 
						<input type="text" name='eEnddate' class="form-control" value="${eventVO.eEnddate}"
							readonly="readonly"> 
					</div>		
					<div class="form-group">
						<label for="exampleInputEmail1">Link</label> 
						<input type="text" name='eLink' class="form-control" value="${eventVO.eLink}"
							readonly="readonly">
							
						<%-- 링크 달고싶다... --%>
						<%-- <input type="button" value="${eventVO.eLink}" onClick="window.open('${eventVO.eLink}')"> --%>
					</div>
				</div>
				
				<!-- /.box-body -->
				
  <div class="box-footer">
    
    <button type="submit" class="btn btn-warning">Modify</button>
    <button type="submit" class="btn btn-danger">REMOVE</button>
    <button type="submit" class="btn btn-primary">GO LIST </button>
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
		formObj.attr("action", "/admin/aeventModify");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	/* 삭제 클릭 */ 
	$('.btn-danger').on('click',function(){
		formObj.attr("action", "/admin/deleteEvent");
		formObj.submit();
	});  
	/* 리스트 클릭 */ 
	$('.btn-primary').on('click',function(){
		self.location = "/admin/aeventList";
	});
});
</script>


<%@include file="../admin/include/footer.jsp" %>



