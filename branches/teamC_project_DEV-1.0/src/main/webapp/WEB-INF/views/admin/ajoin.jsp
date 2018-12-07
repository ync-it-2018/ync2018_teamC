<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Join</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="login-page">
    <div class="login-box">
     <a href="/alogin" data-rel="back" data-direction="reverse" ><img src="/resources/front/images/icons/icon-close2.png" style="margin-left:95%;"></a>
      <div class="login-logo">
        <b>AJoin</b>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Join in to start your session</p>

<form action="/user/loginPost" method="post">
  <div class="form-group has-feedback">
    <input type="text" name="uids" class="form-control" placeholder="USER ID"/>
    <span class="glyphicon glyphicon-user form-control-feedback"></span>
  </div>
  <div class="form-group has-feedback">
    <input type="password" name="apw" class="form-control" placeholder="Password"/>
    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div>
  <div class="form-group has-feedback">
    <input type="passwordcheck" name="apwck" class="form-control" placeholder="PasswordCheck"/>
    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div>
    <div class="form-group has-feedback">
    <input type="text" name="uphone" class="form-control" placeholder="phonenumber"/>
    <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
  </div>
    <div class="form-group has-feedback">
    <input type="text" name="uemail" class="form-control" placeholder="Email"/>
    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
  </div>
  <div class="row">
    <div class="col-xs-8">    
      <!-- <div class="checkbox icheck">
        <label>
          <input type="checkbox" name="check"> agree join
        </label>
      </div>  -->                       
    </div><!-- /.col -->
    <div class="col-xs-4">
      <button type="submit" class="btn btn-primary btn-block btn-flat">Join</button>
    </div><!-- /.col -->
  </div>
</form>


<!--         <a href="#">I forgot my password</a><br>
        <a href="register.html" class="text-center">Register a new membership</a> -->

      </div><!-- /.join-box-body -->
    </div><!-- /.join-box -->

    <!-- jQuery 2.1.4 -->
    <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="/resources/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>