<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

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
				
				<form role="form" id="form" name="form" enctype="meltipart/from-data"method="post">
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">상품번호</label> <input type="text"
								name='p_code' class="form-control" placeholder="상품번호">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">상품명</label> <input type="text"
								name='p_name' class="form-control" placeholder="상품명">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">판매가</label> <input type="text"
								name='price' class="form-control" placeholder="판매가">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">세일가격</label> <input type="text"
								name='sale_price' class="form-control" placeholder="세일가격">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">재고</label> <input type="text"
								name='stock' class="form-control" placeholder="재고">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">적립률</label> <input type="text"
								name='p_point' class="form-control" placeholder="적립률">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">상품설명</label>
							<textarea class="form-control" name="p_detail" rows="3"
								placeholder="상품 설명"></textarea>
						</div>
						<%-- <div class='box-body'>
					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							Title</option>
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							Content</option>
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							Writer</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							Title OR Content</option>
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
							Content OR Writer</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
							Title OR Content OR Writer</option>
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button id='searchBtn'>Search</button>
					<button id='newBtn'>New Board</button>
				</div> --%>						
						<div class="form-group">
							<label for="exampleInputEmail1">대분류</label> <input type="number"
								min="0" max="" name='p_big' class="form-control" placeholder="대분류">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">중분류</label> <input type="number"
								min="0" max="" name='p_middle' class="form-control" placeholder="중분류">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">소분류</label> <input type="number"
								min="0" max="" name='p_small' class="form-control" placeholder="소분류">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">이벤트번호</label> <input type="number"
								min="0" max="" name='e_num' class="form-control" placeholder="이벤트번호">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">사이즈</label> <input type="text"
								name='size' class="form-control" placeholder="사이즈">
						</div>
						
						
						<%-- <div class="form-group">
							<label for="exampleInputEmail1">Writer</label>
							<input type="text" name="writer" class="form-control"  value="${login.uids }" readonly>
						</div> --%>
						
						<div class="form-group">
							<label for="exampleInputEmail1">파일 업로드</label>
							<div class="fileDrop"></div>
							<!-- <input type='file' name='files'>
							<input type='file' name='files'>
							<input type='file' name='files'> -->
						</div>
					</div>
					
					
					<!-- <h2>상품등록</h2>
					<form id="form1" name="form1" enctype="meltipart/from-data" method="post">
						<table border="1">
							<tr>
								<td>상품명</td>
								<td><input type="text" name="productName" id="productName"></td>
							</tr>
							<tr>
								<td>상품명</td>
								<td><input type="text" name="productName" id="productName"></td>
							</tr>
							<tr>
								<td>상품명</td>
								<td><input type="text" name="productName" id="productName"></td>
							</tr>
							<tr>
								<td>상품명</td>
								<td><input type="text" name="productName" id="productName"></td>
							</tr>
							<tr>
								<td colspan="2" align="center">								
									<input type="button" value="등록" id="addBtn">
									<input type="button" value="목록" id="listBtn">
								</td>
							</tr>
						</table>
					</form> -->
					
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
$(document).ready(function(){
	$("#addBtn").click(function(){
		var p_code = $("p_code").val();
		var p_name = $("p_name").val();
		var price = $("price").val();
		var stock = $("stock").val();
		
		if(p_code == ""){
			alert("상품코드를 입력해주세요");
			p_code.focus();
		} else if (p_name == ""){
			alert("상품명을 입력해주세요");
			p_name.focus();
		} else if (price == ""){
			alert("상품 가격을 입력해주세요");
			price.focus();
		} else if (stock == ""){
			alert("상품 재고를 입력해주세요");
			stock.focus();
		}
		
		//상품 정보 전송
		document.form.action = "${path}/shop/product/insert.do";
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
