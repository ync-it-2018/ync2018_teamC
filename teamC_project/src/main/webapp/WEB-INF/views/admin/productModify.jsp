<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../admin/include/header.jsp"%>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- Main content -->
<style type="text/css">
.popup {
	position: absolute;
}

.back {
	background-color: gray;
	opacity: 0.5;
	width: 100%;
	height: 300%;
	overflow: hidden;
	z-index: 1101;
}

.front {
	z-index: 1110;
	opacity: 1;
	boarder: 1px;
	margin: auto;
}

.show {
	position: relative;
	max-width: 1200px;
	max-height: 800px;
	overflow: auto;
}
</style>

<div class='popup back' style="display: none;"></div>
<div id="popup_front" class='popup front' style="display: none;">
	<img id="popup_img">
</div>

<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">Product Modify</h3>
				</div>
				<!-- /.box-header -->

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">상품 코드</label> <input type="text"
							name='pCode' class="form-control" value="${productVO.pCode}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">대분류</label> <input type="text"
							name='pBig' class="form-control" value="${productVO.pBig}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">중분류</label> <input type="text"
							name='pMiddle' class="form-control" value="${productVO.pMiddle}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">소분류</label> <input type="text"
							name='pSmall' class="form-control" value="${productVO.pSmall}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">메인 분류</label> <input type="text"
							name='pMain' class="form-control" value="${productVO.pMain}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">상품명</label> <input type="text"
							name='pName' class="form-control" value="${productVO.pName}">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">상품설명</label>
						<textarea class="form-control" name="pDetail" rows="5">${productVO.pDetail}</textarea>
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">판매가</label> <input type="text"
							name='price' class="form-control" value="${productVO.price}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">세일가</label> <input type="text"
							name='salePrice' class="form-control"
							value="${productVO.salePrice}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">재고</label> <input type="text"
							name='stock' class="form-control" value="${productVO.stock}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">적립률</label> <input type="text"
							name='pPoint' class="form-control" value="${productVO.pPoint}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">사이즈</label> <input type="text"
							name='pSize' class="form-control" value="${productVO.pSize}">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">상품 이미지</label> <input type="text"
							name='pImageSrc' class="form-control" value="${productVO.pImageSrc}">
					</div>


				</div>

				<!-- /.box-body -->

				<div class="box-footer">

					<button type="submit" class="btn btn-primary">SAVE</button>
					<button type="submit" class="btn btn-warning">CANCEL</button>

				</div>

			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

<!-- /.content-wrapper -->

<script type="text/javascript" src="/resources/js/upload.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script>
	$(document).ready(function() {
		// 폼을 변수에 저장
		var formObj = $("form[role='form']");

		console.log(formObj);

		// 취소 버튼 클릭
		$(".btn-warning").click(function() {
			self.location = "/admin/productlist";
		});

		// 수정 버튼 클릭
		$(".btn-primary").click(function() {
			formObj.submit();
		});
	});
</script>


<%@include file="../admin/include/footer.jsp"%>



