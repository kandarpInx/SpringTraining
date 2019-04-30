package com.example.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PracticeOfMultipleBeanWithSameNameApplication {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
		
		Circle c = (Circle) context.getBean("demo");
		c.displayName();
		
		Square s = (Square) context.getBean("shape");
		s.displayMessage();
		
	}

}
