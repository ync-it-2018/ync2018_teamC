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
	
	<!-- header -->
   <%@ include file="include/header.jsp" %>  

	
	<!-- cart -->
   <%@ include file="include/cart.jsp" %>

	
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