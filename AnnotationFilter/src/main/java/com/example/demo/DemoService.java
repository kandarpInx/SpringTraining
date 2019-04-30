package com.example.demo;

import org.springframework.stereotype.Service;

@Service("ds")
public class DemoService {
	public int add(int a, int b) {
		return a+b;
	}
}
