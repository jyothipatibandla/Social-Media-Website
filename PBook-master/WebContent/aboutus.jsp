<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.priyam.User"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-image: url("images/bg.jpg");

  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  justify-content: center;
  margin: 8px;
  min-height: 340px;
  background-color: white;
}
.card img{
  transform:translate(160px,0%);
}
.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
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
</head>
<body>
    <ul>
        <li><a href="#HOME">HOME</a></li>
        <li><a class="active" href="aboutus.jsp">ABOUT US</a></li>
        <li><a  href="contactus2.jsp">CONTACT US</a></li>
                 <li><a  href="report.jsp">BUG REPORT</a></li>
        
        <li style="float:right"><a   href="login.jsp">SIGN IN</a></li>
        <li style="float:right"><a  href="register.jsp">REGISTER</a></li>

      </ul>


<div class="about-section">
  <h1>About Us Page</h1>
  <p>SOCIALLY an  online  social  network  service  by  which  user  can  establish  a  network among  the  people  residing  in  all  over  the  world.  All  the  information  can  be  easily accessed and shared among the people. This  system  provides  users  to  register  ,update profile ,upload and edit a post, Send a message, view friends posts and enables the user to connect  with different people</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="images/find.png" alt="Mike" style="width:20%;height: 10%"></img>
      <div class="container">
        <h2>Finder Module</h2>
        <p class="title">Finder module</p>
        <p>              Users can find other users through a search window. Users would be able to see their follower’s activity by clicking onto their profile and can follow them if they wish to.
        </p>

      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
     <img src="images/homeicon.png" alt="Mike" style="width:20%;height: 10%"></img>
      <div class="container">
        <h2>Home Module</h2>
        <p class="title">Home Module</p>
        <p> Users can  post writeups/pictures for their followers to see and can view all the posts of people they are following 
        </p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="images/profileicon.jpg" alt="Mike" style="width:20%;height: 10%"></img>
      <div class="container">
        <h2>Profile Module</h2>
        <p class="title">Profile Module</p>
        <p>              This module provides functionalities related to members profile. Logged users can see their details and if they wish to change any of their information they can edit it. They can also reset their password.Users can view their followers and also whom they are following.
        </p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/message.jpg" alt="Mike" style="width:20%;height: 10%"></img>
      <div class="container">
        <h2>Message Module</h2>
        <p class="title">Message module</p>
        <p>              The user can send messages to his/her friends and will receive notifications when  any other user sends a message
        </p>
 
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/regicon.png" alt="Mike" style="width:20%;height: 10%"></img>
      <div class="container">
        <h2>Register Module</h2>
        <p class="title">Register module</p>
        <p>              This module provides functionalities for those people who wants to open an account. If a user is new to social media website ,User will be given the privilege to Register themselves through the Registration page .if the user is already a registered user then he/she can login through login page. In order to login or resister  the member can also browse through the Netlink-social networking site
        </p>
 
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/followers.png" alt="Mike" style="width:20%;height: 10%"></img>
      <div class="container">
        <h2>Followers/Following/Posts Module</h2>
        <p class="title">Followers/Following/Posts Module</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
      </div>
    </div>
  </div>

</div>

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

</body>
</html>
