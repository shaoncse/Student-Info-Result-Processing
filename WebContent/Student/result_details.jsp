<%@page import="java.util.*"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>

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

<center><h2>Student Result</h2></center>

<b><form action="/StudentResult/Student/result_office.jsp" method="post">
			
			<table align="center">
				<tr align="center">
				<td>Year-Semester:</td>
				<td><select name="semester">
						<option value="" selected>Year-Semester</option>
                        <option value="1-1">1-1</option>
                         <option value="1-2">1-2</option>
                         <option value="2-1">2-1</option>
                          <option value="2-2">2-2</option>
                          <option value="3-1">3-1</option>
                          <option value="3-2">3-2</option>
                           <option value="4-1">4-1</option>
                           <option value="4-2">4-2</option>
                           </select></td>
				</tr>
			
			    <tr>
					<td> Student ID:</td>
					<td><input type="text" name="student_id" value=<%=id%> placeholder="Enter Student ID" required="required" onkeypress="return isNumberKey(event)" /></td>
				</tr>
				<tr align="center">
					<td></td>
					<td><input type="submit" class="btn btn-primary" name="submit" value="View Result">
					 
				</tr>
				
				</table>
				</form>
				</div>
				</div>
				<div class="col-md-2"></div>

</body>
</html>