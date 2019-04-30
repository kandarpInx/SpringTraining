<%@page import="com.model.CompanyMemberType"%>
<%@page import="com.model.CategoryMaster"%>
<%@page import="com.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html>
<head>
  
  <title>B2B</title>

  <%@ include file="head.jsp" %>
  
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <%@ include file="header.jsp" %>

  <!-- =============================================== -->

  <%@ include file="sidebar.jsp" %>
  
  <!-- =============================================== -->

	<%
		if(request.getParameter("edit_id")!=null)
		{
			int id=Integer.parseInt(request.getParameter("edit_id"));
			
			
			
			try(Session s=HibernateUtil.getSessionFactory().openSession())
			{						
				CompanyMemberType c=s.get(CompanyMemberType.class, id);
				
				if(c!=null)
				{
					%>
					
					<!-- Content Wrapper. Contains page content -->
					  <div class="content-wrapper">
					    <!-- Content Header (Page header) -->
					        <!-- Main content -->
					    <section class="content">
					      <div class="row">
					        <!-- left column -->
					        <div class="col-md-12">
					          <!-- general form elements -->
					          <div class="box box-primary">
					            <div class="box-header with-border">
					              <h3 class="box-title">Member Type</h3>
					            </div>
					            <!-- /.box-header -->
					            <!-- form start -->
					            <form role="form" method="post" action="/B2B/CompanyMemberTypeServlet">
					            
					            	<input type="hidden" name="id" value="<%= c.getId() %>" />
					            
					              <div class="box-body">
					                <div class="form-group">
					                  <label for="exampleInputEmail1">Member Type Name</label>
					                  <input type="text" class="form-control" value="<%= c.getMembertype_name() %>" id="exampleInputEmail1" placeholder="Enter Member Type Name" name="membertype_name">
					                </div>
					               
					                <div class="form-group">
					                  <label for="exampleInputEmail1">Amount</label>
					                  <input type="text" class="form-control" value="<%= c.getAmount() %>" id="exampleInputEmail1" placeholder="Enter Amount" name="amount">
					                </div>
					                
					                <div class="form-group">
					                  <label for="exampleInputEmail1">Duration</label>
					                  <input type="text" class="form-control" value="<%= c.getDuration() %>" id="exampleInputEmail1" placeholder="Enter Duration" name="duration">
					                </div>
					               
					              </div>
					              <!-- /.box-body -->
					
					              <div class="box-footer">
					                <button type="submit" name="btnUpdate" class="btn btn-primary">Update</button>                
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
					
					
					<%
				}
				else
				{
					response.sendRedirect("index.jsp");
				}						
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}	
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	%>

  

  <%@ include file="footer.jsp" %>

  <%@ include file="rightbar.jsp" %>
  
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<%@ include file="footer_script.jsp" %>
</body>
</html>
    