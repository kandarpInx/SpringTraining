package com.example.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MethodInjectionApplication {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		
		Single singleton = (Single) context.getBean("single");
		
		Proto prototypeBean = singleton.getProto();
		Proto prototypeBean1 = singleton.getProto();
		
		System.out.println(prototypeBean);
		System.out.println(prototypeBean1);
		
	}

}
