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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
<style> 
table, td, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th {
    height: 50px;
}
</style> 
    
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
  

 <h2><a href="office.jsp">Home</a></h2>
 <center><h2>Result</h2></center>

<%! int n=0; %>   
<% 

try{
	String st=request.getParameter("student_id");
	System.out.println(st);
	String semester=request.getParameter("semester");
	System.out.println(semester);
      

    ServletContext sc=getServletContext();
    Connection con=(Connection)sc.getAttribute("Connection");
    
PreparedStatement p = con.prepareStatement("select ST_ID,ST_NAME,ST_DEPARTMENT,ST_SESSION  from STUDENT_INFORMATION where ST_ID=?");
    
    p.setString(1, st);
    ResultSet r=p.executeQuery();
    while(r.next())
    {%>
    	
    		<form  align="center">
			Semester:<%=semester%><br><br>
            Student Id:<%=r.getString(1)%><br><br>
            Student Name:<%=r.getString(2)%><br><br>
            Student Department:<%=r.getString(3)%><br><br>
            Student Session:<%=r.getString(4)%><br><br>
            </form>
    	
    		
    
    <% }
    

    ArrayList<String> al=new ArrayList<String>();
    %>
    
    <table>
  <tr>
    <th>Course Code</th>
    <th>Course Title</th>
    <th>Credits</th>
    <th>Letter Grade</th>
  </tr>
    
    <%
    


    if(semester.equals("1-1")){
    	
    	PreparedStatement pps = con.prepareStatement("select ENG104,ENG105,MAT104,EEE104,EEE105,CSE110,CSE112,CSE113,CSE120,CGPA from CGPA where STUDENTID=?");
        
        pps.setString(1, st);
        ResultSet rrs=pps.executeQuery();
        while(rrs.next())
        {
        	
        		
        	al.add(rrs.getString(1));
        	al.add(rrs.getString(2));
        	al.add(rrs.getString(3));
        	al.add(rrs.getString(4));
        	al.add(rrs.getString(5));
        	al.add(rrs.getString(6));
        	al.add(rrs.getString(7));
        	al.add(rrs.getString(8));
        	al.add(rrs.getString(9));%>
        	
        	<form  align="center">

            Student CGPA:<%=rrs.getFloat(10)%><br><br>
            
            </form>
        
        <% }
    	
    	
    	int i=0;
    	PreparedStatement ps = con.prepareStatement("select * from SUBJECT where YEAR='1' AND SEMESTER='1'");
    	ResultSet rs=ps.executeQuery();
    	    while(rs.next())
    	    {
    	    	%>
    	    	
    	    	<tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
    	    	    <td><%=rs.getString(3)%></td>
    	    	    <td><%=al.get(i)%></td>
                </tr>

					<% i++;
    	    }
    
    	  

    
      %>
	
    
    	    	
    
<%

	}if(semester.equals("1-2")){
		
		  
		
		
    	PreparedStatement pps = con.prepareStatement("select PHY155,STA154,PHY154,EEE157,CSE160,CSE161,CSE163,MAT156,EEE156,CSE162,CSE168,CGPA2 from CGPA where STUDENTID=?");
        
        pps.setString(1, st);
        ResultSet rrs=pps.executeQuery();
        while(rrs.next())
        {
        	
        		
        	al.add(rrs.getString(1));
        	al.add(rrs.getString(2));
        	al.add(rrs.getString(3));
        	al.add(rrs.getString(4));
        	al.add(rrs.getString(5));
        	al.add(rrs.getString(6));
        	al.add(rrs.getString(7));
        	al.add(rrs.getString(8));
        	al.add(rrs.getString(9));
        	al.add(rrs.getString(10));
        	al.add(rrs.getString(11));%>
        	
        	<form  align="center">

            Student CGPA:<%=rrs.getFloat(12)%><br><br>
            
            </form>
        
        <% }
    	
    	
    	int i=0;
    	PreparedStatement ps = con.prepareStatement("select * from SUBJECT where YEAR='1' AND SEMESTER='2'");
    	ResultSet rs=ps.executeQuery();
    	    while(rs.next())
    	    {
    	    	%>
    	    	
    	    	<tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
    	    	    <td><%=rs.getString(3)%></td>
    	    	    <td><%=al.get(i)%></td>
                </tr>

					<% i++;
    	    }
    
    	  

    
      %>
	
    
    	    	
    
<%

	}if(semester.equals("2-1")){
		
		
		
		
		
    	PreparedStatement pps = con.prepareStatement("select ECO204,CSE210,MAT204,CSE211,CSE213,ACC204,ENG205,CSE212,CSE221,CGPA3 from CGPA where STUDENTID=?");
        
        pps.setString(1, st);
        ResultSet rrs=pps.executeQuery();
        while(rrs.next())
        {
        	
        		
        	al.add(rrs.getString(1));
        	al.add(rrs.getString(2));
        	al.add(rrs.getString(3));
        	al.add(rrs.getString(4));
        	al.add(rrs.getString(5));
        	al.add(rrs.getString(6));
        	al.add(rrs.getString(7));
        	al.add(rrs.getString(8));
        	al.add(rrs.getString(9));%>
        	
        	<form  align="center">

            Student CGPA:<%=rrs.getFloat(10)%><br><br>
            
            </form>
        
        <% }
    	
    	
    	int i=0;
    	PreparedStatement ps = con.prepareStatement("select * from SUBJECT where YEAR='2' AND SEMESTER='1'");
    	ResultSet rs=ps.executeQuery();
    	    while(rs.next())
    	    {
    	    	%>
    	    	
    	    	<tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
    	    	    <td><%=rs.getString(3)%></td>
    	    	    <td><%=al.get(i)%></td>
                </tr>

					<% i++;
    	    }
    
    	  

    
      %>
	
    
    	    	
    
<%

	}if(semester.equals("2-2")){
		
		
		
		
		
		
    	
    	PreparedStatement pps = con.prepareStatement("select LAW254,CSE261,CSE270,MAT256,CSE271,CSE278,CSE260,STA254,CSE262,CGPA4 from CGPA where STUDENTID=?");
        
        pps.setString(1, st);
        ResultSet rrs=pps.executeQuery();
        while(rrs.next())
        {
        	
        		
        	al.add(rrs.getString(1));
        	al.add(rrs.getString(2));
        	al.add(rrs.getString(3));
        	al.add(rrs.getString(4));
        	al.add(rrs.getString(5));
        	al.add(rrs.getString(6));
        	al.add(rrs.getString(7));
        	al.add(rrs.getString(8));
        	al.add(rrs.getString(9));%>
        	
        	<form  align="center">

            Student CGPA:<%=rrs.getFloat(10)%><br><br>
            
            </form>
        
        <% }
    	
    	
    	int i=0;
    	PreparedStatement ps = con.prepareStatement("select * from SUBJECT where YEAR='2' AND SEMESTER='2'");
    	ResultSet rs=ps.executeQuery();
    	    while(rs.next())
    	    {
    	    	%>
    	    	
    	    	<tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
    	    	    <td><%=rs.getString(3)%></td>
    	    	    <td><%=al.get(i)%></td>
                </tr>

					<% i++;
    	    }
    
    	  

    
      %>
	
    
    	    	
    
<%

	}if(semester.equals("3-1")){
    	
    	
		
		
		
		PreparedStatement pps = con.prepareStatement("select CSE310,CSE320,CSE301,CSE312,CSE321,CSE302,CSE300,CSE303,CSE311,CSE313,CGPA6 from CGPA where STUDENTID=?");
        
        pps.setString(1, st);
        ResultSet rrs=pps.executeQuery();
        while(rrs.next())
        {
        	
        		
        	al.add(rrs.getString(1));
        	al.add(rrs.getString(2));
        	al.add(rrs.getString(3));
        	al.add(rrs.getString(4));
        	al.add(rrs.getString(5));
        	al.add(rrs.getString(6));
        	al.add(rrs.getString(7));
        	al.add(rrs.getString(8));
        	al.add(rrs.getString(9));
        	al.add(rrs.getString(10));%>
        	
        	<form  align="center">

            Student CGPA:<%=rrs.getFloat(11)%><br><br>
            
            </form>
        
        <% }
    	
    	
    	int i=0;
    	PreparedStatement ps = con.prepareStatement("select * from SUBJECT where YEAR='3' AND SEMESTER='1'");
    	ResultSet rs=ps.executeQuery();
    	    while(rs.next())
    	    {
    	    	%>
    	    	
    	    	<tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
    	    	    <td><%=rs.getString(3)%></td>
    	    	    <td><%=al.get(i)%></td>
                </tr>

					<% i++;
    	    }
    
    	  

    
      %>
	
    
    	    	
    
<%

	}if(semester.equals("3-2")){
		
		
    	
    	PreparedStatement pps = con.prepareStatement("select CSE352,CSE378,CSE350,CSE353,CSE360,CSE361,CSE370,CSE362,CSE371,CSE363,CGPA6 from CGPA where STUDENTID=?");
        
        pps.setString(1, st);
        ResultSet rrs=pps.executeQuery();
        while(rrs.next())
        {
        	
        		
        	al.add(rrs.getString(1));
        	al.add(rrs.getString(2));
        	al.add(rrs.getString(3));
        	al.add(rrs.getString(4));
        	al.add(rrs.getString(5));
        	al.add(rrs.getString(6));
        	al.add(rrs.getString(7));
        	al.add(rrs.getString(8));
        	al.add(rrs.getString(9));
        	al.add(rrs.getString(10));%>
        	
        	<form  align="center">

            Student CGPA:<%=rrs.getFloat(11)%><br><br>
            
            </form>
        
        <% }
    	
    	
    	int i=0;
    	PreparedStatement ps = con.prepareStatement("select * from SUBJECT where YEAR='3' AND SEMESTER='2'");
    	ResultSet rs=ps.executeQuery();
    	    while(rs.next())
    	    {
    	    	%>
    	    	
    	    	<tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
    	    	    <td><%=rs.getString(3)%></td>
    	    	    <td><%=al.get(i)%></td>
                </tr>

					<% i++;
    	    }
    
    	  

    
      %>
	
    
    	    	
    
<%

	}if(semester.equals("4-1")){
    	
			
		
    	PreparedStatement pps = con.prepareStatement("select CSE403,CSE410,CSE412,CSE400,CSE402,CSE411,CSE448,CSE401,CSE441,CSE413,CSE440,CGPA7 from CGPA where STUDENTID=?");
        
        pps.setString(1, st);
        ResultSet rrs=pps.executeQuery();
        while(rrs.next())
        {
        	
        		
        	al.add(rrs.getString(1));
        	al.add(rrs.getString(2));
        	al.add(rrs.getString(3));
        	al.add(rrs.getString(4));
        	al.add(rrs.getString(5));
        	al.add(rrs.getString(6));
        	al.add(rrs.getString(7));
        	al.add(rrs.getString(8));
        	al.add(rrs.getString(9));
        	al.add(rrs.getString(10));
        	al.add(rrs.getString(11));%>
        	
        	<form  align="center">

            Student CGPA:<%=rrs.getFloat(12)%><br><br>
            
            </form>
        
        <% }
    	
    	
    	int i=0;
    	PreparedStatement ps = con.prepareStatement("select * from SUBJECT where YEAR='4' AND SEMESTER='1'");
    	ResultSet rs=ps.executeQuery();
    	    while(rs.next())
    	    {
    	    	%>
    	    	
    	    	<tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
    	    	    <td><%=rs.getString(3)%></td>
    	    	    <td><%=al.get(i)%></td>
                </tr>

					<% i++;
    	    }
    
    	  

    
      %>
	
    
    	    	
    
<%

	}if(semester.equals("4-2")){
    	
		
		
		
    	PreparedStatement pps = con.prepareStatement("select CSE453,CSE462,CSE480,CSE451,CSE463,CSE481,CSE489,CSE450,CSE452,CSE488,CGPA8 from CGPA where STUDENTID=?");
        
        pps.setString(1, st);
        ResultSet rrs=pps.executeQuery();
        while(rrs.next())
        {
        	
        		
        	al.add(rrs.getString(1));
        	al.add(rrs.getString(2));
        	al.add(rrs.getString(3));
        	al.add(rrs.getString(4));
        	al.add(rrs.getString(5));
        	al.add(rrs.getString(6));
        	al.add(rrs.getString(7));
        	al.add(rrs.getString(8));
        	al.add(rrs.getString(9));
        	al.add(rrs.getString(10));%>
        	
        	<form  align="center">

            Student CGPA:<%=rrs.getFloat(11)%><br><br>
            
            </form>
        
        <% }
    	
    	
    	int i=0;
    	PreparedStatement ps = con.prepareStatement("select * from SUBJECT where YEAR='4' AND SEMESTER='2'");
    	ResultSet rs=ps.executeQuery();
    	    while(rs.next())
    	    {
    	    	%>
    	    	
    	    	<tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
    	    	    <td><%=rs.getString(3)%></td>
    	    	    <td><%=al.get(i)%></td>
                </tr>

					<% i++;
    	    }
    
    	  

    
      %>
	
    
    	    	
    
<%

	}
    
}
	catch(Exception ex)
	{
		System.out.println(ex);
	}

     
%>
 </table>  
</body>
</html>