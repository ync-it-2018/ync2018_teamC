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

         </div>


         <div class="box">
            <div class="box-header with-border">
               <h3 class="box-title">LIST PAGING</h3>
            </div>
            <div class="box-body" style="text-align:center;">
            
            <form id="categoryForm" name="categoryForm" method="POST">
            <div  style="display:inline-block;">
             <table class="table table-bordered" style="text-align:center;">
                  <tr >
                     <th >대분류 코드</th>
                     <th style="width:150px;">대분류</th>
                  </tr>

                  <c:forEach items="${biglist}" var="CategoryBigVO">
                     <tr>
                        <td>${CategoryBigVO.pBig}</td>
                        <td><a href='/admin/categorybigRead?pBig=${CategoryBigVO.pBig}'>${CategoryBigVO.pBigName}</a></td>
                     </tr>
                  </c:forEach>

               </table>
               </div>
               </form>
               <a href="/admin/categorybigRegister">
               <button class="btn btn-warning" style="float:right;" >
                대분류 추가</button></a>
            </div>
            
            
           
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

                     self.location = "biglist"
                           + '${pageMaker.makeQuery(1)}'
                           + "&searchType="
                           + $("select option:selected").val()
                           + "&keyword=" + $('#keywordInput').val();

                  });

            $('.btn-warning').on("click", function() {

            	self.location = "/admin/categorybigRegister";

             });

         });
</script>

<%@include file="../admin/include/footer.jsp" %>