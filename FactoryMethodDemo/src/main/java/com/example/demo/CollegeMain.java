package com.example.demo;

public class CollegeMain {

	public static CollegeDetail createRole(String role)
    {
		CollegeDetail cd = new CollegeDetail();
		
        if ("student".equals(role)) {
        	cd.setId(1);
        	cd.setFirstName("Kandarp");
        	cd.setLastName("Dave");
        	cd.setRole(role);
        }
        else if("professor".equals(role)){
        	cd.setId(2);
        	cd.setFirstName("Hardik");
        	cd.setLastName("Dave");
        	cd.setRole(role);
        }
    	return cd;
    }
}
