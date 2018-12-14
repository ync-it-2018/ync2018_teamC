<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Product</title>
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
<!--===============================================================================================-->
</head>
<style>
	#write-form td {
  	  border: none;
	}
	#write-form textarea {
   	 width: 99%;
	}
</style>
<body class="animsition">
	
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop" >
			<!-- Topbar -->
			<div class="top-bar" style="background-color:#dbbb87;">
				<div class="content-topbar flex-sb-m h-full container" >
					<div class="left-top-bar" style="color : black;">
						Free shipping for standard order over $100
					</div>

					<div class="right-top-bar flex-w h-full" >
						<a href="/login" class="flex-c-m trans-04 p-lr-25">
							LOGIN
						</a>

						<a href="/join" class="flex-c-m trans-04 p-lr-25" >
							JOIN
						</a>

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
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							My Account
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							EN
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							USD
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="/index">Home</a>
					<ul class="sub-menu-m">
						<li><a href="/index">Homepage 1</a></li>
						<li><a href="/home_02">Homepage 2</a></li>
						<li><a href="/home-03">Homepage 3</a></li>
					</ul>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="/product">Shop</a>
				</li>

				<li>
					<a href="/shoping-cart" class="label1 rs1" data-label1="hot">Features</a>
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

					<div class="header-cart-buttons flex-w w-full">
						<a href="/shoping-cart" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart
						</a>

					</div>
				</div>
			</div>
		</div>
	</div>

	
	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<hr>
		<div class="container" style="margin-bottom:50px;" >
         <h4>후기 작성</h4>
         <hr>
         <form style="margin-top:50px;" id="reviewForm" method="POST" action="/review/review.do">
         
         <table style="margin : 0 auto; ">
	         <tr>
	         	<td >
	         		<label for="title" style="margin-right:50px; "><b>ID</b></label> 
	         		<br>
	         	</td>
	         	<td>
	         		<input style="width: 30%; border: 1px solid lightgray;"
	            type="text" name="mId"> 
	            <br> 
	         	</td>
	         </tr>
	         <tr>
	         	<td >
	         		<label for="title" style="margin-right:50px; "><b>RNUM</b></label> 
	         		<br>
	         	</td>
	         	<td>
	         		<input style="width: 30%; border: 1px solid lightgray;"
	            type="text" name="rNum"> 
	            <br> 
	         	</td>
	         </tr>
	         <tr>
	         	<td >
	         		<label for="title" style="margin-right:50px; "><b>상품코드</b></label> 
	         		<br>
	         	</td>
	         	<td>
	         		<input style="width: 30%; border: 1px solid lightgray;"
	            type="text" name="pCode"> 
	            <br> 
	         	</td>
	         </tr>
         
	         <tr>
	         	<td >
	         		<label for="title" style="margin-right:50px; "><b>제목</b></label> 
	         		<br>
	         	</td>
	         	<td>
	         		<input style="width: 60%; border: 1px solid lightgray;"
	            type="text" name="rTitle"> 
	            <br> 
	         	</td>
	         </tr>
	         
	         <tr>
	         	<td>
	         		<label for="content" ><b>내용</b></label>
	         	</td>
	         	<td>
	         		 <textarea rows="20" 
	         		 placeholder=" 후기를 입력해주세요"
	         		 name="rContents"
	         		 cols="90" style="border: 1px solid lightgray;"></textarea>
	            <br>
	         	</td>
	         </tr>
	         
	         <tr>
	         	<td><label for="reviewimg" ><b>파일</b></label></td>
	         	<td><input type="file" name="attachFile" style="color:slategray;border:1 solid silver;width:100%; height:20">
				</td>
	         </tr>
         
         
         </table>
        
            <hr>
          <div style="text-align:center;">
         <button type="submit" style="border:1px solid lightgray; background-color: white; padding: 14px 20px;
          margin: 8px 0;  border-radius: 10px; width: 100px; opacity: 0.9;">취소</button>
          <button type="submit" style="border:1px solid lightgray; background-color: white; padding: 14px 20px;
          margin: 8px 0;  border-radius: 10px; width: 100px; opacity: 0.9;">등록</button>
          </div>
           </form>
      </div>
		
		
	</div>
		

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
					Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.

				</p>
			</div>
		</div>
	</footer> 





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
</html>