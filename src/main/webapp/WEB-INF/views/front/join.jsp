<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;
	}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 150px;
    opacity: 0.9;
    border-radius: 27px;
    
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #3c3b3b;
    border-radius: 27px;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 200px;
  margin-left: 250px;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #fff;
    width: 80%; /* Could be more or less, depending on screen size */
    border-radius: 25px;
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #BDBDBD;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}

.bg{
   
    background-color: #ebebeb;
}

#id-size{
    width: 130px;
}

</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body class="bg">

<div > 
  
  <form class="modal-content" id="signUpForm" method="POST" action="/signup/signup.do">
  
  <!--  action="/action_page.php" -->
    <div class="container">
     <a href="/" data-rel="back" data-direction="reverse" ><img src="/resources/front/images/icons/icon-close2.png" style="margin-left:95%;"></a> 
    
      <h1>Sign Up</h1>
      <p>회원정보입력</p>
      <hr>
      <label for="id" style="padding-right:60px;"><b>ID</b></label>
      	<input style="width: 130px;" type="text" placeholder="Enter ID" name="M_ID">
      	<button type="button">중복체크</button>
      <br>
      <label for="pwd" style="padding-right:10px;"><b>비밀번호</b></label>
      	<input style="width: 130px;" type="password" placeholder="Enter pwd" name="M_PWD" required>
      	<label for="pwdck"><b>비밀번호확인</b></label>
      	<input style="width: 130px;" type="password" placeholder="Passward check" name=""m_pwdchk"" required>
       <br>
      <label for="name" style="padding-right:40px;"><b>이름</b></label>
      	<input style="width: 130px;" type="text" placeholder="name" name="M_NAME">
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
      <input style="width: 130px;" type="text" placeholder="tel" name="M_TEL">
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
      <input type="text" placeholder="Enter address" name="M_ADDRESS">
      
      <br>
      <label for="email"><b>Email</b></label>
      <input style="width: 130px;" type="text" placeholder="Enter Email" name="M_EMAIL" required>
      @
       <select name="areacode">
    	<option value="네이버">naver.com</option>
   		<option value="구글">gmail.com</option>
    	<option value="다음">daum.net</option>
	</select>
	<button type="button" >직접입력</button>
      <hr>
      
      <!-- <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label> -->
		 <p>반려견 정보 (*선택)</p>
	<hr>	 
	 <label for="name" style="padding-right:30px;"><b>반려견 이름</b></label>
      <input style="width: 130px;" type="text" placeholder="petname" name="POINT">   
		<label for="gender" style = "padding:100px;"><b>성별</b></label>
		<input type="radio" name="gender">
		<label>암</label>
		<input type="radio" name="gender">
		<label>수</label>   
   <br>
    <label for="name" style="padding-right:80px;"><b>견종</b></label>
      <input style="width: 130px;" type="text" placeholder="petname" name="LEVEL_CODE"> 
      
	      <div class="clearfix">
	        <button type="button" onclick="location.href='/'" class="cancelbtn">Cancel</button><!-- document.getElementById('id01').style.display='none' -->
	        
	        <button type="submit" class="signupbtn" >Sign Up</button>
	        
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
</body>
</html>