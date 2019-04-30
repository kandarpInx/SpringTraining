package com.example.demo;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class Life implements InitializingBean,DisposableBean {

	@Override
	public void destroy() throws Exception {
		System.out.println("In Destroy method");
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("In AfterPropertiesSet method");
	}
	
	private String message;
	
	public Life(String message) {
		this.message = message;
	}
	public void dispData() {
		System.out.println(message);
	}

}
