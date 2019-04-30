package com.example.demo;

public class Pojo {

	private String msg;
	private int value;
	
	public Pojo(String msg) {
		this.msg = msg;
	}
	
	public Pojo(String msg, int value) {
		this.msg = msg;
		this.value = value;
	}
	
	public void displayMsg() {
		System.out.println("Constructor Args is :: " + msg);
	}
	public void displayMsg1() {
		System.out.println("Constructor Args is :: " + msg +" & "+ value);
	}
}
