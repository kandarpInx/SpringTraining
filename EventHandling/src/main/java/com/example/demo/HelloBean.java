package com.example.demo;

public class HelloBean {

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
