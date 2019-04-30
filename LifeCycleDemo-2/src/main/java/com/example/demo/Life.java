package com.example.demo;

public class Life {

	public void init() {
		System.out.println("In init method...");
	}
	
	public void destroy() {
		System.out.println("In destroy method...");
	}
	
	private String msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public void dispData() {
		System.out.println("Message is :: "+msg);
	}
	
}
