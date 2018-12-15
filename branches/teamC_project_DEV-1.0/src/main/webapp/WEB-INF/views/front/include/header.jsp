<%@page import="kr.ync.project.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<body class="animsition">
	<%
		// 세션정보 가져오기
	 	HttpSession mySession = request.getSession();
		UserVO sessionUser = (UserVO)mySession.getAttribute("login");
		
		// 로그인 상태 변수
		boolean loginStatus = false;
		
		if(sessionUser != null){
			loginStatus = true;	// 로그인 OK
		}
	%>
<header>
   	  <script>
   	  	
   	  </script>
      <!-- Header desktop -->
      <div class="container-menu-desktop" >
         <!-- Topbar -->
         <div class="top-bar" style="background-color:#dbbb87;">
            <div class="content-topbar flex-sb-m h-full container" >
               <div class="left-top-bar" style="color : black;">
                  Free shipping for standard order over $100
               </div>

               <div class="right-top-bar flex-w h-full" >
		
        <% 
        	if(!loginStatus){	// 로그인 안됐을때
       	%>
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
       	<%
        	}else if(loginStatus){	// 로그인 됐을때
        %>
        	 <li style="margin:10px;">
                 <p><%=sessionUser.getmId()%>님, 반갑습니다!</p>
             </li>
                   
                  
             <li>
                <a href="/front/logout" class="flex-c-m trans-04 p-lr-25" >
              		LOGOUT
           		</a>
             </li>
        <%
        	}
        %>
                
                  
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
                           <li><a href="/product?bigcategory=1">강아지</a>
                              <ul class="sub-menu">
                                 <li><a href="/product?bigcategory=1&middlecategory=1">사료 / 간식</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product?bigcategory=1&middlecategory=1&smallcategory=1">자견용</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=1&smallcategory=2">성견용</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=1&smallcategory=3">노견용</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=1&smallcategory=4">유기농</a></li>
                                    </ul>
                                 </li>
                                 <li><a href="/product?bigcategory=1&middlecategory=2">생활 / 훈련</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product?bigcategory=1&middlecategory=2&smallcategory=5">배변</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=2&smallcategory=6">장난감</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=2&smallcategory=7">목욕</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=2&smallcategory=8">하우스</a></li>
                                    </ul>
                                 </li>
                                 <li><a href="/product?bigcategory=1&middlecategory=3">패션 / 악세사리</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product?bigcategory=1&middlecategory=3&smallcategory=9">신발</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=3&smallcategory=10">상의</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=3&smallcategory=11">하의</a></li>
                                       <li><a href="/product?bigcategory=1&middlecategory=3&smallcategory=12">원피스</a></li>
                                    </ul>
                                 </li>
                              </ul>
                           </li>
                           <li><a href="/product?bigcategory=2">고양이</a>
                              <ul class="sub-menu">
                                 <li><a href="/product?bigcategory=2&middlecategory=4">사료 / 간식</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product?bigcategory=2&middlecategory=4&smallcategory=13">자묘용</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=4&smallcategory=14">성묘용</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=4&smallcategory=15">노묘용</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=4&smallcategory=16">유기농</a></li>
                                    </ul>
                                 </li>
                                 <li><a href="/product?bigcategory=2&middlecategory=5">생활 / 훈련</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product?bigcategory=2&middlecategory=5&smallcategory=17">배변</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=5&smallcategory=18">장난감</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=5&smallcategory=19">목욕</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=5&smallcategory=20">하우스</a></li>
                                    </ul>
                                 </li>
                                 <li><a href="/product?bigcategory=2&middlecategory=6">패션 / 악세사리</a>
                                    <ul class="sub-menu">
                                       <li><a href="/product?bigcategory=2&middlecategory=6&smallcategory=21">신발</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=6&smallcategory=22">상의</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=6&smallcategory=23">하의</a></li>
                                       <li><a href="/product?bigcategory=2&middlecategory=6&smallcategory=24">원피스</a></li>
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
                        <a href="/review/reviewList">Review</a>
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
               <a href="/review/reviewList">Review</a>
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