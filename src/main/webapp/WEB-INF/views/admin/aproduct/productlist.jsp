<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp" %>

<!-- Main content -->
<section class="content">
   <div class="row">
      <!-- left column -->
      <div class="col-md-12">
         <!-- general form elements -->

         <div class="box">
            <div class="box-header with-border">
               <h3 class="box-title">상품 목록</h3>
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
            
            <div class="box-body">
               
               <table class="table table-bordered">
                  <tr>
                     <th>상품코드</th>
                     <th>카테고리</th>
                     <th>상품명</th>
                     <th>판매가</th>
                     <th>재고</th>
                  </tr>
               
               
               <c:forEach items="${list}" var="productVO">
               
                  <tr>
                     <td>${productVO.P_CODE}</td>
                     <td>
                     <!-- <a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a>-->
                     <a href='/admin/readProduct${pageMaker.makeSearch(pageMaker.cri.page) }&p_code=${productVO.P_CODE}'>${productVO.P_NAME}</a>
                     </td>
                     <td>${productVO.PRICE}</td>
                     <td>${productVO.STOCK}</td>
                  </tr>
               
               </c:forEach>
               
               </table>

            </div>
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
</div>
<!-- /.content-wrapper -->
<form id="jobForm">
  <input type='hidden' name="page" value=${pageMaker.cri.perPageNum}>
  <input type='hidden' name="perPageNum" value=${pageMaker.cri.perPageNum}>
</form>
<script>
   var result = '${msg}';

   if (result == 'SUCCESS') {
      alert("처리가 완료되었습니다.");
   }
   
   /*
   $(".pagination li a").on("click", function(event){
      
      event.preventDefault(); 
      
      var targetPage = $(this).attr("href");
      
      var jobForm = $("#jobForm");
      jobForm.find("[name='page']").val(targetPage);
      jobForm.attr("action","/board/listPage").attr("method", "get");
      jobForm.submit();
   });
   */
   
   $(document).ready(function() {
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

<%@include file="../include/footer.jsp" %>
 
 
  