package com.result.authentication;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Authentication {
	
	public boolean getAuthentication(String user_name,String password,Connection con){
		
try {
			PreparedStatement ps=con.prepareStatement("SELECT * FROM admin WHERE ADMIN_NAME=?");
			ps.setString(1,user_name);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				
				if(user_name.equals(rs.getString(1))&& password.equals(rs.getString(2))){
					
					return true;
					
				}
				else{
					
					return false;
					
				    }
			}
			
		} catch (Exception e) {
			System.out.println("exception error"+e);
		}
          
       return false;
					
	}

	
	
	public boolean getAuthenticationOffice(String office,String password,Connection con){
		
		try {
					PreparedStatement ps=con.prepareStatement("SELECT * FROM office WHERE office_user=?");
					ps.setString(1,office);
					ResultSet rs=ps.executeQuery();
					
					while(rs.next()){
						
						if(office.equals(rs.getString(1))&& password.equals(rs.getString(2))){
							
							return true;
							
						}
						else{
							
							return false;
							
						    }
					}
					
				} catch (Exception e) {
					System.out.println("exception error"+e);
				}
		          
		       return false;
							
			}
	
	public boolean getAuthenticationStudent(String student,String password,Connection con){
		
		try {
					PreparedStatement ps=con.prepareStatement("SELECT * FROM STUDENT_INFORMATION WHERE ST_ID=?");
					ps.setString(1,student);
					ResultSet rs=ps.executeQuery();
					
					while(rs.next()){
						
						if(student.equals(rs.getString(1))&& password.equals(rs.getString(12))){
							
							return true;
						
						}
						else{
							
							return false;
							
						    }
					}
					
				} catch (Exception e) {
					System.out.println("exception error"+e);
				}
		          
		       return false;
							
			}
}
