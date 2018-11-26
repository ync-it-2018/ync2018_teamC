<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="include/header.jsp" %>
<!DOCTYPE html>
<HTML>
 <HEAD>
<script type="text/javascript">
function popup()
{
    var flag;
    //http://naver.com
    var url = "test02_1";
    var popupname = "popupwin";

    flag = "left=200, ";
    flag += "top=200, ";
    flag += "width=400, ";
    flag += "height=250";
    window.open(url, popupname, flag);
}

function popuptest1(name, code)
{
    var testtable = document.getElementById("popuptest");
    var tr = document.createElement("tr");
    tr.setAttribute("height", "30");
    if (name == "" || code == "") {
        alert('문자 입력하시오');
        return;
    }

    var td1 = document.createElement("td");
    td1.setAttribute("width", "100");

    var td2 = document.createElement("td");
    td2.setAttribute("width", "200");

    tr.appendChild(td1);
    tr.appendChild(td2);

    td1.innerText = name;
    td2.innerText = code;

    if (testtable.firstChild.lastChild.childNodes.length == 1)
        testtable.firstChild.removeChild(testtable.firstChild.lastChild);

    testtable.firstChild.appendChild(tr);
}
 </script>
 </HEAD>
 <BODY>
 
    팝업테스트  <input type="button" value="popup" onclick="popup()"> <p><p>
    <table id="popuptest" border="2">
        <tr>
            <th width="100">name</th>
            <th width="100">code</th>
        </tr>
    </table>
 </BODY>
</HTML>


<%@include file="include/footer.jsp" %>
 
 
  