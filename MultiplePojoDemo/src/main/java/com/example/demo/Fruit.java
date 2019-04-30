package com.example.demo;

public class Fruit {
	
	private FruitDetails fd1;

	public FruitDetails getFd1() {
		return fd1;
	}

	public void setFd1(FruitDetails fd1) {
		this.fd1 = fd1;
	}

	public void displayDetails() {
		System.out.println("Fruit name is "+fd1.getName()+", color is "+fd1.getColor()+", weight is "+fd1.getWeight());
	}
}
