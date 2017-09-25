<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
      
     <%@page import="java.sql.PreparedStatement"%>
     <%@page import="javax.servlet.RequestDispatcher"%>
     <%@page import="javax.servlet.ServletException"%>
     <%@page import="javax.servlet.http.HttpSession"%>
     <%@page import="javax.servlet.http.HttpServletRequest"%>
     <%@page import="javax.servlet.http.HttpServletResponse"%>
      <%@page import="javax.servlet.http.HttpServlet"%>
   

<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
PrintWriter pw = response.getWriter();
response.setContentType("text/html");

HttpSession hs=request.getSession();

hs.invalidate();
response.sendRedirect("/StudentResult/index.jsp");
%>
<center><h1>Logged Out</h1></center>
</body>
</html>