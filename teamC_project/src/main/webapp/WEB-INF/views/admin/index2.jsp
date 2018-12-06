<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="include/header.jsp" %>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
    <!-- Main content -->
    <section class="content">
      <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->

					<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">HOME PAGE ${serverTime }</h3>
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->
    
    
   <table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
							<th style="width: 40px">VIEWCNT</th>
						</tr>

						<c:forEach items="${list}" var="TestVO">

							<tr>
								<td>${TestVO.R_NUM}</td>
								<td>${TestVO.R_TITLE}</td>
								<td>${TestVO.R_CONTENTS}</td>
							</tr>

						</c:forEach>

					</table>



    
<%@include file="include/footer.jsp" %>
 
 
  