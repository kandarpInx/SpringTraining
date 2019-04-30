<%-- <%@page import="com.model.CompanyMemberType"%>
<%@page import="java.util.List"%>
<%@page import="com.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>

<title>B2B</title>

<%@ include file="head.jsp"%>

</head>
<body class="hold-transition register-page">

	<div class="register-box">
		<div class="register-logo">
			<a href="index.jsp"><b>Company </b>REGISTRATION</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>

			<form action="/B2B/CompanyRegistrationServlet" method="post"
				enctype="multipart/form-data">
				<div class="form-group has-feedback">
					<input type="text" class="form-control" placeholder="Company Name" name="company_name"  maxlength="45" minlength="3" pattern="^[a-zA-Z]+$" required> 
						<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="email" class="form-control" placeholder="Email" name="email" maxlength="45" minlength="10"required> 
						<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" name="password" minlength="6" pattern="^[_A-z0-9]{1,}$" maxlength="12" placeholder="Enter Password"  required/> 
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

				<div class="form-group">
					<label for="exampleInputFile">Logo</label> <input type="file"
						id="exampleInputFile" name="photo">
				</div>

				<div class="form-group">
					<label>Member Type</label> <select class="form-control"
						name="company_member_type_id">
						<%
                    
                    	
                    	Session s=HibernateUtil.getSessionFactory().openSession();
                    
        				
                    	List<CompanyMemberType> li=s.createQuery("from CompanyMemberType",CompanyMemberType.class)
                    							.list();
                    	
                    	for(CompanyMemberType cm:li)
                    	{
                    		%>
						<option value="<%= cm.getId() %>"><%= cm.getMembertype_name() %></option>
						<%
                    	}
                    %>
					</select>
				</div>

				<div class="row">

					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" name="btnSave"
							class="btn btn-primary btn-block btn-flat">Register</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<a href="index.jsp" class="text-center">I already have a
				membership</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->


	<%@ include file="footer_script.jsp"%>

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
 --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.model.CompanyMemberType"%>
<%@page import="java.util.List"%>
<%@page import="com.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Company Registration</title>
 	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="css-1/style.css" />
	<style>
		img{
  			max-width:180px;
		}
		input[type=file]{
			padding:10px;
			background:#f5f5f5;}
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
	<style>
		#csize{
		width: 550px;
		}
	</style>
	<style>
		#slogo{
		top: 25px;
		}
	</style>
</head>
<body>
</head>
</head>
<body>

    <div class="container" id="csize">
		<h2 class="well" id="header">Company Registration</h2>    
        <form class="form validity" action="/B2B/CompanyRegistrationServlet" method="post"
				enctype="multipart/form-data">
			<div class="col-lg-12 well" id="header">	
         		<div class="form-group has-feedback">
         		<label>Company Name</label>
					<input type="text" class="form-control" placeholder="Company Name" name="company_name" data-missing="This field is required" data-mismatch="Please include a valid name"  maxlength="45" minlength="3" pattern="^[a-zA-Z]+$" required> 
						<span class="glyphicon glyphicon-user form-control-feedback"id="slogo"></span>
				</div>
				<div class="form-group has-feedback">
				<label>EmailId</label>
					<input type="email" class="form-control" placeholder="Email" name="email" data-missing="This field is required" data-mismatch="Please include a valid email" maxlength="45" minlength="10"required> 
						<span class="glyphicon glyphicon-envelope form-control-feedback" id="slogo"></span>
				</div>
				<div class="form-group has-feedback">
				<label>Password</label>
					<input type="password" class="form-control" name="password" data-missing="This field is required" data-mismatch="Please include a valid password" minlength="6" pattern="^[_A-z0-9]{1,}$" maxlength="12" placeholder="Enter Password"  required/> 
						<span class="glyphicon glyphicon-lock form-control-feedback"id="slogo"></span>
				</div>

				<div class="form-group">
					<label for="exampleInputFile">Logo</label> <input type="file"
						id="exampleInputFile" name="photo">
				</div>

				<div class="form-group">
					<label>Member Type</label> <select class="form-control"
						name="company_member_type_id">
						<%
                    
                    	
                    	Session s=HibernateUtil.getSessionFactory().openSession();
                    
        				
                    	List<CompanyMemberType> li=s.createQuery("from CompanyMemberType",CompanyMemberType.class)
                    							.list();
                    	
                    	for(CompanyMemberType cm:li)
                    	{
                    		%>
						<option value="<%= cm.getId() %>"><%= cm.getMembertype_name() %></option>
						<%
                    	}
                    %>
					</select>
				</div>

				<div class="row">

					<!-- /.col -->
					<div class="col-xs-12">
						<button type="submit" name="btnSave"
							class="btn btn-primary btn-block btn-flat">Register</button>
					</div>
					<!-- /.col -->
				</div>
				<a href="index.jsp" class="text-center">I already have a
				membership</a>
         		
         		
         		
         		
		     </div>  
		</form>  
	</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js1/jquery.validity.js"></script>
<script src="js1/script.js"></script>

</body>
</html>
 
 
 
 
 
 
 
 
 
 
 