package com.example.demo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class DemoApplication {

	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		
		ctx.register(config.class);
		ctx.refresh();

		NumberClass nc = (NumberClass) ctx.getBean("convert");
		nc.logic();
		
		ctx.close();
	}
}