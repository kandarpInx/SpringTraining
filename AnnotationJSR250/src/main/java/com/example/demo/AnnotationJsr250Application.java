package com.example.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AnnotationJsr250Application {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		
		Customer c1 = (Customer) context.getBean("customer1");
		
		c1.dispData();
		
		((AbstractApplicationContext) context).close();
	}

}
