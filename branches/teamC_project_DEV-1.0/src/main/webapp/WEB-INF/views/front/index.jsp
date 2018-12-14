<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
<body class="animsition">
   <!-- front -->
   <!-- Header -->
   <header>
      <!-- Header desktop -->
      <div class="container-menu-desktop" >
         <!-- Topbar -->
         <div class="top-bar" style="background-color:#dbbb87;">
            <div class="content-topbar flex-sb-m h-full container" >
               <div class="left-top-bar" style="color : black;">
                  Free shipping for standard order over $100
               </div>

               <div class="right-top-bar flex-w h-full" >
 <c:catch>
    <c:choose>
        <c:when test="${empty UserVO}">
            <li>
                <a href="/front/login" class="flex-c-m trans-04 p-lr-25">
                     LOGIN
                  </a>
             </li>
             <li>
                <a href="/join" class="flex-c-m trans-04 p-lr-25" >
                     JOIN
                  </a>
             </li>
        </c:when>
        <c:otherwise>
           	
                    <li style="margin:10px;">
                       <p>${UserVO.mId}님, 반갑습니다!</p>
                   </li>
                   
                  
                   <li>
                       <a href="/front/logout" class="flex-c-m trans-04 p-lr-25" >
                     LOGOUT
                  </a>
                   </li>
            
        </c:otherwise>
    </c:choose>
