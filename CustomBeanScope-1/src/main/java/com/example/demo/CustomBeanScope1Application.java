package com.example.demo;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CustomBeanScope1Application {

	public static void main(String[] args) {
		
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		
		MyBean myBean = (MyBean) context.getBean("myBean");
		
		System.out.println(myBean.getName());
		
		System.out.println("All registered Scopes are : ");
		
		for(String scope : context.getBeanFactory().getRegisteredScopeNames()){
			System.out.println(scope);
		}
		
		context.close();
	}

}
