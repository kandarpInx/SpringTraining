package com.example.demo;

public class Car implements Vehicles {

	private VehicleDetails vehicle2;
	public VehicleDetails getVehicle2() {
		return vehicle2;
	}
	public void setVehicle2(VehicleDetails vehicle2) {
		this.vehicle2 = vehicle2;
	}

	@Override
	public void information() {
		System.out.println("We are in Car class...!");
		System.out.println("Vehicle name is "+vehicle2.getName()+" engine capacity is "+vehicle2.getCapacity()+"cc vehicle type is "+vehicle2.getType());
	}
}
