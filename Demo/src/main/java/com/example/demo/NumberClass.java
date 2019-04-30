package com.example.demo;

import java.util.Scanner;

public class NumberClass {
	
	int number;

	public void logic() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Please enter number :: "); 
		number = sc.nextInt();	
		
		if(number>0 || number<1000000000) {
			System.out.println("Number is :: "+convert(number)+ " Only");
		}
		else if(number==0) {
			System.out.println("Number is Zero");
		}
		else {
			System.out.println("Invalid Number");
		}
	}

	private String convert(int number) {
		String words = "";
		String ones[]  = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" };
		String tens[]  = {"" ,"", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"};
		
		if ((number / 10000000) > 0) {
			words = words + convert(number / 10000000) + " Crore ";
			number = number % 10000000;
		}
		if ((number / 100000) > 0) {
			words = words + convert(number / 100000) + " Lac ";
			number = number % 100000;
		}
		if ((number / 1000) > 0) {
			words = words + convert(number / 1000) + " Thousand ";
			number = number % 1000;
		}
		if ((number / 100) > 0) {
			words = words + convert(number / 100) + " Hundred ";
			number = number % 100;
		}
		
		if (number < 20) {
			words = words + ones[number];
		} else {
			words = words + tens[number / 10];
			if ((number % 10) > 0) {
				words = words + " " + ones[number % 10];
			}
		}
		return words;
	}
}
