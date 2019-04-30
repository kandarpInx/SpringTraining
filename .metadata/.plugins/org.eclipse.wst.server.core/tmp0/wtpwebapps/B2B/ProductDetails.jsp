<%@page import="com.connection.MyConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
    	<title>Product Details</title>
    	
    	<%@ include file="head.jsp" %>
	        
    </head>
    <body>
    
    	

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <%@ include file="header.jsp" %>
        
        <%@ include file="page_head_content.jsp" %>
        
        
        <%
    		if(request.getParameter("id")!=null)
    		{
    			int id=Integer.parseInt(request.getParameter("id"));
    		
    			ResultSet rs=MyConnection.SelectQuery("select product.*,company_registration.id,company_registration.company_name,company_registration.company_logo from product inner join company_registration on product.company_id=company_registration.id where product.id='"+id+"'");
    			
    			if(rs.next())
    			{
    				int company_id=Integer.parseInt(rs.getString("company_id"));
    				String photo=rs.getString("main_photo");
    				String company_logo=rs.getString("company_logo");
    				String description=rs.getString("description");
    				float price=rs.getFloat("price");
    				String model_no=rs.getString("model_no");
    				String product_name=rs.getString("product_name");
    				float discount=rs.getFloat("discount");
    				float discounted_price=rs.getFloat("discounted_price");
    				
    				%>
    				
    				<!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40" >

                    <div class="col-md-8 single-property-content prp-style-1 ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    
                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <li data-thumb="UserTemplate/assets/img/property-1/property1.jpg"> 
                                            <img src="Images/<%= photo %>" style="width: 250px; height: 250x;" />
                                        </li>                                                                            
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single-property-wrapper">
                                                        
                            <div class="section" style="margin-top:20px;">
                                <h4 class="s-property-title">Description</h4>
                                <div class="s-property-content">
                                    <p><%= description %></p>
                                </div>
                            </div>
                            <!-- End description area  -->
                                                       
                        </div>
                    </div>


                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="dealer-widget">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">

                                        <div class="clear">
                                            <div class="col-xs-4 col-sm-4 dealer-face">
                                                <a href="">
                                                    <img src="Images/<%= company_logo %>" style="width: 88px; height: 88px;" class="img-circle">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <a href=""><%= product_name %></a>
                                                    <!-- <span>Real Estate Agent</span> -->        
                                                </h3>
                                               
                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li>Rs. <%= price %> 
                                                <form method="post" action="/B2B/SendMessageServlet">
                                                	<input type="hidden" name="company_id" value="<%= company_id %>" />
                                                	<input type="submit" name="btnBuy" value="Message" />
                                                </form>
                                                </li>                                                
                                            </ul>
                                            <p>Discount <%= discount %> %</p>
                                            <p>Discounted Price Rs.<%= discounted_price %></p>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">
                                
                                
                            </div>                          

                            

                            

                        </aside>
                    </div>
                </div>

            </div>
        </div>
    				
    				<%	
    			}
    			else
    			{
    				response.sendRedirect("index.jsp");
    			}
    			
    			
    			
    		}
    		else
    		{
    			response.sendRedirect("index.jsp");
    		}
    	%>
        
        

        <!-- Footer area-->
        <%@ include file="footer.jsp" %>

        <%@ include file="footer_script.jsp" %>

    </body>
</html>    