package com.example.demo;

public class Fruit {
	
	private FruitDetails fd1;
//	private FruitDetails fd2;
//	private FruitDetails fd3;

	public FruitDetails getFd1() {
		return fd1;
	}
	public void setFd1(FruitDetails fd1) {
		this.fd1 = fd1;
	}
	/*
	 * public FruitDetails getFd2() { return fd2; } public void setFd2(FruitDetails
	 * fd2) { this.fd2 = fd2; } public FruitDetails getFd3() { return fd3; } public
	 * void setFd3(FruitDetails fd3) { this.fd3 = fd3; }
	 */

	public void displayDetails() {
		System.out.println("Fruit name is "+fd1.getName()+", color is "+fd1.getColor()+", weight is "+fd1.getWeight());
//		System.out.println("Fruit name is "+fd2.getName()+", color is "+fd2.getColor()+", weight is "+fd2.getWeight());
//		System.out.println("Fruit name is "+fd3.getName()+", color is "+fd3.getColor()+", weight is "+fd3.getWeight());
	}
}
