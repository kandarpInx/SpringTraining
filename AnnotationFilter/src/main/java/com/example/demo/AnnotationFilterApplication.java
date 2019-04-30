package com.example.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AnnotationFilterApplication {

	public static void main(String[] args) {
		
		ApplicationContext context= new ClassPathXmlApplicationContext("config.xml");
		
		DemoABC service2 = (DemoABC) context.getBean("da");
		int sub = service2.sub(20, 10);
		System.out.println("Substraction is :: "+sub);
		
		DemoService service1 = (DemoService) context.getBean("ds");
		int add = service1.add(20, 10);
		System.out.println("Addition is :: "+add);
	}

}
