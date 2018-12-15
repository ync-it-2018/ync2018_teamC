<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@page import="kr.ync.project.domain.UserVO"%>
<%@page import="net.sf.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>Home</title>
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
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/slick/slick.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/css/util.css">
   <link rel="stylesheet" type="text/css" href="/resources/front/css/main.css">
   <link rel="stylesheet" type="text/css" href="/resources/front/vendor/bootstrap/css/bootstrap-grid.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="/resources/front/css/owl.carousel.css">
   <link rel="stylesheet" type="text/css" href="/resources/front/css/owl.carousel.min.css">
   <link rel="stylesheet" type="text/css" href="/resources/front/css/owl.theme.default.css">
   <link rel="stylesheet" type="text/css" href="/resources/front/css/owl.theme.default.min.css">
   <link rel="stylesheet" type="text/css" href="/resources/front/css/owl.theme.green.css">
   <link rel="stylesheet" type="text/css" href="/resources/front/css/owl.theme.green.min.css">
</head>
<style>
   
</style>


   <!-- Header -->
   <%@ include file="include/header.jsp" %>  
   
   
   <!-- cart -->
   <%@ include file="include/cart.jsp" %>
 

   <!-- Slider -->
   <section class="section-slide">
      <div class="wrap-slick1">
         <div class="slick1">
            <div class="item-slick1" style="background-image: url(/resources/front/images/main_puppy07.jpg);">
               <div class="container h-full">
                  <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                     <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
                        <span class="ltext-101 cl2 respon2">
                           Healthy food
                        </span>
                     </div>
                        
                     <div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
                        <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                           NEW SEASON
                        </h2>
                     </div>
                        
                     <div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
                        <a href="/product" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                           Shop Now
                        </a>
                     </div>
                  </div>
               </div>
            </div>

            <div class="item-slick1" style="background-image: url(/resources/front/images/main_puppy02.jpg);">
               <div class="container h-full">
                  <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                     <div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
                        <span class="ltext-101 cl2 respon2">
                           Everything about dogs 
                        </span>
                     </div>
                        
                     <div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
                        <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                           Food & House
                        </h2>
                     </div>
                        
                     <div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
                        <a href="/product" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                           Shop Now
                        </a>
                     </div>
                  </div>
               </div>
            </div>

            <div class="item-slick1" style="background-image: url(/resources/front/images/main_puppy06.jpg);">
               <div class="container h-full">
                  <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                     <div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
                        <span class="ltext-101 cl2 respon2">
                           Cat's Collection 2018
                        </span>
                     </div>
                        
                     <div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
                        <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                           New arrivals
                        </h2>
                     </div>
                        
                     <div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
                        <a href="/product" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                           Shop Now
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>


   <!-- Banner -->
   <div class="sec-banner bg0 p-t-80 p-b-50">
      <div class="container">
         <div class="row">
            <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
               <!-- Block1 -->
               <div class="block1 wrap-pic-w">
                  <img src="/resources/front/images/cate06.png" alt="IMG-BANNER" >

                  <a href="/product?catregory=1" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                     <div class="block1-txt-child1 flex-col-l">
                        <span class="block1-name ltext-102 trans-04 p-b-8">
                           Dog
                        </span>

                        <span class="block1-info stext-102 trans-04">
                           Brand new!
                        </span>
                     </div>

                     <div class="block1-txt-child2 p-b-4 trans-05">
                        <div class="block1-link stext-101 cl0 trans-09">
                           Shop Now
                        </div>
                     </div>
                  </a>
               </div>
            </div>

            <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
               <!-- Block1 -->
               <div class="block1 wrap-pic-w">
                  <img src="/resources/front/images/cate02.jpg" alt="IMG-BANNER">

                  <a href="/product?catregory=2" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                     <div class="block1-txt-child1 flex-col-l">
                        <span class="block1-name ltext-102 trans-04 p-b-8">
                           Cat
                        </span>

                        <span class="block1-info stext-102 trans-04">
                           Brand new!
                        </span>
                     </div>

                     <div class="block1-txt-child2 p-b-4 trans-05">
                        <div class="block1-link stext-101 cl0 trans-09">
                           Shop Now
                        </div>
                     </div>
                  </a>
               </div>
            </div>

            <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
               <!-- Block1 -->
               <div class="block1 wrap-pic-w">
                  <img src="/resources/front/images/cate04.jpg" alt="IMG-BANNER">

                  <a href="/product" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                     <div class="block1-txt-child1 flex-col-l">
                        <span class="block1-name ltext-102 trans-04 p-b-8">
                           All Product
                        </span>

                        <span class="block1-info stext-102 trans-04">
                           Brand new!
                        </span>
                     </div>

                     <div class="block1-txt-child2 p-b-4 trans-05">
                        <div class="block1-link stext-101 cl0 trans-09">
                           Shop Now
                        </div>
                     </div>
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>


   <!-- Product -->
   <section class="bg0 p-t-23 p-b-140">
      <div class="container">
         <div class="p-b-10">
            <h3 class="ltext-103 cl5">
               BEST SELLER
            </h3>
         </div>

         <div class="flex-w flex-sb-m p-b-52">
          
          
            
            <!-- Search product -->
            <div class="dis-none panel-search w-full p-t-10 p-b-15">
               <div class="bor8 dis-flex p-l-15">
                  <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                     <i class="zmdi zmdi-search"></i>
                  </button>

                  <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
               </div>   
            </div>

            <!-- Filter -->
            <div class="dis-none panel-filter w-full p-t-10">
               <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                  <div class="filter-col1 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">
                        Sort By
                     </div>

                     <ul>
                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              Default
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              Popularity
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              Average rating
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                              Newness
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              Price: Low to High
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              Price: High to Low
                           </a>
                        </li>
                     </ul>
                  </div>

                  <div class="filter-col2 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">
                        Price
                     </div>

                     <ul>
                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                              All
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              $0.00 - $50.00
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              $50.00 - $100.00
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              $100.00 - $150.00
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              $150.00 - $200.00
                           </a>
                        </li>

                        <li class="p-b-6">
                           <a href="#" class="filter-link stext-106 trans-04">
                              $200.00+
                           </a>
                        </li>
                     </ul>
                  </div>

                  <div class="filter-col3 p-r-15 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">
                        Color
                     </div>

                     <ul>
                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #222;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              Black
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #4272d7;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                              Blue
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #b3b3b3;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              Grey
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #00ad5f;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              Green
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #fa4251;">
                              <i class="zmdi zmdi-circle"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              Red
                           </a>
                        </li>

                        <li class="p-b-6">
                           <span class="fs-15 lh-12 m-r-6" style="color: #aaa;">
                              <i class="zmdi zmdi-circle-o"></i>
                           </span>

                           <a href="#" class="filter-link stext-106 trans-04">
                              White
                           </a>
                        </li>
                     </ul>
                  </div>

                  <div class="filter-col4 p-b-27">
                     <div class="mtext-102 cl2 p-b-15">
                        Tags
                     </div>

                     <div class="flex-w p-t-4 m-r--5">
                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           Fashion
                        </a>

                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           Lifestyle
                        </a>

                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           Denim
                        </a>

                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           Streetstyle
                        </a>

                        <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                           Crafts
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div class="row">
          <c:forEach items = "${bestProduct}" var="best">
            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item women">
               <!-- Block2 -->     
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="${best.pImageSrc}" alt="IMG-PRODUCT" style="height:230px;">

                 
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                     
                        <a href="/product_detail.do?pCode=${best.pCode}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                        
                          ${best.pName}
                        </a>

                        <span class="stext-105 cl3">
                          <fmt:formatNumber value="${best.salePrice}" pattern="###,###,###" />원
                        </span>
                     </div>

                     <div class="block2-txt-child2 flex-r p-t-3">
                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                           <img class="icon-heart1 dis-block trans-04" src="/resources/front/images/icons/icon-heart-01.png" alt="ICON">
                           <img class="icon-heart2 dis-block trans-04 ab-t-l" src="/resources/front/images/icons/icon-heart-02.png" alt="ICON">
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </c:forEach> 

           

        
         <div class="p-b-10" style="margin-top:10%;">
            <h3 class="ltext-103 cl5">
               NEW ARRIVAL
            </h3>
         </div>
         
 
      <div class="owl-carousel owl-theme">     
      <c:forEach items = "${newArrival}" var="newArrival">
          <div class="item">
           <a href="/product_detail.do?pCode=${newArrival.pCode}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 
          <img src="${newArrival.pImageSrc}" alt="IMG-PRODUCT">
          </a>
          </div>
           
      </c:forEach>
      </div>


      <div class="p-b-10" style="margin-top:5%;">
            <h3 class="ltext-103 cl5">
               EVENT   
            </h3>
         </div>
         
        <div style="margin-top:120px;">
         <a href="/event">
         <img src="/resources/eventImages/MainEvent.png" alt="IMG-PRODUCT" style="width:100%;">
         </a>
        </div>
        
        
        
         <div class="p-b-10" style="margin-top:5%;">
            <h3 class="ltext-103 cl5">
               MD'S PICK   
            </h3>
         </div>
         
         <div>
        
         <div class="row">
         <c:forEach items = "${recommend}" var="recommend">
            <div class="col-md-4">
             <a href="/product_detail.do?pCode=${recommend.pCode}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
               <img src="${recommend.pImageSrc}" alt="IMG-PRODUCT" style="width:100%;">
                 </a>
            </div>
      
             </c:forEach>
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
   <script src="/resources/front/vendor/daterangepicker/moment.min.js"></script>
   <script src="/resources/front/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/slick/slick.min.js"></script>
   <script src="/resources/front/js/slick-custom.js"></script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/parallax100/parallax100.js"></script>
   <script>
        $('.parallax100').parallax100();
   </script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
   <script>
      $('.gallery-lb').each(function() { // the containers for all your galleries
         $(this).magnificPopup({
              delegate: 'a', // the selector for gallery item
              type: 'image',
              gallery: {
                 enabled:true
              },
              mainClass: 'mfp-fade'
          });
      });
   </script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
   <script src="/resources/front/vendor/sweetalert/sweetalert.min.js"></script>
   <script>
      $('.js-addwish-b2').on('click', function(e){
         e.preventDefault();
      });

      $('.js-addwish-b2').each(function(){
         var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-b2');
            $(this).off('click');
         });
      });

      $('.js-addwish-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-detail');
            $(this).off('click');
         });
      });

      /*---------------------------------------------*/

      $('.js-addcart-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
         });
      });
   
   </script>
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
<!--===============================================================================================-->
   <script src="/resources/dist/js/owl.carousel.js"></script>
   <script src="/resources/dist/js/owl.carousel.min.js"></script>
   <script>
   $('.owl-carousel').owlCarousel({
       loop:true,
       margin:10,
       nav:true,
       responsive:{
           0:{
               items:1
           },
           600:{
               items:3
           },
           1000:{
               items:5
           }
       }
   })
   </script>
</body>
</html>