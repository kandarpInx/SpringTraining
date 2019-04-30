package com.example.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
public class config {
		
	@Bean(name="convert")
	@Scope("singleton")
	public NumberClass logic(){
        return new NumberClass();
    }
}
