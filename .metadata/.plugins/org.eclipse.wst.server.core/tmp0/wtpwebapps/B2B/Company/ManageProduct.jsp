<%@page import="com.model.Product"%>
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
              <h3 class="box-title">Data</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Id</th>
                  <th>Image</th>
                  <th>Name</th>
                  <th>Model</th>                  
                  <th>Company</th>
                  <th>Category</th>
                  <th>Price</th>
                  <th>Discount</th>
                  <th>DP</th>
                  <th>Delete</th>
                  <th>Edit</th>
                </tr>
                </thead>
                <tbody>
                
                <%
                	try(Session s=HibernateUtil.getSessionFactory().openSession())
                	{
                		int company_id=Integer.parseInt(session.getAttribute("company_id").toString());
                		
                		List<Product> li=s.createQuery("from Product p where p.companyRegistration.id=:company_id", Product.class)
                								.setParameter("company_id", company_id)
                								.list();
                		
                		for(Product m:li)
                		{
                			%>
                			<tr>
			                  <td><%= m.getId() %></td>
			                  <td><img src="../Images/<%= m.getMain_photo() %>" width="60" height="60" /></td>
			                  <td><%= m.getProduct_name() %></td>                  
			                  <td><%= m.getModel_no() %></td>
			                  <td><%= m.getCompanyRegistration().getCompany_name() %></td>
			                  <td><%= m.getSubCategory().getCategoryMaster().getCategory_name()+" - "+m.getSubCategory().getSubcategory_name() %></td>
			                  <td><%= m.getPrice() %></td>
			                  <td><%= m.getDiscount() %></td>
			                  <td><%= m.getDiscounted_price() %></td>
			                  <td><a href="/B2B/ProductServlet?del_id=<%= m.getId() %>">Delete</a></td>
			                  <td><a href="EditProduct.jsp?edit_id=<%= m.getId() %>">Edit</a></td>
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
    