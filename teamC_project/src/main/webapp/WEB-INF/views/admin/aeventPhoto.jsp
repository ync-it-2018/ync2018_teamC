<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="include/header.jsp" %>

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
					<h3 class="box-title">이벤트 사진 관리</h3><br><br>
				</div>
				<!-- /.box-header -->
				
				<form class="modal-content" id="eventForm" method="POST" action="/event/eventPhoto.do">
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">이벤트 코드(숫자)</label> 
							<input type="text"
								name="eNum" class="form-control" placeholder="상품코드(숫자, 이벤트 리스트 참고)">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">이벤트 사진 경로</label> 
							<input type="text"
								name="eImageSrc" class="form-control" placeholder="이벤트 사진 경로">
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">이미지 인덱스</label> 
							<input type="text" name="eImageIndex" class="form-control" placeholder="이미지 인덱스(숫자)">
						</div>
						
					</div>
					
					<div class="box-footer">
						<div>
							<hr>
						</div>
				
						<button type="submit" class="btn btn-primary" style="float:right;" >등록</button>
				
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

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" target="_blank" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
  </div>
</li>                
</script>    


<script>
$(document).ready(function(){
	$("#addBtn").click(function(){
		var E_NUM = $("E_NUM").val();
		var E_IMAGE_SRC = $("E_NAME").val();
		var E_IMAGE_INDEX = $("E_DETAIL").val();
		
		if(E_NUM == ""){
			alert("상품코드를 입력해주세요");
			E_NUM.focus();
		} else if (E_IMAGE_SRC == ""){
			alert("상품명을 입력해주세요");
			E_IMAGE_SRC.focus();
		} else if (E_IMAGE_INDEX == ""){
			alert("상품 가격을 입력해주세요");
			E_IMAGE_INDEX.focus();
		} 
		//상품 정보 전송
		document.form.action  "/event/eventPhoto.do" ;
		document.form.submit();
	});
	
	//상품 목록 이동
	$("#listBtn").click(function(){
		location.href = '${path}/shop/product/list.do'
	});
	
	
	$('#searchBtn').on("click",function(event) {
		self.location = "list"
						+ '${pageMaker.makeQuery(1)}'
						+ "&searchType="
						+ $("select option:selected").val()
						+ "&keyword=" + $('#keywordInput').val();

	});

	$('#newBtn').on("click", function(evt) {
		self.location = "register";
	});
});

</script>

<script>
//이벤트 사진 업로드
var template = Handlebars.compile($("#template").html());

$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	var formData = new FormData();
	
	formData.append("file", file);	
	
	
	$.ajax({
		url: '/uploadAjax',
		data: formData,
		dataType:'text',
		processData: false,
		contentType: false,
		type: 'POST',
		success: function(data){
			var fileInfo = getFileInfo(data);
			var html = template(fileInfo);
			  
			$(".uploadedList").append(html);
		}
	});	
});


$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});
	
	that.append(str);

	that.get(0).submit();
});

$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
	event.preventDefault();
	
	var that = $(this);
	
	$.ajax({
		url:"/deleteFile",
		type:"post",
		data: {fileName:$(this).attr("href")},
		dataType:"text",
		success:function(result){
			if(result == 'deleted'){
				that.parents().eq(1).remove();
			}
		},
		error:function(jqXHR, textStatus, errorThrown){
			//console.log("textStatus Code : " + textStatus);
			alert('첨부파일 삭제 중 오류가 발생하였습니다.');
		}
	});
});
</script>

<%@include file="../include/footer.jsp"%>
