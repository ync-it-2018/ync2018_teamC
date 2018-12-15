   <%@ include file="include/header.jsp" %>

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
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button onclick="location.href='/MypageUserinfo'" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 ">
						회원정보
					</button>

					<button onclick="location.href='/MypageSavedMoney'" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" >
						적립금
					</button>

					<button onclick="location.href='/MypageOrder'" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" >
						주문내역
					</button>

					<button onclick="location.href='/MypageWithdrawal'" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" >
						회원탈퇴
					</button>

					<button onclick="location.href='/MypageInterestedpdt'" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" >
						관심상품
					</button>

				</div>
				<p>마이페이지 > 관심상품</p>
			</div>
			<hr>
			<div>
			<button type="button" style="border:1px solid black; background-color: white; padding: 8px 10px;
    				 border-radius: 15px; width: 150px; opacity: 0.9; float:right">전체삭제</button>
			<p>고객님의 관심상품은 총 n개입니다.</p>
			
			</div>
			<div style="width:900px; height:150px; border:1px solid lightgray;  margin: 45px 45px 35px 0px; padding: 30px;">
				<img src="/resources/front/images/cate01.jpg" alt="IMG" style="width:120px; height:100px; padding:left;">
				<a href="/" data-rel="back" data-direction="reverse"><img src="/resources/front/images/icons/icon-close2.png" style="margin-left:600px"></a>
			</div>
		</div>
	</div>
		

	<!-- Footer -->
	<%@ include file="include/footer.jsp" %>





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