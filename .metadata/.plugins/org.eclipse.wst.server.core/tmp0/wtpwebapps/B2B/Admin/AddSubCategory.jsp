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
    <!-- Content Header (Page header) -->
        <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">SubCategory</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" method="post" action="/B2B/SubCategoryServlet" enctype="multipart/form-data">
              <div class="box-body">
              
              	 <div class="form-group">
                  <label>Select</label>
                  <select class="form-control" name="cat_id">
                    <%
                    	Session s=HibernateUtil.getSessionFactory().openSession();
                    
                    	List<CategoryMaster> li=s.createQuery("from CategoryMaster",CategoryMaster.class)
                    							.list();
                    	
                    	for(CategoryMaster cm:li)
                    	{
                    		%>
                    		<option value="<%= cm.getId() %>"><%= cm.getCategory_name() %></option>
                    		<%
                    	}
                    %>
                  </select>
                </div>
              
                <div class="form-group">
                  <label for="exampleInputEmail1">SubCategory Name</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter SubCategory Name" name="subcategory_name">
                </div>
               
                <div class="form-group">
                  <label for="exampleInputFile">File input</label>
                  <input type="file" id="exampleInputFile" name="photo">
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="status"> Status
                  </label>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" name="btnSave" class="btn btn-primary">Submit</button>                
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
    