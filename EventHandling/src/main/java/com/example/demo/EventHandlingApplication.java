package com.example.demo;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class EventHandlingApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		context.start();
		HelloBean hb = (HelloBean) context.getBean("hello");
		hb.dispData();
		context.stop();
		
	}

}
