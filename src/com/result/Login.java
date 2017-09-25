package com.result;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.result.authentication.Authentication;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		String userName=request.getParameter("user_name");
		String password=request.getParameter("password");
		//String user=request.getParameter("");
		

		ServletContext sc=getServletContext();
		Connection con=(Connection)sc.getAttribute("Connection");
					
		Authentication a=new Authentication();			
		
		boolean login=a.getAuthentication(userName,password,con);
		
		if(login){
			
			HttpSession session = request.getSession(true); // reuse existing
			// session if exist
			// or create one
             session.setAttribute("user", userName);
             session.setMaxInactiveInterval(30); // 30 seconds
			
	
			
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else{
			pw.println("<html><body>");
		    pw.println("<script type=\"text/javascript\">");
		    pw.println("if(!alert('Wrong user name or password'))");
		    pw.println("document.location = 'http://localhost:8081/StudentResult/';");
		    pw.println("</script>");
		    pw.println("</body></html>");
			
		}
					
		
	}
		
	}


