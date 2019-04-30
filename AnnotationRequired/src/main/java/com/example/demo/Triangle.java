package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;

public class Triangle {

	private Points pointA;
	private Points pointB;
	public Points getPointA() {
		return pointA;
	}
	
	public Points getPointB() {
		return pointB;
	}
	@Autowired
	public void setPointB(Points pointB) {
		this.pointB = pointB;
	}

	@Autowired
	public void setPointA(Points pointA) {
		this.pointA = pointA;
	}
	
	public void dispDetails() {
		System.out.println("Point A("+pointA.getX()+" , "+pointA.getY()+")");
		System.out.println("Point B("+pointB.getX()+" , "+pointB.getY()+")");
	}
}
