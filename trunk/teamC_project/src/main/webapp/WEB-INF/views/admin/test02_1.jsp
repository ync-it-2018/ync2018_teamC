<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<HTML>
 <HEAD>
<script type="text/javascript">
        function add2()
        {
            var name = document.ex.name.value;
            var code = document.ex.code.value;
            opener.popuptest1(name, code);
            self.close()
        }

        function reset()
        {
            document.all.name.value="";
            document.all.code.value="";
        }
 </script>
 </HEAD>
 <BODY>
 
<form name='ex'>
 Name : <input type="text" size="10" name="name" id="name" ><br>
 Code : <input type="text" size="10" name="code" id="code" ><br>

 <input type="button" value="추가" onclick="add2()">
 <input type="button" value="초기화" onClick="reset();">

</form>
 </BODY>
</HTML>



 
 
  