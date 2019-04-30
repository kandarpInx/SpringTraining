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
    	<title>B2B Portal</title>
    	
    	<%@ include file="head.jsp" %>
	        
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <%@ include file="header.jsp" %>
        

        <%@ include file="slider.jsp" %>

        <!-- property area -->
        <div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>Top submitted Products</h2>
                        <!-- <p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies . </p> -->
                    </div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                    
                    	<% 
                    		// select painter_photos.*,photo_categories.cat_name from painter_photos inner join photo_categories on painer_photos.cat_id=photo_categories.id order by painter_photos.id desc 0,8
                    	
                    
                    		
                    		ResultSet rs=MyConnection.SelectQuery("select * from product order by id desc limit 0,8");
                    	
                    		while(rs.next())
                    		{
                    			int id=rs.getInt("id");
                    			String photo=rs.getString("main_photo");
                    			String photo_title=rs.getString("product_name");
                    			float price=rs.getFloat("price");
                    			
                    			%>
                    			<div class="col-sm-6 col-md-3 p0">
		                            <div class="box-two proerty-item">
		                                <div class="item-thumb">
		                                    <a href="ProductDetails.jsp?id=<%= id %>" ><img src="Images/<%= photo %>" style="width:304px;height: 248px;"></a>
		                                </div>
		                                <div class="item-entry overflow">
		                                    <h5><a href="ProductDetails.jsp?id=<%= id %>" ><%= photo_title %></a></h5>
		                                    <div class="dot-hr"></div>
		                                    <span class="pull-left"></span>
		                                    <span class="proerty-price pull-right">Rs. <%= price %></span>
		                                </div>
		                            </div>
		                        </div>
                    			<%
                    		}
                    	%>
                    
                        
                        
                    </div>
                </div>
            </div>
        </div>


        <!--TESTIMONIALS -->
        <%@ include file="testimonials.jsp" %>


        <!-- Footer area-->
        <%@ include file="footer.jsp" %>

        <%@ include file="footer_script.jsp" %>

    </body>
</html>    