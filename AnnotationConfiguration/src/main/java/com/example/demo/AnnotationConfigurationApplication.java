package com.example.demo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class AnnotationConfigurationApplication {

	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		
		ctx.register(MyConfigs.class);
		ctx.refresh();

//		Triangle t1 = ctx.getBean(Triangle.class);  // getting bean by class
		Triangle t1 = (Triangle) ctx.getBean("bbbb");
		
		t1.dispMsg();
		
		ctx.close();
		
	}

}