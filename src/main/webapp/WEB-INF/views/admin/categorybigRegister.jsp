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
					<h3 class="box-title">카테고리 목록</h3>
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

            </div>
         </div> --%>
				
				<!-- /.box-header -->
				
				<form role="form" id="form" name="form" enctype="meltipart/from-data" method="POST">
					<div class="box-body">
						<div class="form-group">
							<label>대분류</label> 
							<select class="category1">
								<option value="">전체</option>
								<option value="">${CategoryBigVO.pBig}</option>
							</select>
							
							<label>중분류</label> 
							<select class="category2">
								<option value="${CategoryBigVO.pBigName}">전체</option>
							</select>
							
							<label>소분류</label> 
							<select class="category3">
								<option value="${AnoticeVO.nCode}">전체</option>
							</select>
						</div>
						<!-- <div class="form-group">
							<label for="exampleInputEmail1">카테고리명</label> 
							<input type="text" name='P_BIG_NAME' class="form-control" placeholder="카테고리명">
						</div> -->
						
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

<script>
// 컨트롤러에서 데이터 받기
var jsonData = JSON.parse('${category}');
console.log(jsonData);

var cate1Arr = new Array();
var cate1Obj = new Object();

// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
for(var i = 0; i < jsonData.length; i++) {
 
 if(jsonData[i].pBig == "1") {
  cate1Obj = new Object();  //초기화
  cate1Obj.pBig = jsonData[i].pBig;
  cate1Obj.pBigName = jsonData[i].pBigName;
  cate1Arr.push(cate1Obj);
 }
}

// 1차 분류 셀렉트 박스에 데이터 삽입
var cate1Select = $("select.category1")

for(var i = 0; i < cate1Arr.length; i++) {
 cate1Select.append("<option value='" + cate1Arr[i].pBig + "'>"
      + cate1Arr[i].pBigName + "</option>"); 
}


$(document).on("change", "select.category1", function(){

	 var cate2Arr = new Array();
	 var cate2Obj = new Object();
	 
	 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
	 for(var i = 0; i < jsonData.length; i++) {
	  
	  if(jsonData[i].pBig == "2") {
	   cate2Obj = new Object();  //초기화
	   cate2Obj.pBig = jsonData[i].pBig;
	   cate2Obj.pBigName = jsonData[i].pBigName;
	   //cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;
	   
	   cate2Arr.push(cate2Obj);
	  }
	 }
	 
	 var cate2Select = $("select.category2");

	 for(var i = 0; i < cate2Arr.length; i++) {
	   cate2Select.append("<option value='" + cate2Arr[i].pBig + "'>"
	        + cate2Arr[i].pBigName + "</option>");
	 } 
	});

</script>

<%@include file="../admin/include/footer.jsp"%>

