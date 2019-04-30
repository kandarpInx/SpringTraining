package com.example.demo;

public class Cars {

	private CarDetails swift;
	private CarDetails innova;

	public CarDetails getSwift() {
		return swift;
	}
	public void setSwift(CarDetails swift) {
		this.swift = swift;
	}
	public CarDetails getInnova() {
		return innova;
	}
	public void setInnova(CarDetails innova) {
		this.innova = innova;
	}
	
	public void dispData() {
		System.out.println("Car name is :: "+swift.getName()+" capacity is "+swift.getCapacity()+", type is "+swift.getType());
		System.out.println("Car name is :: "+innova.getName()+" capacity is "+innova.getCapacity()+", type is "+innova.getType());
	}
}
