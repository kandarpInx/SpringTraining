<%@page import="com.model.CompanyMemberType"%>
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
			<b>It would be great to hear from you! </b>
		</div>

		<div class="register-box-body">

			<form action="/B2B/CompanyRegistrationServlet" method="post"
				enctype="multipart/form-data">
				<div class="form-group has-feedback">
				<label for="email2">Your name *</label>
					<input type="text" class="form-control" placeholder="Enter Your Name"
						name="company_name"> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				
				<div class="form-group has-feedback">
				<label for="email2">EmailId *</label>
					<input type="email" class="form-control" placeholder="Enter Email"
						name="email"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				
					<div class="form-group has-feedback">
					<label for="email2">Contact number *</label>
					<input type="email" class="form-control" placeholder="Contact number "
						name="email"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				
					<div class="form-group has-feedback">
					<label for="email2">Your message *</label>
					<input type="email" class="form-control" placeholder="Enter message "
						name="email"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
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
 <%@ include file="CFooter.jsp" %>

        <%@ include file="CFooterScript.jsp" %>
</body>
</html>
