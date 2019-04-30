package com.example.demo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class AnnotationImportSimpleApplication {

	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		
		ctx.register(ConfigB.class);
		ctx.refresh();
		
		A a=(A)ctx.getBean("a");
		B b=(B)ctx.getBean("b");
		
		a.msg();
		b.msg();
		
		ctx.registerShutdownHook();
		
	}

}
