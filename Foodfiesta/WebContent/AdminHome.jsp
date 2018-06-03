<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="com.nis.model.AdminModel"%>
<%@ page import="com.nis.controller.AdminController"%>
<%
AdminModel A = null;
HttpSession ses = request.getSession();
try {
A = (AdminModel) ses.getValue("SADMIN");
String ltime = (String) ses.getValue("SLTIME");
} catch (Exception e) {
response.sendRedirect("AdminLogin.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Light Bootstrap Dashboard by Creative Tim</title>

<meta
content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="assets/assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="assets/assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="assets/assets/css/light-bootstrap-dashboard.css?v=1.4.0"
rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="assets/assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
rel='stylesheet' type='text/css'>
<link href="assets/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

<div class="wrapper">
<div class="sidebar" data-color="purple"
data-image="assets/assets/img/sidebar-5.jpg">

<!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


<div class="sidebar-wrapper">
<div class="logo">
<a href="http://www.creative-tim.com" class="simple-text">
FOODFIESTA </a>
</div>

<ul class="nav">
<li><a href="Dashboard.jsp"> <i class="pe-7s-graph"></i>
<p>Dashboard</p>
</a></li>
<li class="active"><a href="user.jsp"> <i
class="pe-7s-user"></i>
<p>User Profile</p>
</a></li>
<li><a href="table.jsp"> <i class="pe-7s-note2"></i>
<p>Table List</p>
</a></li>

<li><a href="icons.jsp"> <i class="pe-7s-science"></i>
<p>Icons</p>
</a></li>
<li><a href="maps.jsp"> <i class="pe-7s-map-marker"></i>
<p>Maps</p>
</a></li>
<li><a href="notifications.jsp"> <i class="pe-7s-bell"></i>
<p>Notifications</p>
</a></li>
<li class="active-pro"><a href="upgrade.jsp"> <i
class="pe-7s-rocket"></i>
<p>Upgrade to PRO</p>
</a></li>
</ul>
</div>
</div>

<div class="main-panel">
<nav class="navbar navbar-default navbar-fixed">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse"
data-target="#navigation-example-2">
<span class="sr-only">Toggle navigation</span> <span
class="icon-bar"></span> <span class="icon-bar"></span> <span
class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">User</a>
</div>
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav navbar-left">
<li><a href="#" class="dropdown-toggle"
data-toggle="dropdown"> <i class="fa fa-dashboard"></i>
<p class="hidden-lg hidden-md">Dashboard</p>
</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle"
data-toggle="dropdown"> <i class="fa fa-globe"></i> <b
class="caret hidden-sm hidden-xs"></b> <span
class="notification hidden-sm hidden-xs">5</span>
<p class="hidden-lg hidden-md">
	5 Notifications <b class="caret"></b>
</p>
</a>
<ul class="dropdown-menu">
<li><a href="#">Notification 1</a></li>
<li><a href="#">Notification 2</a></li>
<li><a href="#">Notification 3</a></li>
<li><a href="#">Notification 4</a></li>
<li><a href="#">Another notification</a></li>
</ul></li>
<li><a href=""> <i class="fa fa-search"></i>
<p class="hidden-lg hidden-md">Search</p>
</a></li>
</ul>

<ul class="nav navbar-nav navbar-right">
<li><a href="">
<p>Account</p>
</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle"
data-toggle="dropdown">
<p>
	Dropdown <b class="caret"></b>
</p>

</a>
<ul class="dropdown-menu">
<li><a href="#">Action</a></li>
<li><a href="#">Another action</a></li>
<li><a href="#">Something</a></li>
<li><a href="#">Another action</a></li>
<li><a href="#">Something</a></li>
<li class="divider"></li>
<li><a href="#">Separated link</a></li>
</ul></li>
<li><a href="AdminLogin.jsp">
<p>Log out</p>
</a></li>
<li class="separator hidden-lg hidden-md"></li>
</ul>
</div>
</div>
</nav>


<div class="content">
<div class="container-fluid">
<div class="row">
<div class="col-md-8">
<div class="card">
<div class="header">
<h4 class="title">Edit Profile</h4>
</div>
<div class="content">
<form action='EditAdmin' method=post>
<div class="row">

<div class="col-md-3">
<div class="form-group">
<label>Username</label> <input name='adminname' type="text"
class="form-control" placeholder="Username"
value="michael23">
</div>
</div>
<div class="col-md-4">
<div class="form-group">
<label for="exampleInputEmail1">Email address</label> <input
name='email' type="email" class="form-control"
placeholder="Email">
</div>
</div>
</div>

<div class="row">
<div class="col-md-6">
<div class="form-group">
<label> Full Name</label> <input type="text"
class="form-control" placeholder="Company">
</div>
</div>

</div>

<div class="row">
<div class="col-md-12">
<div class="form-group">
<label>Address</label> <input name='address' type="text"
class="form-control" placeholder="Home Address"
value="Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09">
</div>
</div>
</div>




<button id=profilepic class="btn btn-info btn-fill pull-right">Edit
Picture</button>

<button name='btn' type="submit"
class="btn btn-info btn-fill pull-right" vaule='Update'>Update
Profile</button>
<div class="clearfix"></div>
</form>
</div>
</div>
</div>
<div class="col-md-4">
<div class="card card-user">
<div class="image">
<img
src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400"
alt="..." />
</div>
<div class="content">
<div class="author">
<a href="#"> <img class="avatar border-gray" src=""
alt="..." />

<h4 class="title">
<br /> <small>michael24</small>
</h4>
</a>
</div>
<p class="description text-center">
"Lamborghini Mercy <br> Your chick she so thirsty <br>
I'm in that two seat Lambo"
</p>
</div>
<hr>
<div class="text-center">
<button href="#" class="btn btn-simple">
<i class="fa fa-facebook-square"></i>
</button>
<button href="#" class="btn btn-simple">
<i class="fa fa-twitter"></i>
</button>
<button href="#" class="btn btn-simple">
<i class="fa fa-google-plus-square"></i>
</button>

</div>
</div>
</div>

</div>
</div>
</div>


<footer class="footer">
<div class="container-fluid">
<nav class="pull-left">
<ul>
<li><a href="#"> Home </a></li>
<li><a href="#"> Company </a></li>
<li><a href="#"> Portfolio </a></li>
<li><a href="#"> Blog </a></li>
</ul>
</nav>
<p class="copyright pull-right">
&copy;
<script>
document.write(new Date().getFullYear())
</script>
<a href="http://www.creative-tim.com">Creative Tim</a>, made with
love for a better web
</p>
</div>
</footer>

</div>
</div>


</body>

<!--   Core JS Files   -->
<script src="assets/assets/js/jquery.3.2.1.min.js"
type="text/javascript"></script>
<script src="assets/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="assets/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/assets/js/demo.js"></script>

</html>
