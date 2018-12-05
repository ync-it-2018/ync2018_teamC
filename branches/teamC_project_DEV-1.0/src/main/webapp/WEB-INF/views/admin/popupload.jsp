<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<TITLE>New Document</TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">

<style type="text/css">
table {
	background-color: #505050;
	width: 600px;
	margin-left: 7%;
	margin-top: 7%;
}

.normal {
	background-color: #FFFFFF;
	font-size: 9pt;
	height: 30px;
	text-align: center;
	width: 150px;
}

.activetd {
	background-color: #B0B0B0;
	font-size: 9pt;
	height: 30px;
	text-align: center;
	width: 150px;
}

.edittd {
	background-color: #FFFFFF;
	font-size: 9pt;
	height: 30px;
	text-align: left;
	width: 150px;
}
</style>

<script language="javascript">
	function appendRow() {
		var tr_obj = document.getElementById("sample");
		var clone_obj = tr_obj.cloneNode(true)

		tr_obj.parentNode.appendChild(clone_obj);
	}

	function deleteRow() {
		var tr_obj = document.getElementById("sample");
		var tbody_obj = tr_obj.parentNode;
		var tbl_obj = tbody_obj.parentNode;
		var tbl_cnt = tbl_obj.rows.length;
		tbl_cnt

		if (tbl_cnt < 3) {
			alert('삭제할 행이 없습니다.');

			return;
		}

		tr_obj.parentNode.removeChild(tr_obj);
	}
</script>
</HEAD>

<BODY>

	<%-- <table width="70%" border="1" cellpadding="0" cellspacing="0">
		<col width="20%">
		<tr>
			<!-- 테이블 번호 자동생성 -->
			<td class="normal">순서</td>
			<td class="normal">슬라이드 제목</td>
			<!--     <td class="normal">취미</td>
    <td class="normal">기타</td> -->
			<td class="normal"></td>
		</tr>
		<tr id="sample">
			<td class="normal"><input type="text" name="docName"></td>
			<td class="normal"><input type="text" name="docAge"></td>
			<td class="normal"><input type="button" value="추가"
				onclick="appendRow();"><input type="button" value="삭제"
				onclick="deleteRow();"></td>
			<!-- <td class="normal"><input type="text" name="docHabit"></td>
    <td class="normal"><input type="text" name="docEtc"></td> -->
		</tr>
	</table>
	
	
	<table width="70%" border="1" cellpadding="0" cellspacing="0">
		<col width="20%">
		<tr>
			<!-- 테이블 번호 자동생성 -->
			<td class="normal">순서</td>
			<td class="normal">슬라이드 제목</td>
			<!--     <td class="normal">취미</td>
    <td class="normal">기타</td> -->
			<td class="normal"></td>
		</tr>
		<tr id="sample">
			<td class="normal"><input type="text" name="docName"></td>
			<td class="normal"><input type="text" name="docAge"></td>
			<td class="normal"><input type="button" value="추가"
				onclick="appendRow();"><input type="button" value="삭제"
				onclick="deleteRow();"></td>
			<!-- <td class="normal"><input type="text" name="docHabit"></td>
    <td class="normal"><input type="text" name="docEtc"></td> -->
		</tr>
	</table> --%>
	
	<div > 
  <form class="modal-content">
    <div class="container"> 
    
      <p>회원정보입력</p>
      <input type="text" style="width: 130px;" id="testDatepicker">  
      <p>회원정보입력</p>
      
      <hr>
      <label for="id" style="padding-right:60px;"><b>ID</b></label>
      <input style="width: 130px;" type="text" placeholder="Enter ID" name="ID">
      <button type="button">중복체크</button>
      <br>
      <label for="pwd" style="padding-right:10px;"><b>비밀번호</b></label>
      <input style="width: 130px;" type="password" placeholder="Enter pwd" name="psw" required>
      <label for="pwdck"><b>비밀번호확인</b></label>
      <input style="width: 130px;" type="password" placeholder="Passward check" name="pswck" required>
        
       <br>
        <label for="name" style="padding-right:40px;"><b>이름</b></label>
      <input style="width: 130px;" type="text" placeholder="name" name="username">
      <br>
      
      
      <label for="tel" style="padding-right:20px;"><b>전화번호</b></label>
      <select name="areacode">
    	<option value="서울">02</option>
   		<option value="대구">053</option>
    	<option value="부산">051</option>
    	<option value="경기">031</option>
    	<option value="대전">042</option>
    	<option value="충북">043</option>
    	<option value="강원">033</option>
    	<option value="제주">064</option>
	</select>
	-
      <input style="width: 130px;" type="text" placeholder="tel" name="tel">
      <br>
      <label for="phonenum" style="padding-right:35px;"><b>폰번호</b></label>
      <select name="areacode">
    	<option>010</option>
   		<option>011</option>
	</select>
	-
      <input style="width: 130px;" type="text" placeholder="phone" name="phone">
      -
      <input style="width: 130px;" type="text" placeholder="phone" name="phone">
      <br>
      
      <label for="address"><b>주소</b></label>
      <input type="text" placeholder="Enter address" name="address">
      
      <br>
      <label for="email"><b>Email</b></label>
      <input style="width: 130px;" type="text" placeholder="Enter Email" name="email" required>
      @
       <select name="areacode">
    	<option value="네이버">naver.com</option>
   		<option value="구글">gmail.com</option>
    	<option value="다음">daum.net</option>
	</select>
	<button type="button">직접입력</button>
      <hr>
      
      <div class="clearfix">
        <button type="button" onclick="location.href='/aindex'" class="cancelbtn">Cancel</button><!-- document.getElementById('id01').style.display='none' -->
        <button type="submit" onclick="location.href='/aindex'" class="signupbtn">Sign Up</button>
      </div>
      
    </div>
  </form>
</div>

<script>
// Get the modal
/* var modal = document.getElementById('id01');
 */
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
} 
</script>

<!-- // jQuery UI CSS파일  -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- // jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script type="text/javascript">
//script구문 내부에 해당 메소드를 입력합니다.
$(function() {
  $( "#testDatepicker" ).datepicker({
         changeMonth: true, 
         changeYear: true,
         nextText: '다음 달',
         prevText: '이전 달' 
  });
});
</script>

</BODY>
</HTML>

<%@include file="include/footer.jsp"%>


