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
					<h3 class="box-title">READ MEMBER</h3><hr>
				</div>
				<!-- /.box-header -->
				<form role="form" method="post">
			<!-- 앞에 소문자로 받아야됨 UserVO -> userVO -->
					<input type="hidden" name="mId" value="${userVO.mId}"> 

				</form>
			<div style="text-align:center;">
				<div class="box-body" style="display:inline-block;">
					<div>
					<div class="form-group">
						<label for="exampleInputEmail1">USER_ID</label> 
						<input type="text" name="mId" class="form-control" value="${userVO.mId}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">USER_PWD</label>
						<input type="text" name="mPwd" class="form-control" value="${userVO.mPwd}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">USER_NAME</label> 
						<input type="text" name="mName" class="form-control" value="${userVO.mName}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">USER_ADDRESS</label> 
						<input type="text" name="mAddress" class="form-control" value="${userVO.mAddress}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">USER_TEL</label> 
						<input type="text" name="mTel" class="form-control" value="${userVO.mTel}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">USER_EMAIL</label> 
						<input type="text" name="mEmail" class="form-control" value="${userVO.mEmail}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">LEVEL</label> 
						<input type="text" name="mLevelCode" class="form-control" value="${userVO.mLevelCode}"
							readonly="readonly"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">POINT</label> 
						<input type="text" name="mPoint" class="form-control" value="${userVO.mPoint}"
							readonly="readonly"> 
					</div>
					</div>
				</div>
			</div>
				<!-- /.box-body -->
				
  <div class="box-footer">
  	<button type="submit" class="btn btn-danger" style="float:right;">DELETE</button>
    <button type="submit" class="btn btn-primary" onclick="history.go(-1);" style="float:right;">GO LIST</button> 
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
	/* 삭제 클릭 */ 
	$('.btn-danger').on('click',function(){
		formObj.attr("action", "/admin/deleteMember");
		formObj.submit();
	});  
	
});
</script>


<%@include file="../admin/include/footer.jsp" %>



