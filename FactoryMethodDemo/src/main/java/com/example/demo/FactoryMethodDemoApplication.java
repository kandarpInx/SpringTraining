package com.example.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class FactoryMethodDemoApplication {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("CollegeBean.xml");
		
		CollegeDetail cd = (CollegeDetail) context.getBean("student");
		
		System.out.println(cd);
		
		
	}

}
