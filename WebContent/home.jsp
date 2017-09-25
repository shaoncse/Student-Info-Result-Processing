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
	
	  <style>
.dropbtn {
    background-color: #3f73aa;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #3e8e41;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #f1f1f1}

.show {display:block;}
</style>
	
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
		response.sendRedirect("index.jsp");
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
	 <center><h2> CSE ADMIN</h2></center>
	 </br>
	 </div>
	 
	 <div class="container">
	 <div class="col-md-3">
	 <center><img src="/StudentResult/img/x.png" alt="" /></center>
		<a href="creat_admin.jsp" class="btn btn-primary btn-lg btn-block" role="button">Create New User</a>			
	 </div>
	 
	 <div class="col-md-3">
	 <center><img src="/StudentResult/img/y.png" alt="" /></center>
			<a href="result_details.jsp" class="btn btn-primary btn-lg btn-block" role="button">Show Result</a>				
	 </div>
	 
	 <div class="col-md-3">
	 <center><img src="/StudentResult/img/x.png" alt="" /></center>
		<div class="dropdown">
<center><button onclick="myFunction()" class="dropbtn">Result Update</button><center>
  <div id="myDropdown" class="dropdown-content">
    <a href="s1.jsp">1-1</a>
    <a href="s2.jsp">1-2</a>
    <a href="s3.jsp">2-1</a>
    <a href="s4.jsp">2-2</a>
    <a href="s5.jsp">3-1</a>
    <a href="s6.jsp">3-2</a>
    <a href="s7.jsp">4-1</a>
    <a href="s8.jsp">4-2</a>
  </div>
</div>
							
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
	 
	 <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
} 

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if(openDropdown.classList.contains('show')){
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>

</body>
</html>