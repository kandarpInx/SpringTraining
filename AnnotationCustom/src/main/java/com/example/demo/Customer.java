package com.example.demo;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class Customer {
	
	@Target(ElementType.METHOD)
	@Retention(RetentionPolicy.RUNTIME)
	@Qualifier
	public @interface CustomAnnotation {
		String value() default "product";
	}
	
	private Product product1;

	public Product getProduct1() {
		return product1;
	}
	@Autowired
	@CustomAnnotation("product1")
	public void setProduct1(Product product1) {
		this.product1 = product1;
	}
	
	public void dispData() {
		System.out.println("Product name is :: "+product1.getName());
		System.out.println("Product type is :: "+product1.getType());
		System.out.println("Product price is :: "+product1.getPrice());
	}
}
