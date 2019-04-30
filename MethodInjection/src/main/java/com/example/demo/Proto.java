package com.example.demo;

public class Proto {
	
	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public Proto() {
		System.out.println("We are in prototype bean...!");
	}
	
	
	public Proto getProto() { return this; }
	 
}
