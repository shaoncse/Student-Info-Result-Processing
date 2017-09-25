package com.result;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class insertinfo
 */
@WebServlet("/insertinfo")
public class insertinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");
		
		PrintWriter pw = response.getWriter();
		
		String st_id = request.getParameter("st_id");
		String st_name = request.getParameter("st_name");
		String st_dept = request.getParameter("st_dept");
		String st_session = request.getParameter("st_session");
		String st_dob = request.getParameter("st_dob");
		String st_blood = request.getParameter("st_blood");
		String st_city = request.getParameter("st_city");
		String st_email = request.getParameter("st_email");
		String st_cont = request.getParameter("st_cont");
		String st_pres = request.getParameter("st_pres");
		String st_perm = request.getParameter("st_perm");
		
		try {
			ServletContext sc=getServletContext();
			Connection con=(Connection)sc.getAttribute("Connection");
			PreparedStatement ps = con.prepareStatement("INSERT INTO student_information values (?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, st_id);
			ps.setString(2, st_name);
			ps.setString(3, st_dept);
			ps.setString(4, st_session);
			ps.setString(5, st_dob);
			ps.setString(6, st_blood);
			ps.setString(7, st_city);
			ps.setString(8, st_email);
			ps.setString(9, st_cont);
			ps.setString(10, st_pres);
			ps.setString(11, st_perm);
			
			ps.execute();
			pw.println("<h1><font color=red>Data Inserted Successfullty</font></h1>");
			pw.println("<br><a href =Office/office.jsp>Go HomePage</a>");

		} catch (Exception ex) {
			pw.println(ex);
		}
	}

}
