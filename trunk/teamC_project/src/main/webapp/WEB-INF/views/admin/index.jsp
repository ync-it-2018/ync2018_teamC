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
              <h3 class="box-title">Welcome! ${serverTime}</h3>
            </div>
          </div>
      </div>
      </div>  
    </section>
    
    
    <div style="text-align:center;">
	    <div style="display : inline block;">
	    	<img src="/resources/front/images/logo.jpg" alt="IMG">
	    </div>
    </div>
    
<%@include file="include/footer.jsp" %>
 
 
  