package com.example.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MessageResourceApplication {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		
		Fruit fruit = (Fruit) context.getBean("fruit");

		fruit.displayDetails();
		
//		System.out.println(context.getMessage("message", null, "Default message", null));
	}

}
