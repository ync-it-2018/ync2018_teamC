<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
   <title>Contact</title>
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
	th {
	  background-color: #ddbe7e;
	  color: white;
	}
	th, td {
	  padding: 15px;
	  text-align: left;
	  border-bottom: 1px solid #ddd;
	}
	tr:hover {background-color: #f5f5f5;}
</style>

<body class="animsition">
   
	<!-- header -->
   <%@ include file="include/header.jsp" %>  

   <!-- cart -->
   <%@ include file="include/cart.jsp" %>


   <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/resources/front/images/bg-01.jpg');">
      <h2 class="ltext-105 cl0 txt-center">
         Contact
      </h2>
   </section>   


   <!-- Content page -->
   <section class="bg0 p-t-104 p-b-116" >
      <div class="container" style="text-align:center;">
      
      	<div class="box-body" style="display:inline-block;">
      		<form id="noticeForm" name="noticeForm" method="POST" >
					<table> 
						<tr>
							<th style="width: 10%;">N_CODE</th>
							<th style="width: 60%;">TITLE</th>
							<th style="width: 30%;">DATE</th>
						</tr>

						<c:forEach items="${fclist}" var="AnoticeVO">
							<tr>
								<td>${AnoticeVO.nCode}</td>
								<td><a href='#' onClick='fn_view(${AnoticeVO.nCode})'>
								<c:out value="${AnoticeVO.nTitle}"/></a></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${AnoticeVO.nUpDate}" /></td>
							</tr>
						</c:forEach>

					</table>
					</form>
				</div>
				
				<div class="box-footer" >

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
      			<br><br>
      
      
      
          <div class="flex-w flex-tr">
            <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
               <form>
                  <h4 class="mtext-105 cl2 txt-center p-b-30">
                     Send Us A Message
                  </h4>

                  <div class="bor8 m-b-20 how-pos4-parent">
                     <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="email" placeholder="Your Email Address">
                     <img class="how-pos4 pointer-none" src="/resources/front/images/icons/icon-email.png" alt="ICON">
                  </div>

                  <div class="bor8 m-b-30">
                     <textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" placeholder="How Can We Help?"></textarea>
                  </div>

                  <button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                     Submit
                  </button>
               </form>
            </div>

            <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
               <div class="flex-w w-full p-b-42">
                  <span class="fs-18 cl5 txt-center size-211">
                     <span class="lnr lnr-map-marker"></span>
                  </span>

                  <div class="size-212 p-t-2">
                     <span class="mtext-110 cl2">
                        Address
                     </span>

                     <p class="stext-115 cl6 size-213 p-t-18">
                        Coza Store Center 8th floor, 379 Hudson St, New York, NY 10018 US
                     </p>
                  </div>
               </div>

               <div class="flex-w w-full p-b-42">
                  <span class="fs-18 cl5 txt-center size-211">
                     <span class="lnr lnr-phone-handset"></span>
                  </span>

                  <div class="size-212 p-t-2">
                     <span class="mtext-110 cl2">
                        Lets Talk
                     </span>

                     <p class="stext-115 cl1 size-213 p-t-18">
                        +1 800 1236879
                     </p>
                  </div>
               </div>

               <div class="flex-w w-full">
                  <span class="fs-18 cl5 txt-center size-211">
                     <span class="lnr lnr-envelope"></span>
                  </span>

                  <div class="size-212 p-t-2">
                     <span class="mtext-110 cl2">
                        Sale Support
                     </span>

                     <p class="stext-115 cl1 size-213 p-t-18">
                        contact@example.com
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>   
   
   



   <!-- Footer -->
   <footer class="bg3 p-t-75 p-b-32">
      <div class="container">
         <div class="row">
            <div class="col-sm-6 col-lg-3 p-b-50">
               <h4 class="stext-301 cl0 p-b-30">
                  Categories
               </h4>

               <ul>
                  <li class="p-b-10">
                     <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                        Women
                     </a>
                  </li>

                  <li class="p-b-10">
                     <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                        Men
                     </a>
                  </li>

                  <li class="p-b-10">
                     <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                        Shoes
                     </a>
                  </li>

                  <li class="p-b-10">
                     <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                        Watches
                     </a>
                  </li>
               </ul>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
               <h4 class="stext-301 cl0 p-b-30">
                  Help
               </h4>

               <ul>
                  <li class="p-b-10">
                     <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                        Track Order
                     </a>
                  </li>

                  <li class="p-b-10">
                     <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                        Returns 
                     </a>
                  </li>

                  <li class="p-b-10">
                     <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                        Shipping
                     </a>
                  </li>

                  <li class="p-b-10">
                     <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                        FAQs
                     </a>
                  </li>
               </ul>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
               <h4 class="stext-301 cl0 p-b-30">
                  GET IN TOUCH
               </h4>

               <p class="stext-107 cl7 size-201">
                  Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
               </p>

               <div class="p-t-27">
                  <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                     <i class="fa fa-facebook"></i>
                  </a>

                  <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                     <i class="fa fa-instagram"></i>
                  </a>

                  <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                     <i class="fa fa-pinterest-p"></i>
                  </a>
               </div>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
               <h4 class="stext-301 cl0 p-b-30">
                  Newsletter
               </h4>

               <form>
                  <div class="wrap-input1 w-full p-b-4">
                     <input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
                     <div class="focus-input1 trans-04"></div>
                  </div>

                  <div class="p-t-18">
                     <button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
                        Subscribe
                     </button>
                  </div>
               </form>
            </div>
         </div>

         <div class="p-t-40">
            <div class="flex-c-m flex-w p-b-18">
               <a href="#" class="m-all-1">
                  <img src="/resources/front/images/icons/icon-pay-01.png" alt="ICON-PAY">
               </a>

               <a href="#" class="m-all-1">
                  <img src="/resources/front/images/icons/icon-pay-02.png" alt="ICON-PAY">
               </a>

               <a href="#" class="m-all-1">
                  <img src="/resources/front/images/icons/icon-pay-03.png" alt="ICON-PAY">
               </a>

               <a href="#" class="m-all-1">
                  <img src="/resources/front/images/icons/icon-pay-04.png" alt="ICON-PAY">
               </a>

               <a href="#" class="m-all-1">
                  <img src="/resources/front/images/icons/icon-pay-05.png" alt="ICON-PAY">
               </a>
            </div>

            <p class="stext-107 cl6 txt-center">
               <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

            </p>
         </div>
      </div>
   </footer>


   <!-- Back to top -->
   <div class="btn-back-to-top" id="myBtn">
      <span class="symbol-btn-back-to-top">
         <i class="zmdi zmdi-chevron-up"></i>
      </span>
   </div>

<!--===============================================================================================-->   
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
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
   <script src="/resources/front/js/map-custom.js"></script>
<!--===============================================================================================-->
   <script src="/resources/front/js/main.js"></script>
   
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
    var url = "<c:url value='/NoticeRead'/>";
    url = url + "?nCode=" + nCode;
    
    form.action = url;    
    form.submit(); 
}
</script>

</body>
</html>