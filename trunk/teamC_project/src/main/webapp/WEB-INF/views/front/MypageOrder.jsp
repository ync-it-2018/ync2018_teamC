<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>MypageOrder</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/resources/front/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/front/css/util.css">
<link rel="stylesheet" type="text/css"
	href="/resources/front/css/main.css">
<!--===============================================================================================-->
</head>

<style>
table {
	width: 90%;
}

table, th, td {
	border: 1px solid #bcbcbc;
}
</style>

<body class="animsition">

	<!-- header -->
   <%@ include file="include/header.jsp" %>  

	
	<!-- cart -->
   <%@ include file="include/cart.jsp" %>


	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140" style="margin-top : 15%;">
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button onclick="location.href='/MypageUserinfo'"
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
						회원정보</button>

					<button onclick="location.href='/MypageSavedMoney'"
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
						적립금</button>

					<button onclick="location.href='/MypageOrder'"
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5  how-active1">
						주문내역</button>

					<button onclick="location.href='/MypageWithdrawal'"
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
						회원탈퇴</button>

					<button onclick="location.href='/MypageInterestedpdt'"
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
						관심상품</button>

				</div>
				<p>마이페이지 > 주문내역</p>
			</div>
			<hr>


			<table style="text-align: center;">
				<thead>
					<tr>
						<td>번호</td>
						<td>주문일자</td>
						<td>주문번호</td>
						<td>배송상태</td>
						<td>결제방법</td>
						<td>주문금액</td>
						<td>주문상태</td>
						<td>후기</td>
					</tr>
				</thead>
				<tbody>
					<tr style="height: 110px; width: 50px;">
						<td>hi</td>
						<td>hi</td>
						<td>hi</td>
						<td>hi</td>
						<td>hi</td>
						<td>hi</td>
						<td>
							<button type="button"
								style="border: 1px solid black; background-color: white; padding: 5px; margin: 8px 0; border-radius: 10px; margin: 8px 0; width: 90px; opacity: 0.9;">주문취소</button>
						</td>
						<td>
						<a href="/write_review">
							<button type="button" style="border: 1px solid black; background-color: white; padding: 5px; margin: 8px 0; border-radius: 10px; margin: 8px 0; width: 90px; opacity: 0.9;">후기작성
							</button>
						</a>
					</td>
					</tr>
				</tbody>
			</table>
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
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="/resources/front/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="/resources/front/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/front/vendor/slick/slick.min.js"></script>
	<script src="/resources/front/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/front/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="/resources/front/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="/resources/front/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/front/vendor/sweetalert/sweetalert.min.js"></script>

	<!--===============================================================================================-->
	<script
		src="/resources/front/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="/resources/front/js/main.js"></script>

</body>
</html>