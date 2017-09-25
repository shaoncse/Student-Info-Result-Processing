package com.result.registration;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ResultSystem {

	
	public String getGPA(int number){
		
		if(number>=80){
			return "A+";
		}else if(number>=75 && number<80){
			return "A";
		}else if(number>=70 && number<75){
			return "A-";
		}else if(number>=65 && number<70){
			return "B+";
		}else if(number>=60 && number<65){
			return "B";
		}else if(number>=55 && number<60){
			return "B-";
		}else if(number>=50 && number<55){
			return "C+";
		}else if(number>=45 && number<50){
			return "C";
		}else if(number>=40 && number<45){
			return "D";
		}else 
			return "F";
		
		}
	
	
public float getPoint(int number){
		
		if(number>=80){
			return 4;
		}else if(number>=75 && number<80){
			return (float) 3.75;
		}else if(number>=70 && number<75){
			return (float) 3.50;
		}else if(number>=65 && number<70){
			return (float) 3.25 ;
		}else if(number>=60 && number<65){
			return (float) 3.00;
		}else if(number>=55 && number<60){
			return (float) 2.75;
		}else if(number>=50 && number<55){
			return (float) 2.50;
		}else if(number>=45 && number<50){
			return (float) 2.25;
		}else if(number>=40 && number<45){
			return (float) 2.00;
		}else 
			return (float) 0.00;
		
		}


}
