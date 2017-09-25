<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.ServletContext"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PrintWriter pw = response.getWriter();
HttpSession hs=request.getSession();
String id_no=(String)hs.getAttribute("User");

pw.println("User name  :"+id_no);
String st_email = request.getParameter("st_email");
String st_cont = request.getParameter("st_cont");
String st_pres = request.getParameter("st_pres");

if(id_no!=null){
try {
	ServletContext sc=getServletContext();
	Connection con=(Connection)sc.getAttribute("Connection");
	PreparedStatement ps = con.prepareStatement("update STUDENT_INFORMATION set ST_EMAIL=?,ST_CONT=?,ST_PRES=? where ST_ID=?");
	ps.setString(1, st_email);
	ps.setString(2, st_cont);
	ps.setString(3, st_pres);
	ps.setString(4, id_no);
	
	
	ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	

	
	
	ps.execute();
	pw.println("<h1><font color=red>Data Updateded Successfullty</font></h1>");
	pw.println("<br><a href =/StudentResult/Office/office.jsp>Go HomePage</a>");
    }
} catch (Exception ex) {
	pw.println(ex);
}
}

else{pw.println("<h1><font color=red>not Successfullty</font></h1>");}
%>

</body>
</html>