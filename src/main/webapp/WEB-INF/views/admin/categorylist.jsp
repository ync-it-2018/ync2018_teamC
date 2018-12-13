<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../admin/include/header.jsp" %>
<!-- Main content -->
<section class="content">
   <div class="row">
      <!-- left column -->


      <div class="col-md-12">
         <!-- general form elements -->
         <div class='box'>
            <div class="box-header with-border">
               <h3 class="box-title">Big Category</h3>
            </div>


            <div class='box-body'>

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
         </div>


         <div class="box">
            <div class="box-header with-border">
               <h3 class="box-title">LIST PAGING</h3>
            </div>
            <div class="box-body">
            <form id="categoryForm" name="categoryForm" method="POST">
               <table class="table table-bordered">
                  <tr>
                     <th style="width: 150px">대분류 코드</th>
                     <th>대분류</th>
                  </tr>

                  <c:forEach items="${list}" var="CategoryBigVO">

                     <tr>
                        <td>${CategoryBigVO.pBig}</td>
                        <td><a href='' onClick='fn_view(${CategoryBigVO.pBig})'><c:out value="${CategoryBigVO.pBigName}"/></a></td>
                     </tr>

                  </c:forEach>

               </table>
               </form>
            </div>
            
            
            <%-- <form role="form" id="form" name="form" enctype="meltipart/from-data" method="POST">
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
				</form> --%>
            <!-- /.box-body -->


            <div class="box-footer">

               <div class="text-center">
                  <ul class="pagination">

                     <c:if test="${pageMaker.prev}">
                        <li><a
                           href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
                     </c:if>

                     <c:forEach begin="${pageMaker.startPage }"
                        end="${pageMaker.endPage }" var="idx">
                        <li
                           <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
                           <a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
                        </li>
                     </c:forEach>

                     <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                        <li><a
                           href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
                     </c:if>

                  </ul>
               </div>

            </div>
            <!-- /.box-footer-->
         </div>
      </div>
      <!--/.col (left) -->

   </div>
   <!-- /.row -->
</section>
<!-- /.content -->


<script>
   var result = '${msg}';

   if (result == 'SUCCESS') {
      alert("처리가 완료되었습니다.");
      location.replace(self.location);
   }
</script>

<script>
   $(document).ready(
         function() {

            $('#searchBtn').on(
                  "click",
                  function(event) {

                     self.location = "list"
                           + '${pageMaker.makeQuery(1)}'
                           + "&searchType="
                           + $("select option:selected").val()
                           + "&keyword=" + $('#keywordInput').val();

                  });

            $('#newBtn').on("click", function(evt) {

               self.location = "categorybigRegister";

            });

         });
</script>

<script>
function fn_view(pBig){
    
    var form = document.getElementById("categoryForm");
    var url = "<c:url value='/categorybigRead'/>";
    url = url + "?pBig=" + pBig;
    
    form.action = url;    
    form.submit(); 
}
</script>

<%@include file="../admin/include/footer.jsp" %>