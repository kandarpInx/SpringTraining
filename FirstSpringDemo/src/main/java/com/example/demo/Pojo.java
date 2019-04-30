package com.example.demo;

public class Pojo {

	private String msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public void displayMessage() {
		System.out.println("Message is :: "+ getMsg());
	}
	
}
