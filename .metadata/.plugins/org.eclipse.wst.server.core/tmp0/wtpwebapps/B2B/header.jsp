<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" %>

<div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                            <p>
                                <span><i class="pe-7s-call"></i> +91 8511152651</span>                                
                                <span><i class="pe-7s-mail"></i> kandarp@gmail.com</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                        <div class="header-half header-social">
                            <!-- <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-vine"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>        
        <!--End top header -->

        <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="UserTemplate/assets/img/b2b logo.jpg" alt="no image" id="logo"></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
						<%
							if(session.getAttribute("email")!=null)
							{
								%>     
								<button class="navbar-btn nav-button wow bounceInRight login" onclick="document.location='/B2B/LogoutServlet';" data-wow-delay="0.45s">Logout</button>
								<%
							}
							else
							{
								%>
								<button class="navbar-btn nav-button wow bounceInRight login" onclick="document.location='Login.jsp';" data-wow-delay="0.45s">Login</button>
								<%
							}
						%>                                                	
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="index.jsp">Home</a></li>

                        <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="Categories.jsp">Categories</a></li>
         
                        <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="BuyOffers.jsp">Buy Offer</a></li>
                        
                        <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="SellOffer.jsp">Sell Offer</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->    