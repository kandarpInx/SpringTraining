package com.example.demo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class AnnotationServiceApplication {

	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.example.demo");
		context.refresh();
		
		MathService ms = (MathService) context.getBean("ms");
		
		int add = ms.add(20, 10);
		
		System.out.println("Addition is :: "+add);
		
	}

}
