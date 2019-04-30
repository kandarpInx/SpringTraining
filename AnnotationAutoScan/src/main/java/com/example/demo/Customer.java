package com.example.demo;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

@Component
public class Customer {
	
	private Product product1;

	public Product getProduct1() {
		return product1;
	}
	
	@Resource(name="product")
	public void setProduct1(Product product1) {
		this.product1 = product1;
	}
	
	public void dispData() {
		System.out.println("Product name is :: "+product1.getName());
		System.out.println("Product type is :: "+product1.getType());
		System.out.println("Product price is :: "+product1.getPrice());
	}
}
