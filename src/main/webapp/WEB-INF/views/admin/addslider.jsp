<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="include/header.jsp" %>
<%-- <!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>fms</title>
<link rel="stylesheet" type="text/css" href="/include/table_t.css"></link>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <script type="text/javascript">
$(document).ready(function(){
	var rowTag = $("#addTb2 tbody").html();
	$("#addTb2").data("rowTag", rowTag); 
	//키값 rowTag로 테이블의 기본 row 값의 Html태그 저장
	
	var pollType = $(opener.document).find("#poll_type > option:selected").val();
	var pollSt = $(opener.document).find("#poll_st > option:selected").val();
	var pollId = $(opener.document).find("#poll_id").val();
	
	var startDt = $(opener.document).find("#start_dt").val();
	var endDt = $(opener.document).find("#end_dt").val();
	var useYn = $(opener.document).find("#use_yn > option:selected").val();
	var pollTitle = $(opener.document).find("#poll_title").val();
	
	$('#form1').append("<input type='hidden' name='poll_type' value='"+pollType+"'/>");
	$('#form1').append("<input type='hidden' name='poll_st' value='"+pollSt+"'/>");
	$('#form1').append("<input type='hidden' name='use_yn' value='"+useYn+"'/>");
	$('#form1').append("<input type='hidden' name='poll_id' value='"+pollId+"'/>");
	
	$('#form1').append("<input type='hidden' name='start_dt' value='"+startDt+"'/>");
	$('#form1').append("<input type='hidden' name='end_dt' value='"+endDt+"'/>");
	
	$('#form1').append("<input type='hidden' name='poll_title' value='"+pollTitle+"'/>");
 
 

 
});
function fnAddRow(){
 var rowlen = $("#addTb2 tr").length-1;
 $("#addTb2 tbody").append($("#addTb2").data("rowTag"));
 
 fnSetRowNo();
}
function fnDelRow(obj){
 if($("#addTb2 tr").length < 3){
  alert("더이상 삭제할 수 없습니다.");
  return false;
 }else{
  $(obj).parent().parent().remove();
  
  fnSetRowNo();
 }
}
function fnSetRowNo(){
    var span = $("#addTb2 tbody tr td span");  
    var span_cnt = span.length; // tbody안의 tr안에 td안에 span 태그들의 갯수
    if(span_cnt == 1){ // span이 한개일경우 순번 붙이기
        $("span.#idrownum").text("A1")
    }else{ // span이 여러개일경우 순번 붙이기
        $.each(span,function(index){
			 index=index+1;
           $(this).text('A'+index);
		   $(this).closest("tr").attr("id",'A'+index); 
		   $(this).closest("checkbox").attr("id",'A'+index); 
        });
    } 
    
}
 
 function rowCheDel() {
  var $obj = $("input[name='chk']");
  var checkCount = $obj.size();
  for ( var i = 0; i < checkCount; i++) {
   if ($obj.eq(i).is(":checked")) {
    $obj.eq(i).parent().parent().remove();
   }
  }
 }
 
 
var savetomain = function(){

	var a_data = new Array();
	var questionId = $("input[name='question']").attr("id");
	var max = $('input[name="answer[]"]').length


	$($('input[name="answer[]"]').get().reverse()).each(function(i){
		a_data[i] = $(this).val();
		index = i ;

		$(opener.document).find("#"+questionId).after("<tr><td align='center'></td><td align='center'> <input type='hidden' name='q_value' value='"+questionId+"^"+(max-index)+"' size='5'> <input type='hidden' name='max' value='"+max+"' size='5'> A"+(max-index)+" <input type='text' name='answer<%=qidx%>' value='"+a_data[i]+"' style='width:80%;'><input type=checkbox name='answer_rem' value='"+questionId+"^"+(max-index)+"' />별도설명허용</td><td align='center'><input type='button' value='답변삭제' onclick='fnDelRow(this)'/></td></tr>");

	});

	

	closeWin();
}
 
function closeWin() {
    self.opener = self;
	window.close();
}
</script>
<script>
function save()
	{
		if(confirm('등록하시겠습니까?'))
		{
			var fm = document.form1;
			if(fm.question.value == ''){		alert('질문내용을 입력하십시오');	return;	}
		//	else if(fm.answer1.value == ''){	alert('대답1 입력하십시오');	return;	}
		//	else if(fm.answer2.value == ''){	alert('대답2 입력하십시오');	return;	}

			
				
			fm.target='ii_no';
			fm.submit();
		}
	}
</script>

