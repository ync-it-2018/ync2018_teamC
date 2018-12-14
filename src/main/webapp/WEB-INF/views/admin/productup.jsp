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
					<h3 class="box-title">상품등록</h3>
				</div>
				<!-- /.box-header -->
				
				<form role="form" id="registerForm" name="form" enctype="meltipart/from-data" method="POST">
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">상품번호</label> <input type="text"
								name='pCode' class="form-control" placeholder="상품번호">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">상품명</label> <input type="text"
								name='pName' class="form-control" placeholder="상품명">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">메인 구분</label> <input type="text"
								name='pMain' class="form-control" placeholder="ex)베스트,신상,추천,이벤트...">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">판매가</label> <input type="text"
								name='price' class="form-control" placeholder="판매가">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">세일가격</label> <input type="text"
								name='salePrice' class="form-control" placeholder="세일가격">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">재고</label> <input type="text"
								name='stock' class="form-control" placeholder="재고">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">적립률</label> <input type="text"
								name='pPoint' class="form-control" placeholder="적립률">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">상품설명</label>
							<textarea class="form-control" name="pDetail" rows="5"
								placeholder="상품 설명"></textarea>
						</div>		
						<div class="form-group">
							<label for="exampleInputEmail1">대분류</label> <input type="text"
								name='pBig' class="form-control" placeholder="대분류">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">중분류</label> <input type="text"
								name='pMiddle' class="form-control" placeholder="중분류">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">소분류</label> <input type="text"
								name='pSmall' class="form-control" placeholder="소분류">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">사이즈</label> <input type="text"
								name='pSize' class="form-control" placeholder="사이즈">
						</div>
						
					<!-- 	<div class="form-group">
							<label for="exampleInputEmail1">파일 업로드</label>
							<div class="fileDrop"></div>
							<input type='file' name='files'>
							<input type='file' name='files'>
							<input type='file' name='files'>
						</div> -->
					</div>
					
					<!-- /.box-body -->

					<div class="box-footer">
					
					<div>
							<hr>
						</div>
				
						<ul class="mailbox-attachments clearfix uploadedList">
						</ul>
                     
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
   
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullFileName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
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
			  
			  console.log("-----------------");
			  console.log(fileInfo)
			  
			  var html = template(fileInfo);
			  
			  console.log("hTML............");
			  console.log(html);
			  
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

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		console.log(formObj);

		/* 등록 클릭 */
		$('.btn-primary').on('click', function() {
			formObj.submit();
		});
	});
</script>

<%@include file="../admin/include/footer.jsp"%>
