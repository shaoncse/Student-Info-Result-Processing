<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.io.PrintWriter"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<h1>STUDENT ID NO: <%=id%></h1>

<a href="/StudentResult/Student/home.jsp">Home</a>
</body>
</html>