</head>
<body>
<form name='form1' method='post' action='answer_a.jsp' id="form1">
<input type='hidden' name='auth_rw' value='<%=auth_rw%>'>
<input type='hidden' name='br_id' value='<%=br_id%>'>
<input type='hidden' name='user_id' value='<%=user_id%>'>
<!--
<input type='hidden' name='question' value='<%=question%>'>
<input type='hidden' name='poll_title' value='<%=poll_title%>'>
<input type='hidden' name='poll_type' value='<%=poll_type%>'>
<input type='hidden' name='poll_st' value='<%=poll_st%>'>
<input type='hidden' name='start_dt' value='<%=start_dt%>'>
<input type='hidden' name='end_dt' value='<%=end_dt%>'>
<input type='hidden' name='poll_id' value='<%=poll_id%>'>
<input type='hidden' name='use_yn' value='<%=use_yn%>'>
-->
<table border=0 cellspacing=0 cellpadding=0 width=100%>
	<tr>
		<td class=h></td>
	</tr>
	<tr> 
		<td class=line>
			<table border="0" cellspacing="1" cellpadding="0" width=100%>
				<tr>
					<td class="title" height="35">질문내용</td>
				</tr>
				<tr>
					<td align="">&nbsp;&nbsp;<input type="text" id="<%=qidx%>" name="question" style="width:90%;" value="<%=qidx+" "%><%=question%>">&nbsp;&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class=h></td>
	</tr>
	<tr>
		<td class=line2></td>
	</tr>
	<tr>
		<td><input type="button" value="답변추가" onclick="fnAddRow()"/></td>
	</tr>
	
	<tr>
		<td class=line>
			<table id="addTb2" border="0" cellspacing="1" cellpadding="0" width=100%>
				<thead>
					<tr>
						<th align="center">No.</th>
						<th align="center">답변관리</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr class="tbltr"> 
						<td align="center">
							<span class="idrownum" id="idrownum">A1</span>
						</td>
						<td align="center">
							<input type="text" id="answer" name="answer" style="width:80%;" />
							<input type='checkbox' name='answer_rem' id='answer_rem' value="Y" />별도설명허용
							<input type='hidden' name='answer_rem_value' value="Y" />
						</td>
						<td align="center">
							<input type="button" value="삭제" onclick="fnDelRow(this)"/>
						</td>
					</tr>
				</tbody>
			</table>
		</td>
	</tr>
</table>	

		
<input type="button" value="넣기" onclick="savetomain()"/>
<input type="button" value="닫기" onclick="closeWin()"/>
<input type="button" value="저장하기" onclick="save()"/>

</form>
</body>
</html> --%>

<!DOCTYPE html>
<html>
<head>
  <TITLE> New Document </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">

<style type="text/css">
table {background-color:#505050;width:600px; margin-left : 7%; margin-top: 7%;}
 .normal {background-color:#FFFFFF;font-size:9pt;height:30px;text-align:center;width:150px;}
 .activetd {background-color:#B0B0B0;font-size:9pt;height:30px;text-align:center;width:150px;}
 .edittd {background-color:#FFFFFF;font-size:9pt;height:30px;text-align:left;width:150px;}
 
</style>

<script language="javascript">
function appendRow() {
 var tr_obj    = document.getElementById("sample");
 var clone_obj = tr_obj.cloneNode(true)

 tr_obj.parentNode.appendChild(clone_obj);
}

function deleteRow() {
 var tr_obj    = document.getElementById("sample");
 var tbody_obj = tr_obj.parentNode;
 var tbl_obj   = tbody_obj.parentNode;
 var tbl_cnt   = tbl_obj.rows.length;tbl_cnt

 if(tbl_cnt < 3) {
  alert('삭제할 행이 없습니다.');

  return;
 }

 tr_obj.parentNode.removeChild(tr_obj);
}
</script>
 </HEAD>

 <BODY>
<table width="70%" border="1" cellpadding="0" cellspacing="0">
  <col width="20%">
  <tr>
  <!-- 테이블 번호 자동생성 -->
    <td class="normal"> 순서</td>
    <td class="normal"> 슬라이드 제목</td>
<!--     <td class="normal">취미</td>
    <td class="normal">기타</td> -->
    <td class="normal"></td>
  </tr>
  <tr id="sample">
    <td class="normal"><input type="text" name="docName"></td>
    <td class="normal"><input type="text" name="docAge"></td>
    <td class="normal"><input type="button" value="추가" onclick="appendRow();"><input type="button" value="삭제" onclick="deleteRow();"></td>
<!-- <td class="normal"><input type="text" name="docHabit"></td>
    <td class="normal"><input type="text" name="docEtc"></td> -->  
  </tr>
</table>
 </BODY>
</HTML>
    
<%@include file="include/footer.jsp" %>
 
 
  