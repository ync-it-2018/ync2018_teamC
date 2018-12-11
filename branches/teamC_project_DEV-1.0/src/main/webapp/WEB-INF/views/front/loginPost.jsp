<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <script type="text/javascript">
    //self.location = "/user/value";
  </script>
  
  <p>
  	아이디 : ${UserVO.mId}
  </p>
  <p>
  	패스워드 : ${UserVO.mPwd}
  </p>
  <p>
  	이름 : ${UserVO.mName}
  </p>
  
  <input id="loginok" type="button" value="OK"/>
  
</body>
</html>