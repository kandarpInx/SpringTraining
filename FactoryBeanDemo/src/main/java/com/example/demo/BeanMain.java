package com.example.demo;

public class BeanMain {

	private static UserService user= new UserService();
	private static AdminService admin= new AdminService();
	private static BeanMain bm= new BeanMain();
	
	private BeanMain(){
		
	}
	
	public  UserService createUserService(){
		return user;
	}
	
	public  AdminService createAdminService(){
		return admin;
	}
	
	public static BeanMain createService(){
		return bm;
	}
	
}
