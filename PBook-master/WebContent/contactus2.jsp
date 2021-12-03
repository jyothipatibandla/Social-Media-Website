<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.priyam.User"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.collup{
margin-top: 40px;
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
nav{
opacity: 0.85;
}
nav:hover{
opacity: 1.0;
}
.collup {
margin-top:20px;
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
.scrolling {
height:500px;
overflow-y: auto;
}
/* width */
::-webkit-scrollbar {
width: 10px;
}
::-webkit-scrollbar-track {
-webkit-box-shadow: inset 0 0 6px grey; 
border-radius: 10px;
}
::-webkit-scrollbar-thumb {
border-radius: 10px;
-webkit-box-shadow: inset 0 0 6px grey; 
}
body {
font-family: Arial, Helvetica, sans-serif;
background-image: url("images/bg.jpg");
}

* {
box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
width: 100%;
padding: 12px;
border: 1px solid #ccc;
margin-top: 6px;
margin-bottom: 16px;
resize: vertical;
}

input[type=submit] {
background-color: #04AA6D;
color: white;
padding: 12px 20px;
border: none;
cursor: pointer;
}

input[type=submit]:hover {
background-color: #45a049;
}

/* Style the container/contact section */
.container {
border-radius: 5px;
padding: 10px;
background-color: #a3e1e6;

}
.container2 {
background-color: #a3e1e6;

border-radius: 70px;
padding: 20px;
width:70%;


}

/* Create two columns that float next to eachother */
.column {
float: left;
width: 50%;
margin-top: 6px;
padding: 20px;
}

/* Clear floats after the columns */
.row:after {
content: "";
display: table;
clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
.column, input[type=submit] {
width: 100%;
margin-top: 0;
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
@import url('https://fonts.googleapis.com/css?family=Josefin+Sans');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  outline: none;
  font-family: 'Josefin Sans', sans-serif;
}

body{
  background: #fece0c;
  background-image: url("images/bg.jpg");
  
}

.wrapper{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  max-width: 700px;
  width: 100%;
  background: #fff;
  padding: 25px;
  border-radius: 5px;
  box-shadow: 4px 4px 2px rgba(254,236,164,1); 
  
}

.wrapper h2{
  text-align: center;
  margin-bottom: 20px;
  text-transform: uppercase;
  letter-spacing: 3px;
  color: #332902;
}

.wrapper .input_field{
  margin-bottom: 10px;
}

.wrapper .input_field input[type="text"],
.wrapper textarea{
  border: 1px solid #e0e0e0;
  width: 100%;
  padding: 10px;
}

.wrapper textarea{
  resize: none;
  height: 80px;
}

.wrapper .btn input[type="submit"]{
  border: 0px;
  margin-top: 15px;
  padding: 10px;
  text-align: center;
  width: 100%;
  background: #fece0c;
  color: #332902;
  text-transform: uppercase;
  letter-spacing: 5px;
  font-weight: bold;
  border-radius: 25px;
  cursor: pointer;
}

#error_message{
  margin-bottom: 20px;
  background: #fe8b8e;
  padding: 0px;
  text-align: center;
  font-size: 14px;
  transition: all 0.5s ease;
}

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>

<ul >
    <li><a href="#HOME">HOME</a></li>
    <li><a href="aboutus.jsp">ABOUT US</a></li>
    <li><a class="active" href="contactus2.jsp">CONTACT US</a></li>
             <li><a  href="report.jsp">BUG REPORT</a></li>
    
    <li style="float:right"><a  href="login.jsp">SIGN IN</a></li>
    <li style="float:right"><a  href="register.jsp">REGISTER</a></li>

  </ul>
  
<div class="wrapper" >
    <h2>Contact us</h2>
    <div id="error_message">
       
    </div>
    <form action="" id="myform" onsubmit = "return validate();">
      <div class="input_field">
          <input type="text" placeholder="Name" id="name">
      </div>
      <div class="input_field">
          <input type="text" placeholder="Subject" id="subject">
      </div>
      <div class="input_field">
          <input type="text" placeholder="Phone" id="phone">
      </div>
      <div class="input_field">
          <input type="text" placeholder="Email" id="email">
      </div>
      <div class="input_field">
          <textarea placeholder="Message" id="message" style="height:200px"></textarea>
      </div>
      <div class="btn">
          <input type="submit">
      </div>
    </form>
  </div>


<div style="padding-top: 20cm;">
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
  </div >
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
<script type="text/javascript">


function validate(){
  var name = document.getElementById("name").value;
  var subject = document.getElementById("subject").value;
  var phone = document.getElementById("phone").value;
  var email = document.getElementById("email").value;
  var message = document.getElementById("message").value;
  var error_message = document.getElementById("error_message");
  
  error_message.style.padding = "10px";
  
  var text;
  if(name.length < 5){
    text = "Please Enter valid Name";
    error_message.innerHTML = text;
    return false;
  }
  if(subject.length < 10){
    text = "Please Enter Correct Subject";
    error_message.innerHTML = text;
    return false;
  }
  if(isNaN(phone) || phone.length != 10){
    text = "Please Enter valid Phone Number";
    error_message.innerHTML = text;
    return false;
  }
  if(email.indexOf("@") == -1 || email.length < 6){
    text = "Please Enter valid Email";
    error_message.innerHTML = text;
    return false;
  }
  if(message.length <= 140){
    text = "Please Enter More Than 140 Characters";
    error_message.innerHTML = text;
    return false;
  }
  alert("Form Submitted Successfully!");
  return true;
}
</script>


</body>
</html>