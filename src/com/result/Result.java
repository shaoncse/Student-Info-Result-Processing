package com.result;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.result.registration.ResultSystem;



/**
 * Servlet implementation class Result
 */
@WebServlet("/Result")
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Result() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated methresponse.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		String semester=request.getParameter("semester");
		String id=request.getParameter("id");
		
		if(semester.equals("1-1")){
		int subject1=Integer.parseInt(request.getParameter("subject1"));
		int subject2=Integer.parseInt(request.getParameter("subject2"));
		int subject3=Integer.parseInt(request.getParameter("subject3"));
		int subject4=Integer.parseInt(request.getParameter("subject4"));
		int subject5=Integer.parseInt(request.getParameter("subject5"));
		int subject6=Integer.parseInt(request.getParameter("subject6"));
		int subject7=Integer.parseInt(request.getParameter("subject7"));
		int subject8=Integer.parseInt(request.getParameter("subject8"));
		int subject9=Integer.parseInt(request.getParameter("subject9"));
		
		ResultSystem rs= new ResultSystem();
		
		String sub1=rs.getGPA(subject1);
		String sub2=rs.getGPA(subject2);
		String sub3=rs.getGPA(subject3);
		String sub4=rs.getGPA(subject4);
		String sub5=rs.getGPA(subject5);
		String sub6=rs.getGPA(subject6);
		String sub7=rs.getGPA(subject7);
		String sub8=rs.getGPA(subject8);
		String sub9=rs.getGPA(subject9);
		
		 float avr=(float) ((float) ((2.00*rs.getPoint(subject1))+(1.00*rs.getPoint(subject2))+(3.00*rs.getPoint(subject3))+(2.00*rs.getPoint(subject4))+(1.00*rs.getPoint(subject5))+(2.00*rs.getPoint(subject6))+(3.00*rs.getPoint(subject7))+(3.00*rs.getPoint(subject8))+(2.00*rs.getPoint(subject9)))/19.00);
		System.out.println(rs.getPoint(subject1));
		try{
			ServletContext sc=getServletContext();
			Connection con=(Connection)sc.getAttribute("Connection");
			
			
			
			  
			    PreparedStatement st=con.prepareStatement("insert into CGPA (STUDENTID,ENG104,ENG105,MAT104,EEE104,EEE105,CSE110,CSE112,CSE113,CSE120,CGPA) values(?,?,?,?,?,?,?,?,?,?,?)");
			    st.setString(1, id);
			    st.setString(2, sub1);
			    st.setString(3, sub2);
			    st.setString(4,sub3);
			    st.setString(5,sub4);
			    st.setString(6,sub5);
			    st.setString(7,sub6);
			    st.setString(8,sub7);
			    st.setString(9,sub8);
			    st.setString(10,sub9);
			    st.setFloat(11,avr);
			    
			    
			   
			    
			    st.executeUpdate();
			    
			    System.out.println("inserted");
			    pw.println("<html><body>");
			    pw.println("<script type=\"text/javascript\">");
			    pw.println("if(!alert('Updated'))");
			    pw.println("document.location ='home.jsp';");
			    pw.println("</script>");
			    pw.println("</body></html>");
			    
			
			}catch (Exception e) {
				// TODO: handle exception
				
				System.out.println("Error database :"+e);
				
			}
			
		}else if(semester.equals("1-2")){
			int subject1=Integer.parseInt(request.getParameter("subject1"));
			int subject2=Integer.parseInt(request.getParameter("subject2"));
			int subject3=Integer.parseInt(request.getParameter("subject3"));
			int subject4=Integer.parseInt(request.getParameter("subject4"));
			int subject5=Integer.parseInt(request.getParameter("subject5"));
			int subject6=Integer.parseInt(request.getParameter("subject6"));
			int subject7=Integer.parseInt(request.getParameter("subject7"));
			int subject8=Integer.parseInt(request.getParameter("subject8"));
			int subject9=Integer.parseInt(request.getParameter("subject9"));
			int subject10=Integer.parseInt(request.getParameter("subject10"));
			int subject11=Integer.parseInt(request.getParameter("subject11"));
			
			ResultSystem rs= new ResultSystem();
			
			String sub1=rs.getGPA(subject1);
			String sub2=rs.getGPA(subject2);
			String sub3=rs.getGPA(subject3);
			String sub4=rs.getGPA(subject4);
			String sub5=rs.getGPA(subject5);
			String sub6=rs.getGPA(subject6);
			String sub7=rs.getGPA(subject7);
			String sub8=rs.getGPA(subject8);
			String sub9=rs.getGPA(subject9);
			String sub10=rs.getGPA(subject10);
			String sub11=rs.getGPA(subject11);
			
			 float avr=(float) ((float) ((2.00*rs.getPoint(subject1))+(3.00*rs.getPoint(subject2))+(3.00*rs.getPoint(subject3))+(1.00*rs.getPoint(subject4))+(2.00*rs.getPoint(subject5))+(1.00*rs.getPoint(subject6))+(2.00*rs.getPoint(subject7))+(1.00*rs.getPoint(subject8))+(3.00*rs.getPoint(subject9))+(2.00*rs.getPoint(subject10))+(1.00*rs.getPoint(subject11)))/21.00);
			System.out.println(rs.getPoint(subject1));
			
			
			try{
				ServletContext sc=getServletContext();
				Connection con=(Connection)sc.getAttribute("Connection");
				
  
				
				  
				    PreparedStatement st=con.prepareStatement("UPDATE CGPA SET STA154= ?,MAT156= ?,PHY154= ?,PHY155=?,EEE156=?,EEE157=?,CSE160=?,CSE161=?,CSE162=?,CSE163=?,CSE168=?,CGPA2=? WHERE STUDENTID=?");
				    
				   st.setString(1, sub1);
				   st.setString(2, sub2);
				   st.setString(3, sub3);
				   st.setString(4, sub4);
				   st.setString(5, sub5);
				   st.setString(6, sub6);
				   st.setString(7, sub7);
				   st.setString(8, sub8);
				   st.setString(9, sub9);
				   st.setString(10, sub10);
				   st.setString(11, sub11);
				   st.setFloat(12, avr);
				   st.setString(13, id);
				    
				    
				   
				    
				    st.executeUpdate();
				    
				    System.out.println("update");
				    System.out.println("inserted");
				    pw.println("<html><body>");
				    pw.println("<script type=\"text/javascript\">");
				    pw.println("if(!alert('Updated'))");
				    pw.println("document.location ='home.jsp';");
				    pw.println("</script>");
				    pw.println("</body></html>");
				    
				    
				
				}catch (Exception e) {
					// TODO: handle exception
					
					System.out.println("Error database :"+e);
					
				}
			
			
		}else if(semester.equals("2-1")){
			int subject1=Integer.parseInt(request.getParameter("subject1"));
			int subject2=Integer.parseInt(request.getParameter("subject2"));
			int subject3=Integer.parseInt(request.getParameter("subject3"));
			int subject4=Integer.parseInt(request.getParameter("subject4"));
			int subject5=Integer.parseInt(request.getParameter("subject5"));
			int subject6=Integer.parseInt(request.getParameter("subject6"));
			int subject7=Integer.parseInt(request.getParameter("subject7"));
			int subject8=Integer.parseInt(request.getParameter("subject8"));
			int subject9=Integer.parseInt(request.getParameter("subject9"));
			
           ResultSystem rs= new ResultSystem();
			
			String sub1=rs.getGPA(subject1);
			String sub2=rs.getGPA(subject2);
			String sub3=rs.getGPA(subject3);
			String sub4=rs.getGPA(subject4);
			String sub5=rs.getGPA(subject5);
			String sub6=rs.getGPA(subject6);
			String sub7=rs.getGPA(subject7);
			String sub8=rs.getGPA(subject8);
			String sub9=rs.getGPA(subject9);
			
			
			 float avr=(float) ((float) ((3.00*rs.getPoint(subject1))+(2.00*rs.getPoint(subject2))+(2.00*rs.getPoint(subject3))+(1.00*rs.getPoint(subject4))+(3.00*rs.getPoint(subject5))+(1.00*rs.getPoint(subject6))+(3.00*rs.getPoint(subject7))+(3.00*rs.getPoint(subject8))+(1.00*rs.getPoint(subject9)))/18.00);
			System.out.println(rs.getPoint(subject1));
			
			
			try{
				ServletContext sc=getServletContext();
				Connection con=(Connection)sc.getAttribute("Connection");
				
  
				
				  
				    PreparedStatement st=con.prepareStatement("UPDATE CGPA SET MAT204= ?,ACC204= ?,ECO204= ?,ENG205=?,CSE210 =?,CSE211=?,CSE212=?,CSE213=?,CSE221=?,CGPA3=? where STUDENTID=?");
				    
				    st.setString(1,sub1);
				    st.setString(2,sub2);
				    st.setString(3,sub3);
				    st.setString(4,sub4);
				    st.setString(5,sub5);
				    st.setString(6,sub6);
				    st.setString(7,sub7);
				    st.setString(8,sub8);
				    st.setString(9,sub9);
				    st.setFloat(10, avr);
				    st.setString(11, id);
				    
				    
				   
				    
				    st.executeUpdate();
				    
				    System.out.println("update 2-1");
				    System.out.println("inserted");
				    pw.println("<html><body>");
				    pw.println("<script type=\"text/javascript\">");
				    pw.println("if(!alert('Updated'))");
				    pw.println("document.location ='home.jsp';");
				    pw.println("</script>");
				    pw.println("</body></html>");
				    
				    
				
				}catch (Exception e) {
					// TODO: handle exception
					
					System.out.println("Error database :"+e);
					
				}
			
			
		}else if(semester.equals("2-2")){
			int subject1=Integer.parseInt(request.getParameter("subject1"));
			int subject2=Integer.parseInt(request.getParameter("subject2"));
			int subject3=Integer.parseInt(request.getParameter("subject3"));
			int subject4=Integer.parseInt(request.getParameter("subject4"));
			int subject5=Integer.parseInt(request.getParameter("subject5"));
			int subject6=Integer.parseInt(request.getParameter("subject6"));
			int subject7=Integer.parseInt(request.getParameter("subject7"));
			int subject8=Integer.parseInt(request.getParameter("subject8"));
			int subject9=Integer.parseInt(request.getParameter("subject9"));
			
ResultSystem rs= new ResultSystem();
			
			String sub1=rs.getGPA(subject1);
			String sub2=rs.getGPA(subject2);
			String sub3=rs.getGPA(subject3);
			String sub4=rs.getGPA(subject4);
			String sub5=rs.getGPA(subject5);
			String sub6=rs.getGPA(subject6);
			String sub7=rs.getGPA(subject7);
			String sub8=rs.getGPA(subject8);
			String sub9=rs.getGPA(subject9);
			
			
			 float avr=(float) ((float) ((2.00*rs.getPoint(subject1))+(2.00*rs.getPoint(subject2))+(3.00*rs.getPoint(subject3))+(3.00*rs.getPoint(subject4))+(2.00*rs.getPoint(subject5))+(2.00*rs.getPoint(subject6))+(2.00*rs.getPoint(subject7))+(1.00*rs.getPoint(subject8))+(1.00*rs.getPoint(subject9)))/19.00);
			System.out.println(rs.getPoint(subject1));
			
			
			try{
				ServletContext sc=getServletContext();
				Connection con=(Connection)sc.getAttribute("Connection");
				
  
				
				  
				    PreparedStatement st=con.prepareStatement("UPDATE CGPA SET STA254= ?,LAW254= ?,MAT256= ?,CSE260=?,CSE261=?,CSE262=?,CSE270=?,CSE271=?,CSE278=?,CGPA4=? where STUDENTID=?");
				    
				    st.setString(1,sub1);
				    st.setString(2,sub2);
				    st.setString(3,sub3);
				    st.setString(4,sub4);
				    st.setString(5,sub5);
				    st.setString(6,sub6);
				    st.setString(7,sub7);
				    st.setString(8,sub8);
				    st.setString(9,sub9);
				    st.setFloat(10, avr);
				    st.setString(11, id);
				    
				    
				   
				    
				    st.executeUpdate();
				    
				    System.out.println("update 2-2");
				    System.out.println("inserted");
				    pw.println("<html><body>");
				    pw.println("<script type=\"text/javascript\">");
				    pw.println("if(!alert('Updated'))");
				    pw.println("document.location ='home.jsp';");
				    pw.println("</script>");
				    pw.println("</body></html>");
				    
				    
				
				}catch (Exception e) {
					// TODO: handle exception
					
					System.out.println("Error database :"+e);
					
				}
			
			
		}else if(semester.equals("3-1")){
			int subject1=Integer.parseInt(request.getParameter("subject1"));
			int subject2=Integer.parseInt(request.getParameter("subject2"));
			int subject3=Integer.parseInt(request.getParameter("subject3"));
			int subject4=Integer.parseInt(request.getParameter("subject4"));
			int subject5=Integer.parseInt(request.getParameter("subject5"));
			int subject6=Integer.parseInt(request.getParameter("subject6"));
			int subject7=Integer.parseInt(request.getParameter("subject7"));
			int subject8=Integer.parseInt(request.getParameter("subject8"));
			int subject9=Integer.parseInt(request.getParameter("subject9"));
			int subject10=Integer.parseInt(request.getParameter("subject10"));
			
            ResultSystem rs= new ResultSystem();
			
			String sub1=rs.getGPA(subject1);
			String sub2=rs.getGPA(subject2);
			String sub3=rs.getGPA(subject3);
			String sub4=rs.getGPA(subject4);
			String sub5=rs.getGPA(subject5);
			String sub6=rs.getGPA(subject6);
			String sub7=rs.getGPA(subject7);
			String sub8=rs.getGPA(subject8);
			String sub9=rs.getGPA(subject9);
			String sub10=rs.getGPA(subject10);
			
			
			 float avr=(float) ((float) ((3.00*rs.getPoint(subject1))+(1.00*rs.getPoint(subject2))+(3.00*rs.getPoint(subject3))+(1.00*rs.getPoint(subject4))+(3.00*rs.getPoint(subject5))+(1.00*rs.getPoint(subject6))+(3.00*rs.getPoint(subject7))+(1.00*rs.getPoint(subject8))+(3.00*rs.getPoint(subject9))+(1.00*rs.getPoint(subject10)))/20.00);
			System.out.println(rs.getPoint(subject1));
			
			
			try{
				ServletContext sc=getServletContext();
				Connection con=(Connection)sc.getAttribute("Connection");
				
  
				
				  
				    PreparedStatement st=con.prepareStatement("UPDATE CGPA SET CSE300=?, CSE301=?, CSE302= ?,CSE303=?,CSE310=?,CSE311=?,CSE312=?,CSE313=?,CSE320=?,CSE321=?,CGPA5=? where STUDENTID=?");
				    
				    st.setString(1,sub1);
				    st.setString(2,sub2);
				    st.setString(3,sub3);
				    st.setString(4,sub4);
				    st.setString(5,sub5);
				    st.setString(6,sub6);
				    st.setString(7,sub7);
				    st.setString(8,sub8);
				    st.setString(9,sub9);
				    st.setString(10,sub10);
				    st.setFloat(11, avr);
				    st.setString(12, id);
				    
				    
				   
				    
				    st.executeUpdate();
				    
				    System.out.println("update 3-1");
				    System.out.println("inserted");
				    pw.println("<html><body>");
				    pw.println("<script type=\"text/javascript\">");
				    pw.println("if(!alert('Updated'))");
				    pw.println("document.location ='home.jsp';");
				    pw.println("</script>");
				    pw.println("</body></html>");
				    
				    
				
				}catch (Exception e) {
					// TODO: handle exception
					
					System.out.println("Error database :"+e);
					
				}
			
			
		}else if(semester.equals("3-2")){
			int subject1=Integer.parseInt(request.getParameter("subject1"));
			int subject2=Integer.parseInt(request.getParameter("subject2"));
			int subject3=Integer.parseInt(request.getParameter("subject3"));
			int subject4=Integer.parseInt(request.getParameter("subject4"));
			int subject5=Integer.parseInt(request.getParameter("subject5"));
			int subject6=Integer.parseInt(request.getParameter("subject6"));
			int subject7=Integer.parseInt(request.getParameter("subject7"));
			int subject8=Integer.parseInt(request.getParameter("subject8"));
			int subject9=Integer.parseInt(request.getParameter("subject9"));
			int subject10=Integer.parseInt(request.getParameter("subject10"));
			
ResultSystem rs= new ResultSystem();
			
			String sub1=rs.getGPA(subject1);
			String sub2=rs.getGPA(subject2);
			String sub3=rs.getGPA(subject3);
			String sub4=rs.getGPA(subject4);
			String sub5=rs.getGPA(subject5);
			String sub6=rs.getGPA(subject6);
			String sub7=rs.getGPA(subject7);
			String sub8=rs.getGPA(subject8);
			String sub9=rs.getGPA(subject9);
			String sub10=rs.getGPA(subject10);
			
			
			 float avr=(float) ((float) ((3.00*rs.getPoint(subject1))+(3.00*rs.getPoint(subject2))+(1.00*rs.getPoint(subject3))+(3.00*rs.getPoint(subject4))+(1.00*rs.getPoint(subject5))+(3.00*rs.getPoint(subject6))+(1.00*rs.getPoint(subject7))+(3.00*rs.getPoint(subject8))+(1.00*rs.getPoint(subject9))+(2.00*rs.getPoint(subject10)))/21.00);
			System.out.println(rs.getPoint(subject1));
			
			
			try{
				ServletContext sc=getServletContext();
				Connection con=(Connection)sc.getAttribute("Connection");
				
  
				
				  
				    PreparedStatement st=con.prepareStatement("UPDATE CGPA SET CSE350=?, CSE352=?, CSE353= ?,CSE360=?,CSE361=?,CSE362=?,CSE363=?,CSE370=?,CSE371=?,CSE378=?,CGPA6=? where STUDENTID=?");
				    
				    st.setString(1,sub1);
				    st.setString(2,sub2);
				    st.setString(3,sub3);
				    st.setString(4,sub4);
				    st.setString(5,sub5);
				    st.setString(6,sub6);
				    st.setString(7,sub7);
				    st.setString(8,sub8);
				    st.setString(9,sub9);
				    st.setString(10,sub10);
				    st.setFloat(11, avr);
				    st.setString(12, id);
				    
				    
				   
				    
				    st.executeUpdate();
				    
				    System.out.println("update 3-2");
				    System.out.println("inserted");
				    pw.println("<html><body>");
				    pw.println("<script type=\"text/javascript\">");
				    pw.println("if(!alert('Updated'))");
				    pw.println("document.location ='home.jsp';");
				    pw.println("</script>");
				    pw.println("</body></html>");
				    
				    
				
				}catch (Exception e) {
					// TODO: handle exception
					
					System.out.println("Error database :"+e);
					
				}
			
			
		}else if(semester.equals("4-1")){
			int subject1=Integer.parseInt(request.getParameter("subject1"));
			int subject2=Integer.parseInt(request.getParameter("subject2"));
			int subject3=Integer.parseInt(request.getParameter("subject3"));
			int subject4=Integer.parseInt(request.getParameter("subject4"));
			int subject5=Integer.parseInt(request.getParameter("subject5"));
			int subject6=Integer.parseInt(request.getParameter("subject6"));
			int subject7=Integer.parseInt(request.getParameter("subject7"));
			int subject8=Integer.parseInt(request.getParameter("subject8"));
			int subject9=Integer.parseInt(request.getParameter("subject9"));
			int subject10=Integer.parseInt(request.getParameter("subject10"));
			int subject11=Integer.parseInt(request.getParameter("subject11"));
			
ResultSystem rs= new ResultSystem();
			
			String sub1=rs.getGPA(subject1);
			String sub2=rs.getGPA(subject2);
			String sub3=rs.getGPA(subject3);
			String sub4=rs.getGPA(subject4);
			String sub5=rs.getGPA(subject5);
			String sub6=rs.getGPA(subject6);
			String sub7=rs.getGPA(subject7);
			String sub8=rs.getGPA(subject8);
			String sub9=rs.getGPA(subject9);
			String sub10=rs.getGPA(subject10);
			String sub11=rs.getGPA(subject11);
			
			 float avr=(float) ((float) ((3.00*rs.getPoint(subject1))+(1.00*rs.getPoint(subject2))+(3.00*rs.getPoint(subject3))+(1.00*rs.getPoint(subject4))+(3.00*rs.getPoint(subject5))+(1.00*rs.getPoint(subject6))+(3.00*rs.getPoint(subject7))+(1.00*rs.getPoint(subject8))+(3.00*rs.getPoint(subject9))+(1.00*rs.getPoint(subject10))+(1.00*rs.getPoint(subject11)))/21.00);
			System.out.println(rs.getPoint(subject1));
			
			
			try{
				ServletContext sc=getServletContext();
				Connection con=(Connection)sc.getAttribute("Connection");
				
  
				
				  
				    PreparedStatement st=con.prepareStatement("UPDATE CGPA SET CSE400=?, CSE401=?, CSE402= ?,CSE403=?,CSE410=?,CSE411=?,CSE412=?,CSE413=?,CSE440=?,CSE441=?,CSE448=?,CGPA7=? where STUDENTID=?");
				    
				    st.setString(1,sub1);
				    st.setString(2,sub2);
				    st.setString(3,sub3);
				    st.setString(4,sub4);
				    st.setString(5,sub5);
				    st.setString(6,sub6);
				    st.setString(7,sub7);
				    st.setString(8,sub8);
				    st.setString(9,sub9);
				    st.setString(10,sub10);
				    st.setString(11,sub11);
				    st.setFloat(12, avr);
				    st.setString(13, id);
				    
				    
				   
				    
				    st.executeUpdate();
				    
				    System.out.println("update 4-1");
				    System.out.println("inserted");
				    pw.println("<html><body>");
				    pw.println("<script type=\"text/javascript\">");
				    pw.println("if(!alert('Updated'))");
				    pw.println("document.location ='home.jsp';");
				    pw.println("</script>");
				    pw.println("</body></html>");
				    
				    
				
				}catch (Exception e) {
					// TODO: handle exception
					
					System.out.println("Error database :"+e);
					
				}
			
			
		}else if(semester.equals("4-2")){
			int subject1=Integer.parseInt(request.getParameter("subject1"));
			int subject2=Integer.parseInt(request.getParameter("subject2"));
			int subject3=Integer.parseInt(request.getParameter("subject3"));
			int subject4=Integer.parseInt(request.getParameter("subject4"));
			int subject5=Integer.parseInt(request.getParameter("subject5"));
			int subject6=Integer.parseInt(request.getParameter("subject6"));
			int subject7=Integer.parseInt(request.getParameter("subject7"));
			int subject8=Integer.parseInt(request.getParameter("subject8"));
			int subject9=Integer.parseInt(request.getParameter("subject9"));
			int subject10=Integer.parseInt(request.getParameter("subject10"));
			
ResultSystem rs= new ResultSystem();
			
			String sub1=rs.getGPA(subject1);
			String sub2=rs.getGPA(subject2);
			String sub3=rs.getGPA(subject3);
			String sub4=rs.getGPA(subject4);
			String sub5=rs.getGPA(subject5);
			String sub6=rs.getGPA(subject6);
			String sub7=rs.getGPA(subject7);
			String sub8=rs.getGPA(subject8);
			String sub9=rs.getGPA(subject9);
			String sub10=rs.getGPA(subject10);
			
			
			 float avr=(float) ((float) ((3.00*rs.getPoint(subject1))+(1.00*rs.getPoint(subject2))+(3.00*rs.getPoint(subject3))+(1.00*rs.getPoint(subject4))+(3.00*rs.getPoint(subject5))+(1.00*rs.getPoint(subject6))+(3.00*rs.getPoint(subject7))+(1.00*rs.getPoint(subject8))+(2.00*rs.getPoint(subject9))+(3.00*rs.getPoint(subject10)))/21.00);
			System.out.println(rs.getPoint(subject1));
			
			
			try{
				ServletContext sc=getServletContext();
				Connection con=(Connection)sc.getAttribute("Connection");
				
  
				
				  
				    PreparedStatement st=con.prepareStatement("UPDATE CGPA SET CSE450=?, CSE451=?, CSE452= ?,CSE453=?,CSE462=?,CSE463=?,CSE480=?,CSE481=?,CSE488=?,CSE489=?,CGPA8=? where STUDENTID=?");
				    
				    st.setString(1,sub1);
				    st.setString(2,sub2);
				    st.setString(3,sub3);
				    st.setString(4,sub4);
				    st.setString(5,sub5);
				    st.setString(6,sub6);
				    st.setString(7,sub7);
				    st.setString(8,sub8);
				    st.setString(9,sub9);
				    st.setString(10,sub10);
				    st.setFloat(11, avr);
				    st.setString(12, id);
				    
				    
				   
				    
				    st.executeUpdate();
				    
				    System.out.println("update 4-2");
				    System.out.println("inserted");
				    pw.println("<html><body>");
				    pw.println("<script type=\"text/javascript\">");
				    pw.println("if(!alert('Updated'))");
				    pw.println("document.location ='home.jsp';");
				    pw.println("</script>");
				    pw.println("</body></html>");
				    
				    
				
				}catch (Exception e) {
					// TODO: handle exception
					
					System.out.println("Error database :"+e);
					
				}
			
			
		}


		
	
	}

}
