<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Foodfiesta</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


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
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<header id="home" class="navbar-fixed-top">
	<div class="header_top_menu clearfix">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-offset-3 col-sm-12 text-right">
					<div class="call_us_text">
						<a href=""><i class="fa fa-clock-o"></i> Order Foods on time</a> <a
							href=""><i class="fa fa-phone"></i>075 6660 0076</a>
					</div>
				</div>

				<div class="col-md-4 col-sm-12">
					<div class="head_top_social text-right">
						<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
							class="fa fa-google-plus"></i></a> <a href=""><i
							class="fa fa-twitter"></i></a> <a href=""><i
							class="fa fa-linkedin"></i></a> <a href=""><i
							class="fa fa-pinterest-p"></i></a> <a href=""><i
							class="fa fa-youtube"></i></a>
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
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand our_logo" href="#"><img
							src="assets/images/logo.png" alt="" /></a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">

						<ul class="nav navbar-nav navbar-right">
							<li><a href="#slider">Home</a></li>
							<li><a href="#abouts">Menu</a></li>
							<li><a href="#features">Features</a></li>
							<li><a href="#portfolio">Delivery</a></li>

							<li><a href="#mobaileapps">App</a></li>


							<li><a href="#footer_widget">SignIn/SignUp</a></li>
							<li><a href="#" class="booking">Table Booking</a></li>

						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid --> </nav>
			</div>
		</div>
	</div>
	</header>
	<!-- End Header Section -->


	<br>
	<br>
	<br>

	<section id="footer_widget" class="footer_widget">
	<div class="container">
		<div class="row">
			<div class="footer_widget_content text-center">
				<div class="col-md-4">
					<div class="single_widget wow fadeIn" data-wow-duration="2s">
						<h3>Take it easy with location</h3>

			
					</div>
				</div>

				<div class="col-md-4">
					<div class="single_widget wow fadeIn" data-wow-duration="4s">
						<h3>Admin Panel</h3>
					<form action="CheckAdminLogin">
						<div class="single_widget_info">
							<div class="form-group">
								<input type="email" class="form-control" name="email" 
									placeholder="Email" required="" >
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password"
									 placeholder="Password" required="" >
							</div>
							<input type="submit" value="Sign in"
								class="btn btn-primary"> 
								<span id=lmsg></span>
						</div>
					</form>
				</div>
			</div>

				<div class="col-md-4">
					<div class="single_widget wow fadeIn" data-wow-duration="5s">
						

					
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
					<p>
						Made with <i class="fa fa-heart"></i> by Web Crackers(Amisha)</a>2018.
						All Rights Reserved
					</p>
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
