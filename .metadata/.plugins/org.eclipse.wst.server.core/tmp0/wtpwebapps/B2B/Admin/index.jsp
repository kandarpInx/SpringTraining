<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html>
<head>
  
  <title>Admin LogIn</title>
	
  <%@ include file="head.jsp" %>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="css-1/style.css" />
  <style>
		#slogo{
		top: 0px;
		}
	</style>
	
	<style>
		body { 
		background: url(http://i.imgur.com/GHr12sH.jpg) no-repeat center center fixed;
    	-webkit-background-size: cover;
    	-moz-background-size: cover;
    	-o-background-size: cover;
    	background-size: cover;
    	}
	</style>
</head>
<body>
<div class="login-box">
  <div class="login-logo">
   <b>Admin</b>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    <form class="form validity" action="/B2B/AdminLoginServlet" method="post">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Username" name="username" data-missing="This field is required" data-mismatch="Please include a valid username"  maxlength="45" minlength="3" required>
        <span class="glyphicon glyphicon-envelope form-control-feedback" id="slogo"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" name="password" data-missing="This field is required" data-mismatch="Please include a valid password"  maxlength="12" minlength="5" required>
        <span class="glyphicon glyphicon-lock form-control-feedback" id="slogo"></span>
      </div>
      <div class="row">       
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" name="btnLogin" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<%@ include file="footer_script.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js1/jquery.validity.js"></script>
<script src="js1/script.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
    