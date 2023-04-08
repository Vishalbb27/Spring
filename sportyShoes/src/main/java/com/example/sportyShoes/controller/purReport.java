package com.example.sportyShoes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class purReport {
	@RequestMapping("/purchaseReport")
	public String listCategory() {
		
		return "purchaseReport";
	}
	
}
