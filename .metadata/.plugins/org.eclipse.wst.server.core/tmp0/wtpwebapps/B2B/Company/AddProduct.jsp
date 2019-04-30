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
  
  <script src="../js/jquery-3.3.1.js"></script>
  
  <script type="text/javascript">
  	$(document).ready(function()
  			{
  				displaySubCategory();
  		
  				$('#cat_id').change(function(){
  					displaySubCategory();
  				});  				
  			});
  	
  	function displaySubCategory()
  	{
  		var cat_id=$('#cat_id').val();
	  		
			$.ajax({
				type:'POST',
				url:'response_subcategories_dropdown.jsp',
				data:{cat_id:cat_id},
				success:function(response)
				{
					$('#sub_category').html(response);
				}
			});
  	}
  </script>
  
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
              <h3 class="box-title">Product</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" method="post" action="/B2B/ProductServlet" enctype="multipart/form-data">
              <div class="box-body">
                
                <div class="form-group">
                  <label>Category</label>
                  <select class="form-control" name="cat_id" id="cat_id">
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
                
                <div id="sub_category">
                	
                	
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Product Name</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Product Name" name="product_name">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Model No</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Model No" name="model_no">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Price</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Price" name="price">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Discount</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Discount" name="discount">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Description</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Discount" name="description">
                </div>
               
                <div class="form-group">
                  <label for="exampleInputFile">Main Photo</label>
                  <input type="file" id="exampleInputFile" name="photo">
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
    