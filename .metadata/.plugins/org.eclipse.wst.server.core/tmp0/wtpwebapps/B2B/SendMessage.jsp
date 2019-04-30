<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
    	<title>Login</title>
    	
    	<%@ include file="head.jsp" %>
	        
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <%@ include file="header.jsp" %>
        
		
		<%@ include file="page_head_content.jsp" %>
		
        
        <!-- register-area -->
        <div class="register-area" style="background-color: rgb(249, 249, 249);">
            <div class="container">

                

                <div class="col-md-6">
                    <div class="box-for overflow">                         
                        <div class="col-md-12 col-xs-12 login-blocks">
                            <h2>Send Message : </h2> 
                            <form action="/B2B/SendMessageServlet" method="post">
                                <input type="hidden" name="company_id" value="<%= request.getParameter("company_id") %>" />
                                <div class="form-group">
                                    <label for="password">message</label>
                                    <textarea name="message" rows="10" class="form-control"></textarea>
                                </div>
                                <div class="text-center">
                                    <button name="btnSendMessage" type="submit" class="btn btn-default"> Send</button>
                                </div>
                            </form>
                                                      
                        </div>
                        
                    </div>
                </div>

            </div>
        </div>    


        <!-- Footer area-->
        <%@ include file="footer.jsp" %>

        <%@ include file="footer_script.jsp" %>

    </body>
</html>    