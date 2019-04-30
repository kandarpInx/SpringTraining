package com.example.demo;

public class Book {

	private int id;
	private String bookName;
	
	public Book() {
		System.out.println("Demo of Dependancy Injection using Constructor");
	}
	
	public Book(int id) {
		this.id = id;
	}
	
	public Book(String bookName) {
		this.bookName = bookName;
	}
	
	public Book(int id, String bookName) {
		this.id = id;
		this.bookName = bookName;
	}
	
	public void dispData() {
		System.out.println("Book id is :: "+id);
		System.out.println("Book name is :: "+bookName);
	}
}
