<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="../admin/include/header.jsp"%>

<div>
   <!-- Main content -->
   <section class="content">
      <div class="row">
         <!-- left column -->
         <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
               <div class="box-header">
                  <h3 class="box-title">REGISTER NOTICE</h3>
               </div>
               <!-- /.box-header -->

               <form role="form" method="post">
                  <div class="box-body">
                     <div class="form-group">
                        <label for="exampleInputEmail1">Code</label> 
                        <input type="text" id="nCode" name='nCode' class="form-control"
                           placeholder="Enter Code">
                     </div>
                     <div class="form-group">
                        <label for="exampleInputEmail1">Title</label> 
                        <input type="text" id="nTitle" name='nTitle' class="form-control"
                           placeholder="Enter Title">
                     </div>
                     <div class="form-group">
                        <label for="exampleInputEmail1">Content</label>
                        <textarea class="form-control" id="nContents" name="nContents"
                           rows="3" placeholder="Enter ..."></textarea>
                     </div>

                  </div>

                  <!-- /.box-body -->

                  <div class="box-footer">
                     
                     <button type="submit" id="regist" class="btn btn-primary">등록</button>
                     <!-- <button type="submit" id="goListBtn" class="btn btn-primary">취소</button> -->

                  </div>
               </form>

            </div>
            <!-- /.box -->
         </div>
         <!--/.col (left) -->

      </div>
      <!-- /.row -->
   </section>
   <!-- /.content -->
</div>
<!-- /.content-wrapper -->


<script type="text/javascript" src="/resources/js/upload.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script>	 

	var form = document.getElementById("form");
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	 $("#regist").click(function(){
		var nCode = $("#nCode").val();
		var nTitle = $("#nTitle").val();
		var nContents = $("#nContents").val();
		
		if(nCode == ""){
			alert("번호를 입력하세요");
			form.nCode.focus();
			return;
		}
		if(nTitle == ""){
			alert("제목을 입력하세요");
			form.nTitle.focus();
			return;
		}
		if(nContents == ""){
			alert("내용을 입력하세요");
			orm.nContents.focus();
			return;
		}
		form.action = "<c:url value='/aNotice'/>";
		form.submit();
		
		
		$('#goListBtn').on('click',function(){
			formObj.attr("method", "get");
			formObj.attr("action", "/aNotice");
			formObj.submit();
		});
	}); 
</script>


<%@include file="../admin/include/footer.jsp"%>

