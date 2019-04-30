package com.example.demo;

public class Beans {
	
	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public void dispData() {
		System.out.println("Message is :: "+message);
	}

}
