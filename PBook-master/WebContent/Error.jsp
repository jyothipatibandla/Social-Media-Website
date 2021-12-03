<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Check</title>
</head>
<body>
	<div style="text-align:center;"><h1>Error Landing Page</h1></div>
	<div> 
	<%
	out.println("Error: "+(String)request.getParameter("error"));	
	%>
	</div>
</body>
</html>