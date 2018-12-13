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
               <h3 class="box-title">Member List</h3>
            </div>

         </div>


         <div class="box">
            <div class="box-header with-border">
               <h3 class="box-title">LIST PAGING</h3>
            </div>
            <div class="box-body" style="text-align:center;">
            
            <form id="memberForm" name="memberForm" method="POST">
            <div  style="display:inline-block;">
            

             <table id = "ta" class="table table-bordered" style="text-align:center;">
                  <tr style="background-color: #9bc8dd;  ">
                     <th style="width: 200px;">회원 ID</th>
                     <th style="width: 150px;">회원 PWD</th>
                     <th style="width: 150px;">회원 이름</th>
                     <!-- <th style="width: 100px;">관리</th> -->
                  </tr>

                  <c:forEach items="${userlist}" var="UserVO">
                     <tr style="background-color: fff6e0;">
                         <td><a href='/admin/MemberRead?mId=${UserVO.mId}'>${UserVO.mId}</a></td>
                        <td>${UserVO.mPwd}</td>
                        <td>${UserVO.mName}</td>
                     </tr>
                  </c:forEach>

               </table>
               </div>
               </form>
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
         </div>
      </div>
   </div>
</section>

<%@include file="../admin/include/footer.jsp" %>