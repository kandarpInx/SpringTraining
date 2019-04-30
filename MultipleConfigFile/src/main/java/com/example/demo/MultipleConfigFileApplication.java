package com.example.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MultipleConfigFileApplication {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("config1.xml","config.xml");
		
		Book b1 = (Book) context.getBean("book1");
		
		b1.dispData();
		
	}

}
