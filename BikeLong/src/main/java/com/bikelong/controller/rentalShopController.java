package com.bikelong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.bikelong.service.RentalShopService;
import com.bikelong.vo.RentalShop;

@Controller
public class rentalShopController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("rentalShopService")
	private RentalShopService rentalShopService;
	
	
	@GetMapping(value = "/rentalShop.action")
	public String rentalShop() {
		
		RentalShop rentalShop = rentalShopService.findRentalShop();
		
		return "rentalShop/rentalShop";
	}
	
}
