<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<%@ page import="com.nis.model.Vendor" %>
    <%@ page import="com.nis.controller.VendorController" %>
	
	<% HttpSession ses=request.getSession();
		//PrintWriter out=response.getWriter();
	   //out.println("<html>");
		//create navigation bar
		Vendor V=null;
		try{
		V=(Vendor)ses.getValue("SVENDOR");	
		String ltime=(String)ses.getValue("SLTIME");

		}catch(Exception e){
		//	out.println(e);
		response.sendRedirect("vendor2.jsp");	
		}
%>

<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Add Menu</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    
    <link href="assets assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
	
	
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                   <%= V.getName() %>,<%= V.getVid() %>
                   
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="dashboard.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li class="active">
                    <a href="table.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Table List</p>
                    </a>
                </li>
                
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Table List</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
								<p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret hidden-sm hidden-xs"></b>
                                    <span class="notification hidden-sm hidden-xs">5</span>
									<p class="hidden-lg hidden-md">
										5 Notifications
										<b class="caret"></b>
									</p>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
								<p class="hidden-lg hidden-md">Search</p>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               <p>Account</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <p>
										Dropdown
										<b class="caret"></b>
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
                              </ul>
                        </li>
                        <li>
                            <a href="vendor2.jsp">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Main Course</h4>
                                <p class="category">(Add meal without GST)</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        
                                    	<th>Item</th>
                                    	<th>Cost</th>
                                    </thead>
                                    <tbody>
                                    <form action="AddMaincourse">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=mci ></td>
                                        	<td><input type=number name=mcc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm1"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddMaincourse">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=mci ></td>
                                        	<td><input type=number name=mcc ></td>
  											<td><input type=submit value=Add></td>   
  											<td><span id="mm2"></span></td>                                 
                                        </tr>
                                    </form>
                                    <form action="AddMaincourse">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=mci ></td>
                                        	<td><input type=number name=mcc ></td>
  											<td><input type=submit value=Add></td>                                      
                                        	<td><span id="mm3"></span></td>
                                        </tr>
                                    </form>
                                    <form action="AddMaincourse">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=mci ></td>
                                        	<td><input type=number name=mcc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm4"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddMaincourse">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=mci ></td>
                                        	<td><input type=number name=mcc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm5"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddMaincourse">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=mci ></td>
                                        	<td><input type=number name=mcc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm6"></span></td>                                      
                                        </tr>
                                    </form>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
				<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Starters</h4>
                                <p class="category">(Add meal without GST)</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        
                                    	<th>Item</th>
                                    	<th>Cost</th>
                                    </thead>
                                    <tbody>
                                    <form action="AddStarters">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sti ></td>
                                        	<td><input type=number name=mstc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm1"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddStarters">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sti ></td>
                                        	<td><input type=number name=stc ></td>
  											<td><input type=submit value=Add></td>   
  											<td><span id="mm2"></span></td>                                 
                                        </tr>
                                    </form>
                                    <form action="AddStarters">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sti ></td>
                                        	<td><input type=number name=stc ></td>
  											<td><input type=submit value=Add></td>                                      
                                        	<td><span id="mm3"></span></td>
                                        </tr>
                                    </form>
                                    <form action="AddStarters">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sti ></td>
                                        	<td><input type=number name=stc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm4"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddStarters">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sti ></td>
                                        	<td><input type=number name=stc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm5"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddStarters">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sti ></td>
                                        	<td><input type=number name=stc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm6"></span></td>                                      
                                        </tr>
                                    </form>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Deserts</h4>
                                <p class="category">(Add meal without GST)</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        
                                    	<th>Item</th>
                                    	<th>Cost</th>
                                    </thead>
                                    <tbody>
                                    <form action="AddDeserts">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=di ></td>
                                        	<td><input type=number name=dc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm1"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddDeserts">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=di ></td>
                                        	<td><input type=number name=dc ></td>
  											<td><input type=submit value=Add></td>   
  											<td><span id="mm2"></span></td>                                 
                                        </tr>
                                    </form>
                                    <form action="AddDeserts">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=di ></td>
                                        	<td><input type=number name=dc ></td>
  											<td><input type=submit value=Add></td>                                      
                                        	<td><span id="mm3"></span></td>
                                        </tr>
                                    </form>
                                    <form action="AddDeserts">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=di ></td>
                                        	<td><input type=number name=dc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm4"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddDeserts">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=di ></td>
                                        	<td><input type=number name=dc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm5"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddDeserts">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=di ></td>
                                        	<td><input type=number name=dc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm6"></span></td>                                      
                                        </tr>
                                    </form>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Drinks</h4>
                                <p class="category">(Add meal without GST)</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        
                                    	<th>Item</th>
                                    	<th>Cost</th>
                                    </thead>
                                    <tbody>
                                    <form action="AddDrinks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=dri ></td>
                                        	<td><input type=number name=drc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm1"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddDrinks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=dri ></td>
                                        	<td><input type=number name=drc ></td>
  											<td><input type=submit value=Add></td>   
  											<td><span id="mm2"></span></td>                                 
                                        </tr>
                                    </form>
                                    <form action="AddDrinks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=dri ></td>
                                        	<td><input type=number name=drc ></td>
  											<td><input type=submit value=Add></td>                                      
                                        	<td><span id="mm3"></span></td>
                                        </tr>
                                    </form>
                                    <form action="AddDrinks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=dri ></td>
                                        	<td><input type=number name=drc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm4"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddDrinks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=dri ></td>
                                        	<td><input type=number name=drc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm5"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddDrinks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=dri ></td>
                                        	<td><input type=number name=drc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm6"></span></td>                                      
                                        </tr>
                                    </form>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Snacks</h4>
                                <p class="category">(Add meal without GST)</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        
                                    	<th>Item</th>
                                    	<th>Cost</th>
                                    </thead>
                                    <tbody>
                                    <form action="AddSnacks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sni ></td>
                                        	<td><input type=number name=snc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm1"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddSnacks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sni ></td>
                                        	<td><input type=number name=snc ></td>
  											<td><input type=submit value=Add></td>   
  											<td><span id="mm2"></span></td>                                 
                                        </tr>
                                    </form>
                                    <form action="AddSnacks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sni ></td>
                                        	<td><input type=number name=snc ></td>
  											<td><input type=submit value=Add></td>                                      
                                        	<td><span id="mm3"></span></td>
                                        </tr>
                                    </form>
                                    <form action="AddSnacks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sni ></td>
                                        	<td><input type=number name=snc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm4"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddSnacks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sni ></td>
                                        	<td><input type=number name=snc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm5"></span></td>                                      
                                        </tr>
                                    </form>
                                    <form action="AddSnacks">
                                        <tr>
                                        <input type=hidden name=vid value=<%= V.getVid() %>>
                                        	<td><input type=text name=sni ></td>
                                        	<td><input type=number name=snc ></td>
  											<td><input type=submit value=Add></td>
  											<td><span id="mm6"></span></td>                                      
                                        </tr>
                                    </form>
                                    </tbody>
                                </table>

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
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                </p>
            </div>
        </footer>


    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets assets/js/demo.js"></script>


</html>
