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
               <h3 class="box-title">Notice</h3>
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


<<<<<<< .mine
         <div class="box">
            <div class="box-header with-border">
               <h3 class="box-title">LIST PAGING</h3>
            </div>
            <div class="box-body">
            <form id="noticeForm" name="noticeForm" method="POST">
               <table class="table table-bordered">
                  <tr>
                     <th style="width: 10px">N_CODE</th>
                     <th>TITLE</th>
                     <th style="width: 200px">DATE</th>
                     <!-- <th style="width: 40px">VIEWCNT</th> -->
                  </tr>

                  <c:forEach items="${serverTime}" var="AnoticeVO">

                     <tr>
                        <td>${AnoticeVO.nCode}</td>
                        <%-- <td>
                           <input type="hidden" id="nCode" value="${AnoticeVO.nCode}">
                           <a href='/aNoticeRead${pageMaker.makeSearch(pageMaker.cri.page) }&nCode=${AnoticeVO.nCode}'>
                           ${AnoticeVO.nTitle}
                        </a></td> --%>
                        <td><a href='#' onClick='fn_view(${AnoticeVO.nCode})'><c:out value="${AnoticeVO.nTitle}"/></a></td>
                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${AnoticeVO.nUpDate}" /></td>
                        <%-- <td><span class="badge bg-red">${AnoticeVO.nViewCount}</span></td> --%>
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

                     self.location = "list"
                           + '${pageMaker.makeQuery(1)}'
                           + "&searchType="
                           + $("select option:selected").val()
                           + "&keyword=" + $('#keywordInput').val();

                  });

            $('#newBtn').on("click", function(evt) {

               self.location = "aNoticeRegister";

            });

         });
</script>

<script>
function fn_view(nCode){
    
    var form = document.getElementById("noticeForm");
    var url = "<c:url value='/aNoticeRead'/>";
    url = url + "?nCode=" + nCode;
    
    form.action = url;    
    form.submit(); 
}
</script>


<!-- <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click",function(e){
                e.preventDefault();
                fn_openBoardList();
            })
            $("#modify").on("click",function(e){
                e.preventDefault();
                fn_openBoardModify();
            })
        })
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/admin/aNotice'/>");
            comSubmit.submit();
        }
        function fn_openBoardModify(){
            var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/admin/aNoticeModify'/>");
            comSubmit.addParam("IDX",idx);
            comSubmit.submit();
        }
    </script>
 -->

<%@include file="../admin/include/footer.jsp" %>