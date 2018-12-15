<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
   <title>About</title>
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
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/resources/front/images/pk3.jpg');">
      <h2 class="ltext-105 cl0 txt-center">
         About
      </h2>
   </section>   


   <!-- Content page -->
   <section class="bg0 p-t-75 p-b-120">
      <div class="container">
         <div class="row p-b-148">
            <div class="col-md-7 col-lg-8">
               <div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
                  <h3 class="mtext-111 cl2 p-b-16">
                     Our Page
                  </h3>

                  <p class="stext-113 cl6 p-b-26">
                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.
                  </p>               
               </div>
            </div>

            <div class="col-11 col-md-5 col-lg-4 m-lr-auto">
               <div class="how-bor1 ">
                  <div class="hov-img0">
                     <img src="/resources/front/images/pk5.jpg" alt="IMG">
                  </div>
               </div>
            </div>
         </div>
         
         <div style="text-align:center;">
           <div class="col-11 col-md-5 col-lg-4 m-lr-auto" style="display:inline-block;">
				<h3 class="mtext-111 cl2 p-b-16">
                    Leader
                  </h3>
	 		 <div style="width:200px; height:150px; margin:23% ">		 
	 		 <img src="/resources/front/images/jinhee.jpg" alt="IMG" width="200px" height="280px">
	 		 <p>김진희</p>
	 		 </div> 
	 		 </div>
	 		</div>
	 		
	 		<div style="text-align:center;">
	 		<div style="padding-top: 100px; display:inline-block;">
	     	  <h3 class="mtext-111 cl2 p-b-16">
                    Member
                  </h3>
	   		<div style="width:200px; height:150px; float:left; margin:40px;">
 				<img src="/resources/front/images/jihea.jpg" alt="IMG" width="200px" height="280px">
	 		 	<p>김지혜</p>
					</div>
				
				<div style="width:200px; height:150px; float:left; margin:40px;">
 				<img src="/resources/front/images/bea.jpg" alt="IMG" width="200px" height="280px">
	 		 	<p>배세희</p>
				</div>
				
				<div style="width:200px; height:150px; float:left; margin:40px;">
 				<img src="/resources/front/images/yunjeong.jpg" alt="IMG" width="200px" height="280px">
	 		 	<p>이윤정</p>
				</div>
				
				<div style="width:200px; height:150px; float:left; margin:40px;">
 				<img src="/resources/front/images/pk5.jpg" alt="IMG" width="200px" height="280px">
	 		 	<p>전유진</p>
				</div>
				
				</div>
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
<!--    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
   <script src="/resources/front/js/map-custom.js"></script> -->
<!--===============================================================================================-->
   <script src="/resources/front/js/main.js"></script>
   
</body>
</html>