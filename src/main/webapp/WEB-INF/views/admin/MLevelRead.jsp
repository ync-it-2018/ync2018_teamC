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
					<h3 class="box-title">Member Level</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='nNum' value="${list.lCode}"> 
					<input type='hidden' name='page' value="${cri.page}"> 
					<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>
				
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">LEVEL_CODE</label> 
						<input type="text" name='lCode' class="form-control" value="${list.lCode}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">NAME</label> 
						<input type="text" name='lName' class="form-control" value="${list.lName}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">POINT</label>
						<textarea class="form-control" name='lPoint' rows="3"
							readonly="readonly">${list.L_POINT}</textarea>
					</div>
				</div>
				
				<!-- /.box-body -->
				
  <div class="box-footer">
    
    <div><hr></div>

    <ul class="mailbox-attachments clearfix uploadedList">
    </ul>
    <button type="submit" class="btn btn-warning" id="modifyBtn">Modify</button>
    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
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
	/* update 클릭 */ 
	$('#modifyBtn').on('click',function(){
		formObj.attr("action", "/admin/QmaModify");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	/* 삭제 클릭 */ 
	$('#removeBtn').on('click',function(){
		formObj.attr("action", "/admin/QnaRemove");
		formObj.submit();
	});  
	/* 리스트 클릭 */ 
	$('#goListBtn').on('click',function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/admin/Qnalist");
		formObj.submit();
	});
})
</script>




<%@include file="../admin/include/footer.jsp" %>



