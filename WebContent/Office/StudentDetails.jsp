<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/table.css">
	  <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/regi.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap-theme.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="/StudentResult/bootstrap/js/main.js"></script>
	<script src="/StudentResult/bootstrap/js/bootstrap.js"></script>
	<title>office admin</title>

	<SCRIPT language=Javascript>
      <!--
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
      //-->
   </SCRIPT>
        <script>
$(document).ready(function(){
    $('input[rel="txtTooltip"]').tooltip();
});
</script>

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
<div class="container">
<div class="col-md-2"></div>
<div class="col-md-8" id="box"></div>

<b><form action="/StudentResult/Office/details.jsp" method="post">
			
			<table align="center">
			
			    <tr>
					<td>Enter Student ID:</td>
					<td><input type="text" name="st_id" placeholder="Enter Student ID" required="required" onkeypress="return isNumberKey(event)" /></td>
				</tr>
				<tr align="center">
					<td></td>
					<td><input type="submit" class="btn btn-primary" name="submit" value="View Details">
					 
				</tr>
				
				</table>
				</form>
				</div>
				</div>
				<div class="col-md-2"></div>

</body>
</html>