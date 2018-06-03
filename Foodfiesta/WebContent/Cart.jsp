<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Foodfiesta</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->

		<%@ page import="com.nis.controller.ClientController" %>
		<%@ page import="com.nis.model.Client" %>
        <!--For Plugins external css-->
        
        <link rel="stylesheet" href="assets/css/animate/animate.css" />
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
        <script src="assets/jquery-2.2.1.min.js"></script>
		<script src="assets/reg.js"></script>

    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
           <%@ page import="com.nis.model.Client" %>
    		<%@ page import="com.nis.controller.ClientController" %>
        
        <%
        HttpSession ses=request.getSession();

        Client C=null;
		try{
		C=(Client)ses.getValue("SCLIENT");	
		String ltime=(String)ses.getValue("LTIME");
		//String navbar="<h4>"+C.getEmail()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+C.getName()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+ltime+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=ClientLogout>Logout</a></h4><hr color=Blue>";
	    //out.println(navbar);
		}catch(Exception e){
		//	out.println(e);
		response.sendRedirect("ClientLogin");	
		}
        %>
		<div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <header id="home" class="navbar-fixed-top">
            <div class="header_top_menu clearfix">	
                <div class="container">
                    <div class="row">	
                        <div class="col-md-5 col-md-offset-3 col-sm-12 text-right">
                            <div class="call_us_text">
								<a href=""><i class="fa fa-clock-o"></i> Order Foods on time</a>
								<a href=""><i class="fa fa-phone"></i>075 6660 0076</a>
					
								
							</div>
                        </div>

                        <div class="col-md-4 col-sm-12">
                            <div class="head_top_social text-right">
                                <a href=""><i class="fa fa-facebook"></i></a>
                                <a href=""><i class="fa fa-google-plus"></i></a>
                                <a href=""><i class="fa fa-twitter"></i></a>
                                <a href=""><i class="fa fa-linkedin"></i></a>
                                <a href=""><i class="fa fa-pinterest-p"></i></a>
                                <a href=""><i class="fa fa-youtube"></i></a>
                            </div>	
                        </div>

                    </div>			
                </div>
            </div>

            <!-- End navbar-collapse-->

            <div class="main_menu_bg">
                <div class="container"> 
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand our_logo" href="#"><img src="assets/images/logo.png" alt="" /></a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="#slider">Home</a></li>
                                       
                                        <li><a href="#features">Features</a></li>
                                        <li><a href="#portfolio">Menu</a></li>
                                       
                                        <li><a href="#mobaileapps">Pages</a></li>
                                     	<li><a href="#abouts">About Us</a></li>
                                        <li><a href="#" class="booking">Table Booking</a></li>
                                       <li><a href="#mobaileapps" id=logout>Log Out</a></li>
                                        
                                    
                                    </ul>
                                </div><!-- /.navbar-collapse -->
                                
                            </div><!-- /.container-fluid -->
     
                        </nav>
                        
                    </div>
                </div>
            </div>	
        </header> <!-- End Header Section -->

     

        <section id="portfolio" class="portfolio">
            <div class="container">
                <div class="row">
                    <div class="portfolio_content text-center  wow fadeIn" data-wow-duration="5s">
                        <div class="col-md-12">
                            <div class="head_title text-center">
                                <h4>Delightful</h4>
                                <h3>Experience</h3>
                            </div>

                            <div class="main_portfolio_content">
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p1.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Delicious Egg Dishes</h6>
                                       
                                        <a href="#ourPakeg" class="btn btn-primary">Click here</a>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p2.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>The Classic Salads</h6>
                                        
                                        <a href="#ourPakeg" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p3.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>King of vegies:Potato</h6>
                                        
                                        <a href="#ourPakeg" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p4.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Variety of rolls</h6>
                                        <a href="#ourPakeg" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p5.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Seasonables</h6>
                                        
                                        <a href="#ourPakeg" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p6.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Indian Tadka</h6>
                                        
                                        <a href="#ourPakeg" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p7.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Bhandara Style</h6>
                                        
                                        <a href="#ourPakeg" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p8.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Cuisines Special</h6>
                                        
                                        <a href="#ourPakeg" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<form action="GenerateBill">
        <section id="ourPakeg" class="ourPakeg">
            <div class="container">
                <div class="main_pakeg_content">
                    <div class="row">
                        <div class="head_title text-center">
                            <h4>Amazing</h4>
                            <h3>Delicious</h3>
                        </div>

                        <div class="single_pakeg_one text-right wow rotateInDownRight">
                            <div class="col-md-6 col-md-offset-6 col-sm-8 col-sm-offset-4">
                                <div class="single_pakeg_text">
                                    <div class="pakeg_title">
                                       <a href=ClientMenu.jsp > <h4>Drinks</h4></a>
                                    </div>

                                    <ul>
                                      <input  type="checkbox"  <li> Cold Coffee.....</li><br>
                                        <input  type="checkbox"  <li> Special Lemon Drink.... </li><br>
                                        <input  type="checkbox"  <li>Shakes.... </li><br>
                                         <input  type="checkbox"  <li>Cocktail/Mocktail...... </li><br>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single_pakeg_two text-left wow rotateInDownLeft">
                            <div class="col-md-6 col-sm-8">
                                <div class="single_pakeg_text">
                                    <div class="pakeg_title">
                                       <a href=ClientMenu.jsp > <h4>Main course </h4></a>
                                    </div>

                                    <ul>
                                         <input  type="checkbox"  <li> Shahi Veggies......... </li><br>
                                         <input  type="checkbox"  <li> Shahi Daal......</li><br>
                                        <input  type="checkbox"  <li> Lasagna..... </li><br>
                                        <input  type="checkbox"  <li>Honey Garlic Chicken...... </li><br>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single_pakeg_three text-left wow rotateInDownRight">
                            <div class="col-md-6 col-md-offset-6 col-sm-8 col-sm-offset-4">
                                <div class="single_pakeg_text">
                                    <div class="pakeg_title">
                                        <a href=ClientMenu.jsp ><h4>Desserts</h4></a>
                                    </div>

                                    <ul>
                                         <input  type="checkbox"  <li> Woopie Pie......... </li><br>
                                         <input  type="checkbox"  <li> Chocolate Mouse......... </li><br>
                                         <input  type="checkbox"  <li> ButterScotch Mouse......... </li><br>
                                         <input  type="checkbox"  <li> Strawberry cups..... </li><br>
                                         <input  type="checkbox"  <li> Pineapple pie...... </li><br>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        	
			<input type="submit" value="Generate Bill" id="signup"
											class="btn btn-primary"> 
        </form>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        <section id="mobaileapps" class="mobailapps">
            <div class="slider_overlay">
                <div class="container">
                    <div class="row">
                        <div class="main_mobail_apps_content wow zoomIn">
                            <div class="col-md-5 col-sm-12 text-center">
                                <img src="assets/images/iphone.png" alt="" />
                            </div>
                            <div class="col-md-7 col-sm-12">
                                <div class="single_monail_apps_text">
                                    <h4> Happy to Announce </h4>
                                    <h1>Mobile App <span>Comming Soon......</span></h1>

                                    <a href=""><img src="assets/images/google.png" alt="" /></a>
                                    <a href=""><img src="assets/images/apps.png" alt="" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="footer_widget" class="footer_widget" align="center">
            <div class="container" align="center">
                <div class="row" align="center">
                    <div class="footer_widget_content text-center" align="center">
                        <div class="col-md-4" align="center">
                            <div class="single_widget wow fadeIn" data-wow-duration="2s">
                                <h3>Take it easy with location</h3>

                                <div class="single_widget_info">
                                    <p>Madhav Institute of Technology and Science,

                                        <span>Gole ka mandir,</span>
                                        <span>Gwalior</span>
                                        <span class="phone_email">phone: 7566600076</span>
                                        <span>Email: ami25797@gmail.com<br>ansdohare@gmail.com</span></p>
                                </div>

                                <div class="footer_socail_icon">
                                    <a href=""><i class="fa fa-facebook"></i></a>
                                    <a href=""><i class="fa fa-google-plus"></i></a>
                                    <a href=""><i class="fa fa-twitter"></i></a>
                                    <a href=""><i class="fa fa-linkedin"></i></a>
                                    <a href=""><i class="fa fa-pinterest-p"></i></a>
                                    <a href=""><i class="fa fa-youtube"></i></a>
                                    <a href=""><i class="fa fa-phone"></i></a>
                                    <a href=""><i class="fa fa-camera"></i></a>
                                </div>
                            </div>
                        </div>

                        

                      
                    </div>
                </div>
            </div>
        </section>



        <!--Footer-->
        <footer id="footer" class="footer">
            <div class="container text-center">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright wow zoomIn" data-wow-duration="3s">
							<p>Made with <i class="fa fa-heart"></i> by Web Crackers(Amisha & ankur)</a>2018. All Rights Reserved</p>
						</div>
                    </div>
                </div>
            </div>
        </footer>
		
		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>		


        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery-easing/jquery.easing.1.3.js"></script>
        <script src="assets/js/wow/wow.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>