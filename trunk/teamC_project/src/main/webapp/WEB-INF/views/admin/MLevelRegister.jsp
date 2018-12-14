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
                        <label for="exampleInputEmail1">LEVEL_CODE</label> 
                        <input type="text" id="mlCode" name='mlCode' class="form-control"
                           placeholder="Enter Code">
                     </div>
                     <div class="form-group">
                        <label for="exampleInputEmail1">LNAME</label> 
                        <input type="text" id="lName" name='lName' class="form-control"
                           placeholder="Enter Title">
                     </div>
                     <div class="form-group">
                        <label for="exampleInputEmail1">LPOINT(등급별 적립률)</label>
                        <textarea class="form-control" id="lPoint" name="lPoint"
                           rows="3" placeholder="Enter ..."></textarea>
                     </div>

                  </div>

                  <!-- /.box-body -->

                  <div class="box-footer">
                     
                     <input type="button" id="regist" class="btn btn-primary" value="등록"/>
                     

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
		var mlCode = $("#mlCode").val();
		var lName = $("#lName").val();
		var lPoint = $("#lPoint").val();
		
		if(mlCode == ""){
			alert("번호를 입력하세요");
			form.mlCode.focus();
			
		}
		if(lName == ""){
			alert("등급명을 입력하세요");
			form.lName.focus();
		}
		if(lPoint == ""){
			alert("내용을 입력하세요");
			orm.lPoint.focus();
		}
		form.action = "<c:url value='/admin/MLevel'/>";
		form.submit();
			
	}); 
	 
</script>


<%@include file="../admin/include/footer.jsp"%>

