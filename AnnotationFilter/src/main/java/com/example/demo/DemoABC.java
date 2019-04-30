package com.example.demo;

import org.springframework.stereotype.Service;

@Service("da")
public class DemoABC {

	public int sub(int a, int b) {
		return a-b;
	}
}
