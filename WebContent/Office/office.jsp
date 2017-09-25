<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap.css">
	
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap-theme.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="/StudentResult/bootstrap/js/main.js"></script>
	<script src="/StudentResult/bootstrap/js/bootstrap.js"></script>
	<title>office admin</title>
</head>
<body>

<% 
PrintWriter pw = response.getWriter();
response.setContentType("text/html");

String id="";

if (session != null) {
	if (session.getAttribute("user") != null) {
		 id = (String) session.getAttribute("user");
		
	} else {
		response.sendRedirect("login.html");
	}
} 
 
    	%>

<div class="container">
	
	 <div class="header">
		<div class="row">
		
			<div class="col-md-12">
					<img src="/StudentResult/img/b.jpg" alt="" />
							
						
			</div>
			
		
		</div>
	 </div>
	 </div>
	 
	 <div class=container>
	 </br>
	 <center><h2>WELCOME to CSE DEPARTMENT</h2></center>
	 </br>
	 </div>
	 
	 <div class="container">
	 <div class="col-md-3">
	 <center><img src="/StudentResult/img/x.png" alt="" /></center>
		<a href="/StudentResult/Office/StudentRegistration.html" class="btn btn-primary btn-lg btn-block" role="button">Registration</a>			
	 </div>
	 
	 <div class="col-md-3">
	 <center><img src="/StudentResult/img/y.png" alt="" /></center>
			<a href="/StudentResult/Office/result_details.jsp" class="btn btn-primary btn-lg btn-block" role="button">Show Result</a>				
	 </div>
	 
	 <div class="col-md-3">
	 <center><img src="/StudentResult/img/x.png" alt="" /></center>
	 <a href="/StudentResult/Office/StudentDetails.jsp" class="btn btn-primary btn-lg btn-block" role="button">Students Details</a>
							
	 </div>
	 
	 <div class="col-md-3">
	 <center><img src="/StudentResult/img/y.png" alt="" /></center>
	 <a href="/StudentResult/Office/StudentUpdate.html" class="btn btn-primary btn-lg btn-block" role="button">Information Update</a>
							
	 </div>
	 
	 </div>
	 <div class="container">
	 <div class="col-md-4"></div>
	 
	 
	  <div class="col-md-4">
	  </br>
	  </br>
	 <center><img src="/StudentResult/img/logout.png" alt=""  href="/StudentResult/Office/StudentUpdate.html" /></center>
	 <a href="/StudentResult/Office/logout.jsp" class="btn btn-primary btn-lg btn-block" role="button">Logout</a>
							
	 </div>
	 <div class="col-md-4"></div>
	 
	 </div>

</body>
</html>