<%@page import="com.model.CompanyInboxOutbox"%>
<%@page import="com.model.CompanyPost"%>
<%@page import="java.io.File"%>
<%@page import="com.util.IConstant"%>
<%@page import="com.model.CategoryMaster"%>
<%@page import="java.util.List"%>
<%@page import="com.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" %>

    
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
              <h3 class="box-title">Outbox</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Id</th>
                  <th>To</th>
                  <th>Message</th>                                                     
                </tr>
                </thead>
                <tbody>
                
                <%
                	try(Session s=HibernateUtil.getSessionFactory().openSession())
                	{
                		int company_id=Integer.parseInt(session.getAttribute("company_id").toString());
                		
                		List<CompanyInboxOutbox> li=s.createQuery("from CompanyInboxOutbox cp where cp.fromCompanyRegistration.id=:company_id order by cp.id DESC", CompanyInboxOutbox.class)
                								.setParameter("company_id", company_id)                								
                								.list();
                		
                		for(CompanyInboxOutbox m:li)
                		{
                			%>
                			<tr>
			                  <td><%= m.getId() %></td>
			                  <td><%= m.getCompanyRegistration().getCompany_name() %></td>
			                  <td><%= m.getMessage() %></td>                  			                  
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
    