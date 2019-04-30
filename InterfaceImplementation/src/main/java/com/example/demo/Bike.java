package com.example.demo;

public class Bike implements Vehicles {
	
	private VehicleDetails vehicle1;
	public VehicleDetails getVehicle1() {
		return vehicle1;
	}
	public void setVehicle1(VehicleDetails vehicle1) {
		this.vehicle1 = vehicle1;
	}
	@Override
	public void information() {
		System.out.println("We are in Bike class...!");
		System.out.println("Vehicle name is "+vehicle1.getName()+" engine capacity is "+vehicle1.getCapacity()+"cc vehicle type is "+vehicle1.getType());
	}
}
