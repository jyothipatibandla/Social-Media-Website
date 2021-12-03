<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Report</title>
        <link rel="icon" href="images/logo.png" type="image/icon type" class="logo">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/common.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="javascript/common.js"></script>
        <script src="javascript/report.js"></script>
        <link rel="stylesheet" href="css/report.css">
        <style>ul {
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
}</style>
    </head>
    
    <body style="background-color: rgb(36, 35, 35); background-image: url('images/services.png'); background-size: 1900px;">
     <ul>
        <li><a href="#HOME">HOME</a></li>
        <li><a href="aboutus.jsp">ABOUT US</a></li>
        <li><a  href="contactus2.jsp">CONTACT US</a></li>
         <li><a class="active"  href="report.jsp">BUG REPORT</a></li>
        
        <li style="float:right"><a   href="login.jsp">SIGN IN</a></li>
        <li style="float:right"><a  href="register.jsp">REGISTER</a></li>

      </ul>
        <div class="row">
            
        </div>
        <div>
        <%
            session = request.getSession();
            String user = (String)session.getAttribute("name");
                if(user!=null)
            	    out.println("<div style=\"text-align:center; background-color: rgb(0,0,0,0.8); color: white; font-size:20px\" >What can we help you with, "+user+"?</div>");
        %>
		</div>
        <br><br>
        <div class="col-lg-12 text-center"><span style="color: black; font-size: 75px;" class="badge badge-light rounded-pill">Report a User/Bug</span></div>

        <div class="col-lg-3" style="margin-left: 0px; margin-top:60px"></div>

        <div class="col-lg-5" style="margin-top: 30px; margin-left: 75px; border-radius: 25px; background-color: rgb(240,240,240,0.7); margin-bottom: 25px;">
            <h4 style="color: black; font-size: 50px; margin-left: 200px; margin-top: 20px;"><span style="margin-top:10px; padding-top: 10px; padding-bottom: 10px; padding-left: 15px; padding-right: 15px; border-radius: 15px; background-color: rgb(255,255,255,0.8);">Report Details</span></h4>
            <div style="margin-top:25px">
            <%
            session = request.getSession();
            String msg = (String)session.getAttribute("msg");
            if(msg!=null) {
            	out.println("<div style=\"text-align:center; background-color: rgb(0,0,0,0.8); color: white; font-size:20px\" >We thank you for reporting the issue. Our technicians will be on it soon!</div>");
            }
            session.removeAttribute("msg");
            %>
            </div>
            <form action="report" method="post" enctype='multipart/form-data'>
                <div class="col-lg-1"></div>
                <div class="col-lg-11" style="overflow-x: auto scroll;">
                    
                    <label for="bugtitle"><span class="badge rounded-pill" style=" margin-top: 30px; font-size: 20px;">Title</span></label>
                    <input class="rounded-pill form-control input-lg" style="border-width: medium; border-color: rgb(0, 0, 0); font-size: 20px; margin-top: 15px; margin-left: 50px; width: 535px;" type="text" placeholder="Title" id="bugtitle" name="bugtitle" required>
                    
                    <label for="bugtype"><span class="badge rounded-pill" style=" margin-top: 30px; font-size: 20px;">Type</span></label>
                    <select class="rounded-pill form-control input-lg" style="width: 540px; height: 60px; border-width: medium; border-color: rgb(0, 0, 0); font-size: 20px; margin-top: 5px; margin-left: 50px;" id="bugtype" name="bugtype" required>
                        <option value="U">User</option>
                        <option value="B">Bug</option>
                    </select>
                    
                    <label for="bugdesc"><span class="badge rounded-pill" style=" margin-top: 30px; font-size: 20px;">Description</span></label>
                    <textarea onblur="onBlur()" onfocus="onFocus()" onkeyup="onKeyUp()" class="form-control input-lg" style="border-radius:15px; border-width: medium; border-color: rgb(0, 0, 0); font-size: 20px; margin-top: 15px; margin-left: 50px; width: 535px" name="bugdesc" id="bugdesc" required></textarea>
                    <div id="message" style="display:none; background-color: rgb(128,128,128,0.5); padding: 25px; border-radius:20px; width:585px; margin-left:25px" >
                    	<p id="minSize" style="font-size:20px" class="invalid"><b>At least 20 characters</b></p>
                        <p id="maxSize" style="font-size:20px" class="valid"><b>At most 350 characters</b></p>
                      </div>

                    <label for="bugimage"><span class="badge rounded-pill" style=" margin-top: 30px; font-size: 20px;">Screenshot</span></label>
                    <input class="rounded-pill form-control input-lg" style="border-width: medium; border-color: rgb(0, 0, 0); font-size: 20px; margin-bottom:30px; margin-top: 15px; margin-left: 50px; width: 535px" type="file" accept=".jpg, .jpeg, .png" id="bugimage" name="bugimage" onchange="bugDisplay()">
                    
                    <div style="text-align: center;">
                    <img src="#" style="display: none; max-width:300px; max-height:300px" id="bugscrshot">
                    </div>
                    <div class="col-lg-5">
                        <input class="rounded-pill form-control input-lg" style="border-width: medium; border-color: rgb(0, 0, 0); font-size: 20px; margin-bottom:30px; margin-top: 50px; margin-left: 400px;" type="submit" placeholder="Title" value="Submit" id="subrep" name="subrep">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>