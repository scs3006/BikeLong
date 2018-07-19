package com.bikelong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class rentalShopController {
	
	@GetMapping(value = "/rentalShop.action")
	public String rentalShop() {
			
		return "rentalShop/rentalShop";
	}
	
}
