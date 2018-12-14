<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../admin/include/header.jsp" %>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">상품 목록</h3>
				</div>

				<%-- <div class='box-body'>

               <select name="searchType">
                  <option value="n"
                     <c:out value="${cri.searchType == null?'selected':''}"/>>
                     ---</option>
                  <option value="t"
                     <c:out value="${cri.searchType eq 't'?'selected':''}"/>>
                     Title</option>
                  <option value="c"
                     <c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
                     Content</option>
                  <option value="w"
                     <c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
                     Writer</option>
                  <option value="tc"
                     <c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
                     Title OR Content</option>
                  <option value="cw"
                     <c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
                     Content OR Writer</option>
                  <option value="tcw"
                     <c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
                     Title OR Content OR Writer</option>
               </select> <input type="text" name='keyword' id="keywordInput"
                  value='${cri.keyword }'>
               <button id='searchBtn'>Search</button>
               <button id='newBtn'>New Board</button>

            </div> --%>


				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Product List</h3>
					</div>
					<div class="box-body">
						<form id="productForm" name="productForm" method="POST">
							<table class="table table-bordered">
								<tr>
									<th style="width: 150px">상품코드</th>
									<th>카테고리</th>
									<th>상품명</th>
									<th style="width: 100px">판매가</th>
									<th style="width: 100px">재고</th>
								</tr>

								<c:forEach items="${list}" var="ProductVO">
									<tr>
										<td>${ProductVO.pCode}</td>
										<td>${ProductVO.pBig}${ProductVO.pMiddle}${ProductVO.pSmall}</td>
										<td><a
											href='/admin/productRead?pCode=${ProductVO.pCode}'>${ProductVO.pName}</a></td>
										<td><fmt:formatNumber value="${ProductVO.price}" pattern="###,###,###" /></td>
										<td>${ProductVO.stock}</td>
									</tr>
								</c:forEach>
							</table>
						</form>
					</div>
					<!-- /.box-body -->


					<div class="box-footer">

						<div class="text-center">
							<ul class="pagination">

								<c:if test="${pageMaker.prev}">
									<li><a
										href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
										<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:if>

							</ul>
						</div>
						<button type="submit" class="btn btn-primary">New</button>
					</div>
					<!-- /.box-footer-->

				</div>

			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
	</div>
</section>
<!-- /.content -->


<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}

	$(document).ready(function() {

		/*$('#searchBtn').on(
		    "click",
		    function(event) {

		       self.location = "list"
		             + '${pageMaker.makeQuery(1)}'
		             + "&searchType="
		             + $("select option:selected").val()
		             + "&keyword=" + $('#keywordInput').val();

		    });

		$('#newBtn').on("click", function(evt) {

		 self.location = "";

		}); */

		$('.btn-primary').on("click", function() {

			self.location = "/admin/productup";

		});

	});
</script>

<%@include file="../admin/include/footer.jsp" %>


