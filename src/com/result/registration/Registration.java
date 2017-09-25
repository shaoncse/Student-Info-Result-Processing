package com.result.registration;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

public class Registration {


	public boolean getAdmin(String userName,String password,Connection con){
		
		
    
	try{  
		    PreparedStatement st=con.prepareStatement("insert into admin (admin_name,password) values(?,?)");
		    st.setString(1, userName);
		    st.setString(2, password);
		    
		    st.executeUpdate();
		    
		    return true;
		
		}catch (Exception e) {
			// TODO: handle exception
			
			System.out.println("Error database :"+e);
			
		}
		
		
		return false;
		
		
		
		
	}
	
	public boolean getOffice(String userName,String password,Connection con){
		
		
	    
		try{  
			    PreparedStatement st=con.prepareStatement("insert into office (office_user,password) values(?,?)");
			    st.setString(1, userName);
			    st.setString(2, password);
			    
			    st.executeUpdate();
			    
			    return true;
			
			}catch (Exception e) {
				// TODO: handle exception
				
				System.out.println("Error database :"+e);
				
			}
			
			
			return false;
			
			
			
			
		}



}
