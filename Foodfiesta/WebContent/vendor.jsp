<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
<script src="assets/jquery-2.2.1.min.js"></script>
<script src="assets/statecity.js"></script>
s
  <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="VendorRegSubmit" method="post" enctype='multipart/form-data'>
          
          
            <div class="field-wrap">
              <label>
                Name<span class="req">*</span>
              </label>
              <input type="text" id=name name=name required autocomplete="off" />
            </div>
          

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" id=email name=email required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Address<span class="req">*</span>
            </label>
            <input type="text" id=address name=address required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Contact Number<span class="req">*</span>
            </label>
            <input type="integer" id=mob name=mob required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              State&nbsp;<span class="req"></span>
            </label>
            <select id=state  class=tab name=state ><option>-State-</option></select>
          </div>
          
          <div class="field-wrap">
            <label>
              City&nbsp;<span class="req"></span>
            </label>
            <select id=city name=city><option>-City-</option></select>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" id=password name=password required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Confirm Password<span class="req">*</span>
            </label>
            <input type="password" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Id Proof<span class="req">*</span>
            </label>
            <input type="file" id=idproof name=idproof required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block" id=start/>Get Started</button>
          <span id=mess></span>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="/" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
