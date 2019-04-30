package com.example.demo;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BeanPostProcessorDemoApplication {

	public static void main(String[] args) {
		
		AbstractApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		
		/*
		 * Beans b1 = (Beans) context.getBean("bean1");
		 * 
		 * b1.dispData();
		 */
		
	}

}
