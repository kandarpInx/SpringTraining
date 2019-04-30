<%@page import="com.model.CompanyMemberType"%>
<%@page import="java.io.File"%>
<%@page import="com.util.IConstant"%>
<%@page import="com.model.CategoryMaster"%>
<%@page import="java.util.List"%>
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

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
   

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Id</th>
                  <th>Type Name</th>
                  <th>Amount</th>                  
                  <th>Duration</th>
                  <th>Delete</th>
                  <th>Edit</th>
                </tr>
                </thead>
                <tbody>
                
                <%
                	try(Session s=HibernateUtil.getSessionFactory().openSession())
                	{
                		List<CompanyMemberType> li=s.createQuery("from CompanyMemberType", CompanyMemberType.class)
                								.list();
                		
                		for(CompanyMemberType m:li)
                		{
                			%>
                			<tr>
			                  <td><%= m.getId() %></td>
			                  <td><%= m.getMembertype_name() %></td>
			                  <td><%= m.getAmount() %></td>                  
			                  <td><%= m.getDuration() %></td>
			                  <td><a href="/B2B/CompanyMemberTypeServlet?del_id=<%= m.getId() %>">Delete</a></td>
			                  <td><a href="EditCompanyMemberType.jsp?edit_id=<%= m.getId() %>">Edit</a></td>
			                </tr>
                			<%
                		}
                	}
                	catch(Exception e)
                	{
	                	e.printStackTrace();
    	            }
                %>
                
                </tbody>
                <!-- <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </tfoot> -->
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

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
    