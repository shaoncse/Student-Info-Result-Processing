<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/try.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/table.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap-theme.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="/StudentResult/bootstrap/js/main.js"></script>
	<script src="/StudentResult/bootstrap/js/bootstrap.js"></script>

	<title>Student panel</title>
</head>
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
<body>
<h3>STUDENT ID NO: <%=id%></h3>
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
<center><h2>Infomation Details</h2></center>
<h3><b><i>Hello welcome to your profile id: <%=id%></i></b></h3>

<table   border="1" align="center">

<% 


//	String st=request.getParameter("st_id");


ServletContext sc=getServletContext();
Connection con=(Connection)sc.getAttribute("Connection");

try{
	
PreparedStatement ps = con.prepareStatement("select * from student_information where ST_ID=?");
ps.setString(1,id); ////here id hobe
ResultSet rs=ps.executeQuery();

    while(rs.next()) 
    { 
    	
    	if(id.equals(rs.getString(1))){
			
    		%>
    		<tr>
<th>Student ID</th>
<th>Student Name</th>
<th>Department</th>
<th>Session</th>
<th>Date Of Birth</th>
<th>Blood Group</th>
<th>City</th>
<th>Email</th>
<th>Contact No</th>
<th>Present Address</td>
<th>Permanent Address</th>



</tr>
    		
        	<tr>
        	<td><%=rs.getString(1)%></td>
        	<td><%=rs.getString(2)%></td>
        	<td><%=rs.getString(3)%></td>
        	<td><%=rs.getString(4)%></td>
        	<td><%=rs.getString(5)%></td>
        	<td><%=rs.getString(6)%></td>
        	<td><%=rs.getString(7)%></td>
        	<td><%=rs.getString(8)%></td>
        	<td><%=rs.getString(9)%></td>
        	<td><%=rs.getString(10)%></td>
        	<td><%=rs.getString(11)%></td>
        	
        	
      </tr>
        	    	<% 
		
		}
    	else{%>
    		<h1>invalid</h1>
    		<% 
		    }
    	
    	
    }
    }
	catch(Exception ex)
	{
		System.out.println(ex);
	}

     
%>
</table>
</br>
</div>
<div class="container">
<div class="col-md-4">
					
						
			</div>
			<div class="col-md-4">
					
			</div>
			
			
			<div class="col-md-4">		
<a href="/StudentResult/Student/home.jsp" class="btn btn-primary"> ...GO TO HOME PAGE...</a>
</div>
</div>
</body>
</html>