<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.priyam.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
.coll{
margin: 20px;
}
body { 
background-image: url("images/bg.jpg");
background-size: cover;
} 
div.card {
  opacity: 0.75;
}
div.card:hover{
opacity: 1.0;
}
.three-column-footer-contact-form-container {
  background-color: #474e5d;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form {
  max-width: 75rem;
  margin-right: auto;
  margin-left: auto;
  color: #e6e6e6;
  padding: 3.75rem 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form::before, .three-column-footer-contact-form-container .three-column-footer-contact-form::after {
  display: table;
  content: ' ';
  -webkit-flex-basis: 0;
      -ms-flex-preferred-size: 0;
          flex-basis: 0;
  -webkit-order: 1;
      -ms-flex-order: 1;
          order: 1;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form::after {
  clear: both;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form a {
  color: #e6e6e6;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left {
  width: 100%;
  float: left;
  padding-right: 0.625rem;
  padding-left: 0.625rem;
  display: table;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left .baseline {
  display: table-cell;
  vertical-align: bottom;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left .contact-details p {
  font-size: 0.8rem;
  margin-bottom: 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left .input-group {
  padding: 2rem 0 0 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left .input-group input {
  border-bottom: 2px solid #cacaca;
}

@media print, screen and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left:last-child:not(:first-child) {
  float: right;
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left {
    width: 25%;
    float: left;
    padding-right: 0.625rem;
    padding-left: 0.625rem;
  }
}

@media print, screen and (min-width: 64em) and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left:last-child:not(:first-child) {
    float: right;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center {
  text-align: left;
  width: 100%;
  float: left;
  padding-right: 0.625rem;
  padding-left: 0.625rem;
  display: table;
}

@media print, screen and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center:last-child:not(:first-child) {
  float: right;
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center {
    width: 33.33333%;
    float: left;
    padding-right: 0.625rem;
    padding-left: 0.625rem;
    position: relative;
    left: 8.33333%;
  }
}

@media print, screen and (min-width: 64em) and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center:last-child:not(:first-child) {
    float: right;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center .baseline {
  display: table-cell;
  vertical-align: bottom;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center .input-group {
  padding: 0.5rem 0 0 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center .input-group input {
  border-bottom: 2px solid #cacaca;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center .input-group textarea {
  border-bottom: 2px solid #cacaca;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right {
  text-align: right;
  width: 100%;
  float: left;
  padding-right: 0.625rem;
  padding-left: 0.625rem;
  display: table;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right .baseline {
  display: table-cell;
  vertical-align: bottom;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right h2 {
  color: #fefefe;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right p {
  font-size: 0.8rem;
  margin-bottom: 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right .fa {
  padding: 1rem 0 1rem 0.2rem;
}

@media print, screen and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right:last-child:not(:first-child) {
  float: right;
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right {
    width: 25%;
    float: left;
    padding-right: 0.625rem;
    padding-left: 0.625rem;
  }
}

@media print, screen and (min-width: 64em) and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right:last-child:not(:first-child) {
    float: right;
  }
}

.container2 {
    background-color: #a3e1e6;

  border-radius: 70px;
  padding: 20px;
  width:70%;


}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
  </style>
<title>Registration</title>
</head>
<body>
    <%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%> 
<%
User user=(User)session.getAttribute("user");
String ver=(String)session.getAttribute("verification");
if(user!=null&&ver!=null&&ver.equals("y")){
	request.getRequestDispatcher("home.jsp").forward(request, response);
}
String warning=(String)request.getAttribute("warning");
%>
    <ul>
        <li><a href="#HOME">HOME</a></li>
        <li><a href="aboutus.jsp">ABOUT US</a></li>
        <li><a  href="contactus2.jsp">CONTACT US</a></li>
                 <li><a  href="report.jsp">BUG REPORT</a></li>
        
        <li style="float:right"><a   href="login.jsp">SIGN IN</a></li>
        <li style="float:right"><a class="active" href="register.jsp">REGISTER</a></li>

      </ul>

<div class="container-fluid coll">
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4">
<div class="card">
<div class="card-body">
<h5 class="text-danger" ><%= (warning!=null)?warning:"" %></h5>
  <h2>Please enter your details</h2>
  <form action="ValidateServlet" method="post">
    <div class="form-group">
      <label for="uname">Email:</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter email" name="email" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
        <div class="form-group">
      <label for="uname">Name:</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter name" name="name" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <button type="submit" name="validate" value="register" class="btn btn-primary">Submit</button>
  </form>
  <h5>Registered already?<a href="login.jsp">Login here.</a></h5>
</div>
</div>
</div>
<div class="col-sm-4"></div>
</div>
</div>
<div style="padding-top: 10cm">
    <div class="three-column-footer-contact-form-container">
        <footer class="three-column-footer-contact-form" data-equalizer data-equalize-by-row="true">
          <div class="footer-left" data-equalizer-watch>
            <div class="baseline">
              <div class="contact-details">
                <h6>Contact details</h6>
                <p><i class="fa fa-phone fa-lg" aria-hidden="true"></i> 01234 567890</p>
                <p><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> Contact us</a></p>
                <p><i class="fa fa-map-marker fa-lg" aria-hidden="true"></i> Street, City, County, Country</p>
              </div>
            
            </div>
           </div>
          <div class="footer-center" data-equalizer-watch>
            <div class="baseline">
              <div class="newsletter">
             
              </div>
            </div>
          </div>
        
          <div class="footer-right" data-equalizer-watch>
            <div class="baseline">
              <img class="thumbnail" src="https://placehold.it/100">
              <h6>Opening times</h6>
              <p>Mon - Fri 9:00am - 5:00pm</p>
              <p>Sat 9:00am - 8:00pm</p>
              <p>Sun 9:00am - 4:00pm</p>
              <div class="social">
                <i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i>
                <i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i>
                <i class="fa fa-google-plus-square fa-2x" aria-hidden="true"></i>
                <i class="fa fa-linkedin-square fa-2x" aria-hidden="true"></i>
              </div>
            </div>
          </div>
        </footer>
      </div>
      </div>
</body>
</html>