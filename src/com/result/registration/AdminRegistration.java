package com.result.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminRegistration
 */
@WebServlet("/AdminRegistration")
public class AdminRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		String user=request.getParameter("user");
		String userName=request.getParameter("user_name");
		String password=request.getParameter("password");
		
		
		     boolean result;		
	        ServletContext sc=getServletContext();
	        Connection con=(Connection) sc.getAttribute("Connection");
		    
	        Registration r= new Registration();
		  
	        if(user.equals("admin")){
	        	
	         result=r.getAdmin(userName, password, con);
	        }
	        else {
	        	 result=r.getOffice(userName, password, con);
			}
	        
	        
		   
		   if(result){
			    pw.println("<html><body>");
			    pw.println("<script type=\"text/javascript\">");
			    pw.println("if(!alert('Registration Successful'))");
			    pw.println("document.location = 'http://localhost:8081/StudentResult/home.jsp';");
			    pw.println("</script>");
			    pw.println("</body></html>");
		   }else{
			   
			   pw.println("<html><body>");
			    pw.println("<script type=\"text/javascript\">");
			    pw.println("if(!alert('Wrong user name or password'))");
			    pw.println("document.location = 'http://localhost:8081/StudentResult/creat_admin.html';");
			    pw.println("</script>");
			    pw.println("</body></html>");
		   }
		    	
		
	}

}
