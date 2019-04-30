package com.example.demo;

public class Book {
	
	private int id;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public void dispData() {
		System.out.println("Book id is :: "+id);
		System.out.println("Book name is :: "+name);
	}
}
