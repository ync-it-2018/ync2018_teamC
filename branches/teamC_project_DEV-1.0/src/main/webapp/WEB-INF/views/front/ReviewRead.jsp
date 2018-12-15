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
<body class="animsition">
   
 	<!-- header -->
   <%@ include file="include/header.jsp" %>  

  
	<!-- cart -->
   <%@ include file="include/cart.jsp" %>


   <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/resources/front/images/bg-01.jpg');">
      <h2 class="ltext-105 cl0 txt-center">
         Review
      </h2>
   </section>   


   <!-- Content page -->
   <section class="bg0 p-t-104 p-b-116">
      <div class="container">
      
   		<div class="row" >
		<!-- left column -->
		<div style="margin : 0 auto; width:80%;">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">상세 후기</h3><br><br>
				</div>
				<hr>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='nCode' value="${list.rNum}"> 
					<input type='hidden' name='page' value="${cri.page}"> 
					<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>
				<div class="row">
					<div class="hov-img0 col-md-6">
	                     <img src="${list.pImageSrc}" alt="IMG">
	                     <!-- 이벤트 사진 -->
	                </div>
	                
		            <div class="col-md-6" style="margin-top:50px;">    
					<table style="margin : 0 auto; ">
			         <tr>
			         	<td >
			         		<label for="title" style="width:50px; margin-right:30px;"><b>제목</b></label> 
			         		<br>
			         	</td>
			         	<td>
			         		<input style="width: 60%; border: 1px solid lightgray;"
			            type="text" name="rTitle" value="${list.rTitle}" readonly="readonly"> 
			            <br> 
			         	</td>
			         </tr>
			         <tr>
			         	<td >
			         		<label for="title" style="width:100%;"><b>작성자</b></label> 
			         		<br>
			         	</td>
			         	<td>
			         		<input style="width: 60%; border: 1px solid lightgray;"
			            type="text" name="mId" value="${list.mId}" readonly="readonly"> 
			            <br> 
			         	</td>
			         </tr>
			         <tr>
			         	<td >
			         		<label for="title" ><b>상품명</b></label> 
			         		<br>
			         	</td>
			         	<td>
			         		<input style="width: 80%; border: 1px solid lightgray;"
			            type="text" name="pName" value="${list.pName}" readonly="readonly"> 
			            <br> 
			         	</td>
			         </tr>
		         
			          <tr>
			         	<td>
			         		<label for="content" ><b>내용</b></label>
			         	</td>
			         	<td>
			         		 <input style="width: 500px; height: 200px; border: 1px solid lightgray;"
			            type="text" name="pCode" value="${list.rContents}" readonly="readonly"> 
			            <br> 
			         	</td>
					</tr>  
		         </table>
		         </div>
				</div>
                
			  <div class="box-footer">
			    
			    <div><hr></div>
			
			    <ul class="mailbox-attachments clearfix uploadedList">
			    </ul>
			    <button type="submit" class="btn btn-warning" onclick="history.go(-1);" id="goListBtn" style="float:right;">GO LIST </button>
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