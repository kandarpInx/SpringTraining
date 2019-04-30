<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
    	<title>Login</title>
    	
    	<%@ include file="head.jsp" %>
	      <style>
        #cwidth{
        max-width:600px;
        }
        </style>
        <style>
        #tsize{
        margin-left: 7px;
        }
        </style> 
        <style>
        #header{
        margin-left: 250px;
        }
        </style>  
        
        
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="css-1/style.css" />      
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <%@ include file="header.jsp" %>
       
		<%@ include file="page_head_content.jsp" %>
		
        <!-- register-area -->
<!--         <div class="register-area" style="background-color: rgb(249, 249, 249);">
            <div class="container" id="cwidth">
                <div class="col-md-12">
                    <div class="box-for overflow">                         
                        <div class="col-md-12 col-xs-12 login-blocks">
                       		 <div class="row">
                            	<h2 id="tsize">Login : </h2> 
                            	<form action="/B2B/UserLoginServlet" method="post">
                                	<div class="form-group">
                                    	<label for="email" id="tsize">Email</label>
                                    	<input name="email" type="text" class="form-control" id="email" maxlength="45" minlength="10" placeholder="Enter Emailid" required>
                                	</div>
                                	<div class="form-group">
                                    	<label for="password" id="tsize">Password</label>
                                    	<input name="password" type="password" class="form-control" id="password" minlength="6" pattern="^[_A-z0-9]{1,}$" maxlength="12" placeholder="Enter Password"  required>
                                	</div>
                                	<div class="text-center">
                                    	<button name="btnLogin" type="submit" class="btn btn-default"> Log in</button>
                                	</div><br/>
                            	</form>
                              	<div class="text-center">    
                               		<a href="Company/CompanyRegistration.jsp">
     									<button type="button" class="btn btn-default">Registration</button>
             						</a> 
                              	</div>                        
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  -->  
        
            <div class="container"> 
		<div class="col-lg-6 well" id="header">
		<h3 ><center>Login Form</center></h3>   
        <form  class="form validity" action="/B2B/AdminLoginServlet" method="post">
			
         		<div class="form-group">
               		<label for="email" id="tsize">Email</label>
                  	<input name="email" type="text" class="form-control" id="email" data-missing="This field is required" data-mismatch="Please include a valid emailid" maxlength="45" minlength="5" placeholder="Enter Emailid" required>
           		</div>
                <div class="form-group">
               		<label for="password" id="tsize">Password</label>
                  	<input name="password" type="password" class="form-control" id="password" data-missing="This field is required" data-mismatch="Please include a valid password" minlength="5" pattern="^[_A-z0-9]{1,}$" maxlength="12" placeholder="Enter Password"  required>
               	</div>
               	<div class="text-center">
             		<button name="btnLogin" type="submit" class="btn btn-primary btn-block btn-flat"> Log in</button>
                </div><br/>
		       
		</form>
		<div class="text-center">    
       		<a href="Company/CompanyRegistration.jsp">
   				<button type="button" class="btn btn-primary btn-block btn-flat">Registration</button>
            </a> 
       	</div> 
       	</div> 
	</div>
  
      	<!-- Footer area-->
        <%@ include file="footer.jsp" %>
        <%@ include file="footer_script.jsp" %>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js1/jquery.validity.js"></script>
<script src="js1/script.js"></script>
    </body>
</html>    