<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>

<html>
<head>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>

<body>
	<h2>Big Category</h2>

	<form:form method="POST" commandName="customerForm">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>

			<tr>
				<td>Country :</td>
				<td><form:select path="country">
					  <form:option value="NONE" label="--- Select ---" />
					  <form:options items="${countryList}" />
				       </form:select>
                                </td>
				<td><form:errors path="country" cssClass="error" /></td>
			</tr>

			<tr>
				<td colspan="3"><input type="submit" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html> --%>



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
					<h3 class="box-title">카테고리 등록</h3>
				</div>
				<!-- /.box-header -->
				
				<form role="form" id="form" name="form" enctype="meltipart/from-data" method="POST">
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">카테고리 번호</label> 
							<input type="number" name='P_BIG' class="form-control" placeholder="카테고리 번호">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">카테고리명</label> 
							<input type="text" name='P_BIG_NAME' class="form-control" placeholder="카테고리명">
						</div>
						
					</div>
					
					
					<!-- /.box-body -->

					<div class="box-footer">
						<div>
							<hr>
						</div>
				
						<ul class="mailbox-attachments clearfix uploadedList">
						</ul>
				
						<button type="submit" class="btn btn-primary">Submit</button>
				
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

<%@include file="../admin/include/footer.jsp"%>

