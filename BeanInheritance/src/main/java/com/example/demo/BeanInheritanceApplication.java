package com.example.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BeanInheritanceApplication {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		
		Employee em1 = (Employee) context.getBean("empDetails");
		em1.dispData();
		
		((AbstractApplicationContext) context).close();
	}
}
