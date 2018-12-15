<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../admin/include/header.jsp" %>
<!-- Main content -->
<section class="content">
   <div class="row">
      <!-- left column -->


      <div class="col-md-12">
         <!-- general form elements -->
         <div class='box'>
            <div class="box-header with-border">
               <h3 class="box-title">Q&A List</h3>
            </div>


            <div class='box-body'>

               <select name="searchType">
                  <option value="n"
                     <c:out value="${cri.searchType == null?'selected':''}"/>>
                     ---</option>
                  <option value="q"
                     <c:out value="${cri.searchType eq 'q'?'selected':''}"/>>
                     Q_CATEGORY_NAME</option>
                  <option value="m"
                     <c:out value="${cri.searchType eq 'm'?'selected':''}"/>>
                     M_ID</option>
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
                <form id="QnaForm" name="QnaForm" method="POST">
               <table class="table table-bordered">
                  <tr>
                     <th style="width: 10px">Q_NUM</th>
                     <th>Q_CATEGORY_NUM</th>
                     <th>Q_TITLE</th>
                     <th>Q_UP_DATE</th>
                     <th>M_ID</th>
                     <th style="width: 40px">Q_CHECK</th>
                  </tr>

                  <c:forEach items="${qnalist}" var="QnaVO">

                     <tr>
                        <td>${QnaVO.qNum}</td>
                        <td>${QnaVO.qCategoryNum}</td>
                        <td><a href='#' onClick='fn_view(${QnaVO.qNum})'><c:out value="${QnaVO.qTitle}"/></a></td>
                        <td>${QnaVO.mID}</td>
                        <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
                              value="${QnaVO.qUpDate}" /></td>
                        <td><span class="badge bg-red">${QnaVO.qCheck}</span></td>
                     </tr>

                  </c:forEach>

               </table>
               </form>
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

                     self.location = "qnalist"
      				       + '${pageMaker.makeQuery(1)}'
                           + "&searchType="
                           + $("select option:selected").val()
                           + "&keyword=" + $('#keywordInput').val();
                  });

            $('#newBtn').on("click", function(evt) {

               self.location = "/QnaRegister";

            });

         }); 
</script>

<script>
function fn_view(qNum){
    
    var form = document.getElementById("QnaForm");
    var url = "<c:url value='/QnaRead'/>";
    url = url + "?qNum=" + qNum;
    
    form.action = url;    
    form.submit(); 
}
</script>



<%@include file="../admin/include/footer.jsp" %>