</c:catch>

                
                  
                <!--   <a href="/login" class="flex-c-m trans-04 p-lr-25">
                     LOGIN
                  </a> -->

                 <!--  <a href="/join" class="flex-c-m trans-04 p-lr-25" >
                     JOIN
                  </a> -->

                  <a href="/MypageUserinfo" class="flex-c-m trans-04 p-lr-25">
                     MyPage
                  </a>

               </div>
            </div>
         </div>

         <div class="wrap-menu-desktop">
                        <nav class="limiter-menu-desktop container">

               <!-- Logo desktop -->
               <a href="/index" class="logo">
                  <img src="/resources/front/images/icons/logo-01.png" alt="IMG-LOGO">
               </a>

               <!-- Menu desktop -->
               <div class="menu-desktop">
                  <ul class="main-menu">
                     <!-- <li class="active-menu">
                        <a href="/index">Home</a>

                     </li>
 -->
                     <li>
                        <a href="/product">Shop</a>
                        <ul class="sub-menu">
                           <li><a href="/product">강아지</a>
                              <ul class="sub-menu">
                                 <li><a href="/product">사료 / 간식</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product">자견용</a></li>
                                       <li><a href="/product">성견용</a></li>
                                       <li><a href="/product">노견용</a></li>
                                       <li><a href="/product">유기농</a></li>
                                    </ul>
                                 </li>
                                 <li><a href="/product">생활 / 훈련</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product">배변</a></li>
                                       <li><a href="/product">장난감</a></li>
                                       <li><a href="/product">목욕</a></li>
                                       <li><a href="/product">하우스</a></li>
                                    </ul>
                                 </li>
                                 <li><a href="/product">패션 / 악세사리</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product">신발</a></li>
                                       <li><a href="/product">상의</a></li>
                                       <li><a href="/product">하의</a></li>
                                       <li><a href="/product">원피스</a></li>
                                    </ul>
                                 </li>
                              </ul>
                           </li>
                           <li><a href="/product">고양이</a>
                              <ul class="sub-menu">
                                 <li><a href="/product">사료 / 간식</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product">자묘용</a></li>
                                       <li><a href="/product">성묘용</a></li>
                                       <li><a href="/product">노묘용</a></li>
                                       <li><a href="/product">유기농</a></li>
                                    </ul>
                                 </li>
                                 <li><a href="/product">생활 / 훈련</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product">배변</a></li>
                                       <li><a href="/product">장난감</a></li>
                                       <li><a href="/product">목욕</a></li>
                                       <li><a href="/product">하우스</a></li>
                                    </ul>
                                 </li>
                                 <li><a href="/product">패션 / 악세사리</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product">신발</a></li>
                                       <li><a href="/product">상의</a></li>
                                       <li><a href="/product">하의</a></li>
                                       <li><a href="/product">원피스</a></li>
                                    </ul>
                                 </li>
                              </ul>
                           </li>
                        </ul>
                     </li>
                     
                     <li>
                        <a href="/event">Event</a>
                     </li>
                     
                     
                     <li>
                        <a href="/about">About</a>
                     </li>
                     

                     <li class="label1" data-label1="hot">
                        <a href="/review">Review</a>
                     </li> 

                     <li>
                        <a href="/contact">Contact</a>
                     </li>
                  </ul>
               </div>

               <!-- Icon header -->
               <div class="wrap-icon-header flex-w flex-r-m">
                  <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                     <i class="zmdi zmdi-search"></i>
                  </div>

                  <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
                     <i class="zmdi zmdi-shopping-cart"></i>
                  </div>

                  <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                     <i class="zmdi zmdi-favorite-outline"></i>
                  </a>
               </div>
            </nav>
         </div>   
      </div>

      <!-- Header Mobile -->
      <div class="wrap-header-mobile">
         <!-- Logo moblie -->      
         <div class="logo-mobile">
            <a href="/index"><img src="/resources/front/images/icons/logo-01.png" alt="IMG-LOGO"></a>
         </div>

         <!-- Icon header -->
         <div class="wrap-icon-header flex-w flex-r-m m-r-15">
            <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
               <i class="zmdi zmdi-search"></i>
            </div>

            <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
               <i class="zmdi zmdi-shopping-cart"></i>
            </div>

            <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
               <i class="zmdi zmdi-favorite-outline"></i>
            </a>
         </div>

         <!-- Button show menu -->
         <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
            <span class="hamburger-box">
               <span class="hamburger-inner"></span>
            </span>
         </div>
      </div>


      <!-- Menu Mobile -->
      <div class="menu-mobile">
         <ul class="topbar-mobile">
            <li>
               <div class="left-top-bar">
                  Free shipping for standard order over $100
               </div>
            </li>

            <li>
               <div class="right-top-bar flex-w h-full">
                  <a href="#" class="flex-c-m p-lr-10 trans-04">
                  </a>

                  <a href="#" class="flex-c-m p-lr-10 trans-04">
                     My Account
                  </a>

                  <a href="#" class="flex-c-m p-lr-10 trans-04">
                     EN
                  </a>

               </div>
            </li>
         </ul>

         <ul class="main-menu-m">
            <li>
               <a href="/index">Home</a>
            </li>

            <li>
               <a href="/product">Shop</a>
               <ul class="sub-menu-m">
                  <li><a href="/index">Homepage 1</a></li>
                  <li><a href="/home_02">Homepage 2</a></li>
                  <li><a href="/home_03">Homepage 3</a></li>
               </ul>
               <span class="arrow-main-menu-m">
                  <i class="fa fa-angle-right" aria-hidden="true"></i>
               </span>
            </li>

            <li>
               <a href="/shoping_cart" class="label1 rs1" data-label1="hot">Features</a>
            </li>

            <li>
               <a href="/review">Review</a>
            </li>

            <li>
               <a href="/about">About</a>
            </li>

            <li>
               <a href="/contact">Contact</a>
            </li>
         </ul>
      </div>

      <!-- Modal Search -->
      <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
         <div class="container-search-header">
            <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
               <img src="/resources/front/images/icons/icon-close2.png" alt="CLOSE">
            </button>

            <form class="wrap-search-header flex-w p-l-15">
               <button class="flex-c-m trans-04">
                  <i class="zmdi zmdi-search"></i>
               </button>
               <input class="plh3" type="text" name="search" placeholder="Search...">
            </form>
         </div>
      </div>
   </header>

   <!-- Cart -->
   <div class="wrap-header-cart js-panel-cart">
      <div class="s-full js-hide-cart"></div>

      <div class="header-cart flex-col-l p-l-65 p-r-25">
         <div class="header-cart-title flex-w flex-sb-m p-b-8">
            <span class="mtext-103 cl2">
               Your Cart
            </span>

            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
               <i class="zmdi zmdi-close"></i>
            </div>
         </div>
         
         <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">
               <li class="header-cart-item flex-w flex-t m-b-12">
                  <div class="header-cart-item-img">
                     <img src="/resources/front/images/item-cart-01.jpg" alt="IMG">
                  </div>

                  <div class="header-cart-item-txt p-t-8">
                     <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                        White Shirt Pleat
                     </a>

                     <span class="header-cart-item-info">
                        1 x $19.00
                     </span>
                  </div>
               </li>

               <li class="header-cart-item flex-w flex-t m-b-12">
                  <div class="header-cart-item-img">
                     <img src="/resources/front/images/item-cart-02.jpg" alt="IMG">
                  </div>

                  <div class="header-cart-item-txt p-t-8">
                     <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                        Converse All Star
                     </a>

                     <span class="header-cart-item-info">
                        1 x $39.00
                     </span>
                  </div>
               </li>

               <li class="header-cart-item flex-w flex-t m-b-12">
                  <div class="header-cart-item-img">
                     <img src="/resources/front/images/item-cart-03.jpg" alt="IMG">
                  </div>

                  <div class="header-cart-item-txt p-t-8">
                     <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                        Nixon Porter Leather
                     </a>

                     <span class="header-cart-item-info">
                        1 x $17.00
                     </span>
                  </div>
               </li>
            </ul>
            
            <div class="w-full">
               <div class="header-cart-total w-full p-tb-40">
                  Total: $75.00
               </div>

               <div class="header-cart-buttons flex-w w-full" style="float:right;">
                  <a href="/shoping_cart" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
                     View Cart
                  </a>

               </div>
            </div>
         </div>
      </div>
   </div>

      

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

                  <a href="/product" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
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

                  <a href="/product" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
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
                           Organic
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
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
               <!-- <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
                  All Products
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".women">
                  Dog
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".men">
                  Cat
               </button>

               <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".bag">
                  Organic
               </button> -->

            </div>

            <div class="flex-w flex-c-m m-tb-10">
               <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
                  <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
                  <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                   Filter
               </div>

               <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
                  <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
                  <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                  Search
               </div>
            </div>
            
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
            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item women">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/d01.jpeg" alt="IMG-PRODUCT" style="height:230px;">

                 
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                     
                        <a href="/product_detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                        
                           Esprit Ruffle Shirt
                        </a>

                        <span class="stext-105 cl3">
                           $16.64
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

            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item women">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/d02.jpg" alt="IMG-PRODUCT" style="height:230px;">

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product_detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Herschel supply
                        </a>

                        <span class="stext-105 cl3">
                           $35.31
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

            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item men">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/d03.jpg" alt="IMG-PRODUCT" style="height:230px;">

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Only Check Trouser
                        </a>

                        <span class="stext-105 cl3">
                           $25.50
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

            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item women">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/c01.jpg" alt="IMG-PRODUCT" style="height:230px;">

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Classic Trench Coat
                        </a>

                        <span class="stext-105 cl3">
                           $75.00
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

            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item women">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/dh01.jpg" alt="IMG-PRODUCT" style="height:230px;">

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Front Pocket Jumper
                        </a>

                        <span class="stext-105 cl3">
                           $34.75
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
            </div>
            <div class="row">
            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item watches">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/product-06.jpg" alt="IMG-PRODUCT" style="height:230px;">

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product_detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Vintage Inspired Classic 
                        </a>

                        <span class="stext-105 cl3">
                           $93.20
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

            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item women">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/product-07.jpg" alt="IMG-PRODUCT" style="height:230px;">

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product_detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Shirt in Stretch Cotton
                        </a>

                        <span class="stext-105 cl3">
                           $52.66
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

            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item women">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/product-08.jpg" alt="IMG-PRODUCT" style="height:230px;">

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product_detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Pieces Metallic Printed
                        </a>

                        <span class="stext-105 cl3">
                           $18.96
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

            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item shoes">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/product-09.jpg" alt="IMG-PRODUCT" style="height:230px;" >

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product_detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Converse All Star Hi Plimsolls
                        </a>

                        <span class="stext-105 cl3">
                           $75.00
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

            <div class="col-sm-6 col-md-4 col-lg-2 p-b-35 isotope-item women">
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT" style="height:230px;">

                     <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                        Quick View
                     </a>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="/product_detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           Femme T-Shirt In Stripe
                        </a>

                        <span class="stext-105 cl3">
                           $25.85
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

            
         </div>

         <!-- Load more -->
         <!-- <div class="flex-c-m flex-w w-full p-t-45">
            <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
               Load More
            </a>
         </div> -->
         <div class="p-b-10" style="margin-top:10%;">
            <h3 class="ltext-103 cl5">
               NEW ARRIVAL
            </h3>
         </div>
         

      <div class="owl-carousel owl-theme">
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
          <div class="item"><img src="/resources/front/images/product-10.jpg" alt="IMG-PRODUCT"></div>
      </div>


      <div class="p-b-10" style="margin-top:5%;">
            <h3 class="ltext-103 cl5">
               EVENT   
            </h3>
         </div>
         <img src="/resources/front/images/event.png" alt="IMG-PRODUCT" style="width:100%;">
         
         
         <div class="p-b-10" style="margin-top:5%;">
            <h3 class="ltext-103 cl5">
               MD'S PICK   
            </h3>
         </div>
         <div class="row">
            <div class="col-md-4">
               <img src="/resources/front/images/md.png" alt="IMG-PRODUCT" style="width:100%;">
            </div>
            <div class="col-md-4">
               <img src="/resources/front/images/md.png" alt="IMG-PRODUCT" style="width:100%;">
            </div>
            <div class="col-md-4">
               <img src="/resources/front/images/md.png" alt="IMG-PRODUCT" style="width:100%;">
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