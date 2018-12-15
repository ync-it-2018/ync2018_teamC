<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
   <title>Review</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->   
   <link rel="icon" type="image/png" href="/resources/front/images/icons/favicon.png"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/animate/animate.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/select2/select2.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/css/util.css">
   <link rel="stylesheet" type="text/css" href="/resources/front/css/main.css">
<!--===============================================================================================-->
</head>
<style>  
body { background: #fff; }
.bluetop {
  border-collapse: collapse;
  border-top: 3px solid #ffc851;
}  
.bluetop th {
  color: #636262;
  background: #ffe789;
  text-align : center;
}
.bluetop th, .bluetop td {
  padding: 10px;
  border: 1px solid #ddd;
}
.bluetop th:first-child, .bluetop td:first-child {
  border-left: 0;
}
.bluetop th:last-child, .bluetop td:last-child {
  border-right: 0;
}
</style>
<body class="animsition">
   
  <!-- header -->
   <%@ include file="include/header.jsp" %>  

   
	<!-- cart -->
   <%@ include file="include/cart.jsp" %>


   <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/resources/front/images/sd.jpg');">
      <h2 class="ltext-105 cl0 txt-center">
         Event
      </h2>
   </section>   


   <!-- Content page -->
   <div style="margin-left:80%;">
   	<a href="/write_review">
   		<button type="button" id="regi" style="border:1px solid lightgray; background-color: white; padding: 14px 20px;
           border-radius: 10px; width: 120px; margin-top:20px;">후기작성</button>
    </a>
   </div>
   <section class="bg0 p-t-75 p-b-120">
      <div id="a"   style="text-align:center; margin-top:-50px;">
         <!-- 리뷰 반복 구문 -->
         <form id="reviewForm" name="reviewForm" method="POST" >
         <div id="b" style="display : inline-block;">
         <table class="bluetop"> 
	         <tr>
				<th style="width: 100px;"></th>
				<th style="width: 40%;">TITLE</th>
				<th style="width: 20%;">USER</th>
				<th style="width: 30%;">DATE</th>
			</tr>
         <c:forEach items = "${reviewList}" var="ReviewVO">
        	 <tr>
				<td>${ReviewVO.rNum}</td>
				<td><a href='/review/ReviewRead?rNum=${ReviewVO.rNum}'>${ReviewVO.rTitle}</a></td>
				<td>${ReviewVO.mId}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${ReviewVO.rDate}" /></td>
			 </tr>
         </c:forEach>
         </table>
         </div>
         </form>
      </div>
      
       <div class="box-footer" style="margin-left:50%; margin-top:5%;">

               <div class="text-center">
                  <ul class="pagination" style="margin:10px;">

                     <c:if test="${pageMaker.prev}">
                        <li  ><a
                           href="reviewList${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
                     </c:if>

                     <c:forEach begin="${pageMaker.startPage }"
                        end="${pageMaker.endPage }" var="idx">
                        <li
                           <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
                           <a href="reviewList${pageMaker.makeSearch(idx)}">${idx}</a>
                        </li>
                     </c:forEach>

                     <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                        <li><a
                           href="reviewList${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
                     </c:if>

                  </ul>
               </div>
            </div>
   </section>   
   

     <!-- Footer -->
   <%@ include file="include/footer.jsp" %>
      


   <!-- Back to top -->
   <div class="btn-back-to-top" id="myBtn">
      <span class="symbol-btn-back-to-top">
         <i class="zmdi zmdi-chevron-up"></i>
      </span>
   </div>

<!--===============================================================================================-->   
<!-- 리뷰 상세페이지로 이동하는 스크립트 -->
<script>
function fn_view(nCode){
    
    var form = document.getElementById("reviewForm");
    var url = "<c:url value='/ReviewRead'/>";
    url = url + "?rNum=" + rNum;
    
    form.action = url;    
    form.submit(); 
}
<!--===============================================================================================-->   
</script>
   <script src="/resources/front/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/bootstrap/js/popper.js"></script>
   <script src="/resources/front/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/select2/select2.min.js"></script>
   <script>
      $(".js-select2").each(function(){
         $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
         });
      })
   </script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
   <script>
      $('.js-pscroll').each(function(){
         $(this).css('position','relative');
         $(this).css('overflow','hidden');
         var ps = new PerfectScrollbar(this, {
            wheelSpeed: 1,
            scrollingThreshold: 1000,
            wheelPropagation: false,
         });

         $(window).on('resize', function(){
            ps.update();
         })
      });
   </script>
<!--===============================================================================================-->
   <script src="/resources/front/js/main.js"></script>
   
</body>
</html>>