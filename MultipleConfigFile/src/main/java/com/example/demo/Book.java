package com.example.demo;

public class Book {

	private int id;
	private String author;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void dispData() {
		System.out.println("Id is :: "+id);
		System.out.println("Author is :: "+author);
	}
}