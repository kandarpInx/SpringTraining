<%@page import="com.model.CompanyRegistration"%>
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
        <div class="col-md-12">          

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Contact                
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                  <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-default btn-sm" data-widget="remove" data-toggle="tooltip"
                        title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
              
                
                <%
                	int company_id=Integer.parseInt(session.getAttribute("company_id").toString());
                
                	try(Session s=HibernateUtil.getSessionFactory().openSession())
                	{
                		s.beginTransaction();
                		
                		CompanyRegistration cr=s.get(CompanyRegistration.class, company_id);
                		
                		String contact="";
                		int contact_id=0;
                		
						if(cr.getCompanyContact()!=null)
						{
							contact=cr.getCompanyContact().getCompany_contact();
							contact_id=cr.getCompanyContact().getId();
						}		
						
						%>
						<form method="post" action="/B2B/CompanyContactServlet">
                
                			<input type="hidden" name="id" value="<%= contact_id %>" />
                
			                <textarea name="company_contact" class="textarea" placeholder="Place some text here"
			                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><%= contact %></textarea>
			                          
							
							 <div class="box-footer">
							 	<%
							 		if(contact_id==0)
							 		{
							 			%>
							 			<button type="submit" name="btnSave" class="btn btn-primary">Submit</button>
							 			<%	
							 		}
							 		else
							 		{
							 			%>
							 			<button type="submit" name="btnUpdate" class="btn btn-primary">Update</button>
							 			<%	
							 		}
							 	%>			                	               
			              	</div>
							                          
			              </form>
						<%
                		
                		s.getTransaction().commit();
                	}
                	catch(Exception e)
                	{
                		e.printStackTrace();
                	}
                	
                %>
                
                
            </div>
          </div>
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
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

<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>

</body>
</html>
    