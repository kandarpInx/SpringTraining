package com.example.demo;

public class BeanMain {

	private static BeanMain beanMain = new BeanMain();

	private BeanMain() {
		  System.out.println("We are in private constructor...!");
	  }

	public static BeanMain createInstance() {
		return beanMain;
	}
}
