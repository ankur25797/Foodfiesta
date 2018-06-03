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
                                        <li><a href="ClientMenu.jsp">Menu</a></li>
                                       
                                        <li><a href="#mobaileapps">Pages</a></li>
                                     	<li><a href="#abouts">About Us</a></li>
                                        
                                       <li><a href="try.jsp" id=logout>Log Out</a></li>
                                        
                                    
                                    </ul>
                                </div><!-- /.navbar-collapse -->
                                
                            </div><!-- /.container-fluid -->
     
                        </nav>
                        
                    </div>
                </div>
            </div>	
        </header> <!-- End Header Section -->

        <section id="slider" class="slider">
            <div class="slider_overlay">
                <div class="container">
                    <div class="row">
                        <div class="main_slider text-center">
                            <div class="col-md-12">
                                <div class="main_slider_content wow zoomIn" data-wow-duration="1s">
                                    <h1>Food Fiesta</h1>
                                    <p>"Lets unite world's multiple cuisines in a single feast."</p>
                                     <h5>	FoodFiest Welcomes <%= C.getName() %><br>(<%= C.getEmail() %>)</h5>
                                    <button href="" class="btn-lg">Order</button>
                                </div>
                            </div>	
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section id="abouts" class="abouts">
            <div class="container">
                <div class="row">
                    <div class="abouts_content">
                        <div class="col-md-6">
                            <div class="single_abouts_text text-center wow slideInLeft" data-wow-duration="1s">
                                <img src="assets/images/ab.png" alt="" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="single_abouts_text wow slideInRight" data-wow-duration="1s">
                                <h4>About us</h4>
                                <h3>WE ARE TASTY</h3>
                                <p>Hundreds of eyes glued on to television screens, sweat trickling down the temples of nervous faces, followed by a deafening roar killing the moments of silence. Thousands dancing on the streets thereafter, noise piercing through the silent corridors of an uptight conference room, mindless gigs on an overflowing sofa. Yes, we are talking about cricket – the only phenomenon that creates this kind of hysteria in India. And one thing that perfectly matches this celebration is Food, which is loved by one and all. Foodfiesta has found an exciting way to bring the two together when the biggest Cricket Carnival is on – <b>Foodfiesta Cricfeast</b>. This feast comes with extra delicious food that you will relish forever. We will tell you how. When you order food online or on phone, you set off a chain reaction that could have a #WinchakDhichak ending for you. You will get a chance to win every 5 mins. You could win one of 100 food variety discount e-booklets or one of 1,440 fiesta e-vouchers worth Rs 500 each. If you are lucky, you may hit the boundary and win free feast for a whole year. And if you are any luckier, you could win an iPhone 6. It’s not just one or two iPhone 6, you have a chance to win one every day, for 60 days! The luckiest 3 could win a couple’s trip to Australia. So what are you waiting for? The pitch is ready and players are ready to bowl your favourite recipie. You just need to bat along. So, next time you are watching the match and the door bell rings, it could be a #WinchakDhichak moment right at your doorstep.</p>

                                <a href="" class="btn btn-primary">order your feast</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="features" class="features">
            <div class="slider_overlay">
                <div class="container">
                    <div class="row">
                        <div class="main_features_content_area  wow fadeIn" data-wow-duration="3s">
                            <div class="col-md-12">
                                <div class="main_features_content text-left">
                                    <div class="col-md-6">
                                        <div class="single_features_text">
                                            <h4>Special Recipes</h4>
                                            <h3>Taste of Precious</h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stan</p>
                                            <p>dard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesettingdard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting</p>

                                            <a href="" class="btn btn-primary">click here</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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
                                        <li> Hot Coffee......................................................... </li>
                                        <li> Cold Coffee......................................................... </li>
                                        <li> Special Lemon Drink......................................................... </li>
                                        <li> Shakes......................................................... </li>
                                        <li> Cocktail/Mocktail......................................................... </li>
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
                                        <li> Shahi Veggies......................................................... </li>
                                        <li> Shahi Daal......................................................... </li>
                                        <li> Kaju curry......................................................... </li>
                                        <li> Lasagna......................................................... </li>
                                        <li> Honey Garlic Chicken......................................................... </li>
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
                                        <li> Woopie Pie......................................................... </li>
                                        <li> Chocolate Mouse......................................................... </li>
                                        <li> ButterScotch Mouse......................................................... </li>
                                        <li> Strawberry cups......................................................... </li>
                                        <li> Pineapple pie......................................................... </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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