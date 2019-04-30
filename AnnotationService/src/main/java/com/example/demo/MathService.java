package com.example.demo;

import org.springframework.stereotype.Service;

@Service("ms")
public class MathService {

	public int add(int a, int b) {
		return a+b;
	}
	
}
